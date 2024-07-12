#include "llvm/Support/raw_ostream.h"
#include "clang/AST/AST.h"
#include "clang/AST/ASTConsumer.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendAction.h"
#include "clang/Tooling/Tooling.h"
#include "clang/Tooling/CommonOptionsParser.h"
#include <vector>
#include <string>

using namespace clang;
using namespace clang::tooling;
using namespace llvm;

void writeResultsToFile(const std::string &FileName, const std::vector<std::pair<std::string, int>> &Results) {
    std::error_code EC;
    raw_fd_ostream OutFile(FileName + ".cy", EC, sys::fs::OF_Text);

    for (const auto &Result : Results) {
        OutFile << Result.first << " " << Result.second << "\n";
    }
}

class ComplexityVisitor : public RecursiveASTVisitor<ComplexityVisitor> {
public:
    explicit ComplexityVisitor(ASTContext *Context) : Context(Context) {}

    bool VisitFunctionDecl(FunctionDecl *D) {
        // Compute and store cyclomatic complexity of the function D
        int Complexity = calculateCyclomaticComplexity(D);
        Results.push_back({D->getNameAsString(), Complexity});
        return true;
    }

    std::vector<std::pair<std::string, int>> getResults() const {
        return Results;
    }

private:
    ASTContext *Context;
    std::vector<std::pair<std::string, int>> Results;

    int calculateCyclomaticComplexity(FunctionDecl *FD) {
        // Implement your cyclomatic complexity calculation logic here
        // This is just a placeholder; actual implementation depends on your requirements
        int Complexity = 0;
        // Example: count decision points like if, for, while, etc.
        for (const Stmt *S : FD->getBody()->children()) {
            if (isa<IfStmt>(S) || isa<WhileStmt>(S) || isa<ForStmt>(S) || isa<SwitchStmt>(S)) {
                Complexity++;
            }
        }
        return Complexity + 1; // +1 for the function itself
    }
};

class CyclomaticComplexityConsumer : public ASTConsumer {
public:
    explicit CyclomaticComplexityConsumer(ASTContext *Context) : Visitor(Context) {}

    void HandleTranslationUnit(ASTContext &Context) override {
        Visitor.TraverseDecl(Context.getTranslationUnitDecl());
        auto Results = Visitor.getResults();
        writeResultsToFile("output", Results); // Example file name "output"
    }

private:
    ComplexityVisitor Visitor;
};

class CyclomaticComplexityAction : public ASTFrontendAction {
public:
    std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &CI, llvm::StringRef InFile) override {
        return std::make_unique<CyclomaticComplexityConsumer>(&CI.getASTContext());
    }
};

int main(int argc, const char **argv) {
    CommonOptionsParser OptionsParser(argc, argv);
    ClangTool Tool(OptionsParser.getCompilations(), OptionsParser.getSourcePathList());
    return Tool.run(newFrontendActionFactory<CyclomaticComplexityAction>().get());
}
