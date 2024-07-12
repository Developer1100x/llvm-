// This file is generated, do not edit it directly!
// Deltas are percentage regression in parsing clang/lib/Sema/Sema.cpp
#ifndef FAST
#define FAST(CHECK, DELTA)
#endif
#ifndef SLOW
#define SLOW(CHECK, DELTA)
#endif

FAST(abseil-cleanup-ctad, -1.0)
FAST(abseil-duration-addition, 0.0)
FAST(abseil-duration-comparison, 1.0)
FAST(abseil-duration-conversion-cast, 3.0)
FAST(abseil-duration-division, -0.0)
FAST(abseil-duration-factory-float, 1.0)
FAST(abseil-duration-factory-scale, -0.0)
FAST(abseil-duration-subtraction, 1.0)
FAST(abseil-duration-unnecessary-conversion, 4.0)
FAST(abseil-faster-strsplit-delimiter, 2.0)
FAST(abseil-no-internal-dependencies, -1.0)
FAST(abseil-no-namespace, -1.0)
FAST(abseil-redundant-strcat-calls, 2.0)
FAST(abseil-str-cat-append, 1.0)
FAST(abseil-string-find-startswith, 1.0)
FAST(abseil-string-find-str-contains, 1.0)
FAST(abseil-time-comparison, -0.0)
FAST(abseil-time-subtraction, 0.0)
FAST(abseil-upgrade-duration-conversions, 2.0)
SLOW(altera-id-dependent-backward-branch, 13.0)
FAST(altera-kernel-name-restriction, -1.0)
FAST(altera-single-work-item-barrier, -1.0)
FAST(altera-struct-pack-align, -1.0)
FAST(altera-unroll-loops, 2.0)
FAST(android-cloexec-accept, -1.0)
FAST(android-cloexec-accept4, 3.0)
FAST(android-cloexec-creat, 0.0)
FAST(android-cloexec-dup, 3.0)
FAST(android-cloexec-epoll-create, -2.0)
FAST(android-cloexec-epoll-create1, -1.0)
FAST(android-cloexec-fopen, -0.0)
FAST(android-cloexec-inotify-init, 1.0)
FAST(android-cloexec-inotify-init1, 2.0)
FAST(android-cloexec-memfd-create, 2.0)
FAST(android-cloexec-open, -1.0)
FAST(android-cloexec-pipe, -1.0)
FAST(android-cloexec-pipe2, 0.0)
FAST(android-cloexec-socket, 1.0)
FAST(android-comparison-in-temp-failure-retry, 0.0)
FAST(boost-use-to-string, 1.0)
FAST(bugprone-argument-comment, 2.0)
FAST(bugprone-assert-side-effect, 1.0)
FAST(bugprone-assignment-in-if-condition, -0.0)
FAST(bugprone-bad-signal-to-kill-thread, -1.0)
FAST(bugprone-bool-pointer-implicit-conversion, 0.0)
FAST(bugprone-branch-clone, -0.0)
FAST(bugprone-copy-constructor-init, 1.0)
FAST(bugprone-dangling-handle, 0.0)
FAST(bugprone-dynamic-static-initializers, 1.0)
FAST(bugprone-easily-swappable-parameters, 2.0)
FAST(bugprone-exception-escape, 1.0)
FAST(bugprone-fold-init-type, 2.0)
FAST(bugprone-forward-declaration-namespace, 0.0)
FAST(bugprone-forwarding-reference-overload, -0.0)
FAST(bugprone-implicit-widening-of-multiplication-result, 3.0)
FAST(bugprone-inaccurate-erase, -0.0)
FAST(bugprone-incorrect-roundings, 1.0)
FAST(bugprone-infinite-loop, 4.0)
FAST(bugprone-integer-division, -3.0)
FAST(bugprone-lambda-function-name, 1.0)
FAST(bugprone-macro-parentheses, 8.0)
FAST(bugprone-macro-repeated-side-effects, 1.0)
FAST(bugprone-misplaced-operator-in-strlen-in-alloc, -0.0)
FAST(bugprone-misplaced-pointer-arithmetic-in-alloc, 2.0)
FAST(bugprone-misplaced-widening-cast, -2.0)
FAST(bugprone-move-forwarding-reference, -2.0)
FAST(bugprone-multiple-statement-macro, 1.0)
FAST(bugprone-narrowing-conversions, -1.0)
FAST(bugprone-no-escape, 3.0)
FAST(bugprone-not-null-terminated-result, 4.0)
FAST(bugprone-parent-virtual-call, 2.0)
FAST(bugprone-posix-return, 0.0)
FAST(bugprone-redundant-branch-condition, 0.0)
FAST(bugprone-reserved-identifier, 2.0)
FAST(bugprone-shared-ptr-array-mismatch, 0.0)
FAST(bugprone-signal-handler, -0.0)
FAST(bugprone-signed-char-misuse, 1.0)
FAST(bugprone-sizeof-container, -0.0)
FAST(bugprone-sizeof-expression, 0.0)
FAST(bugprone-spuriously-wake-up-functions, 3.0)
FAST(bugprone-string-constructor, 1.0)
FAST(bugprone-string-integer-assignment, 1.0)
FAST(bugprone-string-literal-with-embedded-nul, 0.0)
FAST(bugprone-stringview-nullptr, 2.0)
FAST(bugprone-suspicious-enum-usage, -0.0)
FAST(bugprone-suspicious-include, 1.0)
FAST(bugprone-suspicious-memory-comparison, 0.0)
FAST(bugprone-suspicious-memset-usage, 2.0)
FAST(bugprone-suspicious-missing-comma, 0.0)
FAST(bugprone-suspicious-realloc-usage, 1.0)
FAST(bugprone-suspicious-semicolon, 0.0)
FAST(bugprone-suspicious-string-compare, 2.0)
FAST(bugprone-swapped-arguments, 0.0)
FAST(bugprone-terminating-continue, 2.0)
FAST(bugprone-throw-keyword-missing, -1.0)
FAST(bugprone-too-small-loop-variable, 0.0)
FAST(bugprone-unchecked-optional-access, 1.0)
FAST(bugprone-undefined-memory-manipulation, 1.0)
FAST(bugprone-undelegated-constructor, 0.0)
FAST(bugprone-unhandled-exception-at-new, 0.0)
FAST(bugprone-unhandled-self-assignment, 0.0)
FAST(bugprone-unused-raii, 2.0)
FAST(bugprone-unused-return-value, 0.0)
FAST(bugprone-use-after-move, 5.0)
FAST(bugprone-virtual-near-miss, 0.0)
FAST(cert-con36-c, 2.0)
FAST(cert-con54-cpp, 3.0)
FAST(cert-dcl03-c, 2.0)
FAST(cert-dcl16-c, -1.0)
FAST(cert-dcl37-c, 3.0)
FAST(cert-dcl50-cpp, -1.0)
FAST(cert-dcl51-cpp, 1.0)
FAST(cert-dcl54-cpp, 0.0)
FAST(cert-dcl58-cpp, 1.0)
FAST(cert-dcl59-cpp, 0.0)
FAST(cert-env33-c, -1.0)
FAST(cert-err09-cpp, 1.0)
FAST(cert-err33-c, 4.0)
FAST(cert-err34-c, 0.0)
FAST(cert-err52-cpp, 1.0)
FAST(cert-err58-cpp, 0.0)
FAST(cert-err60-cpp, 0.0)
FAST(cert-err61-cpp, -0.0)
FAST(cert-exp42-c, 0.0)
FAST(cert-fio38-c, 1.0)
FAST(cert-flp30-c, 0.0)
FAST(cert-flp37-c, 1.0)
FAST(cert-mem57-cpp, 0.0)
FAST(cert-msc30-c, -0.0)
FAST(cert-msc32-c, 1.0)
FAST(cert-msc50-cpp, -1.0)
FAST(cert-msc51-cpp, 1.0)
FAST(cert-msc54-cpp, -1.0)
FAST(cert-oop11-cpp, 1.0)
FAST(cert-oop54-cpp, -0.0)
FAST(cert-oop57-cpp, 1.0)
FAST(cert-oop58-cpp, 0.0)
FAST(cert-pos44-c, 0.0)
FAST(cert-pos47-c, -0.0)
FAST(cert-sig30-c, 2.0)
FAST(cert-str34-c, 0.0)
FAST(concurrency-mt-unsafe, 3.0)
FAST(concurrency-thread-canceltype-asynchronous, 1.0)
FAST(cppcoreguidelines-avoid-c-arrays, 2.0)
FAST(cppcoreguidelines-avoid-const-or-ref-data-members, 1.0)
FAST(cppcoreguidelines-avoid-do-while, -2.0)
FAST(cppcoreguidelines-avoid-goto, 2.0)
FAST(cppcoreguidelines-avoid-magic-numbers, 1.0)
FAST(cppcoreguidelines-avoid-non-const-global-variables, -0.0)
FAST(cppcoreguidelines-c-copy-assignment-signature, 1.0)
FAST(cppcoreguidelines-explicit-virtual-functions, -1.0)
FAST(cppcoreguidelines-init-variables, 2.0)
FAST(cppcoreguidelines-interfaces-global-init, -1.0)
FAST(cppcoreguidelines-macro-usage, 2.0)
FAST(cppcoreguidelines-narrowing-conversions, -2.0)
FAST(cppcoreguidelines-no-malloc, -1.0)
FAST(cppcoreguidelines-non-private-member-variables-in-classes, -0.0)
FAST(cppcoreguidelines-owning-memory, 3.0)
FAST(cppcoreguidelines-prefer-member-initializer, 1.0)
FAST(cppcoreguidelines-pro-bounds-array-to-pointer-decay, 3.0)
FAST(cppcoreguidelines-pro-bounds-constant-array-index, 3.0)
FAST(cppcoreguidelines-pro-bounds-pointer-arithmetic, 0.0)
FAST(cppcoreguidelines-pro-type-const-cast, 1.0)
FAST(cppcoreguidelines-pro-type-cstyle-cast, -1.0)
FAST(cppcoreguidelines-pro-type-member-init, 1.0)
FAST(cppcoreguidelines-pro-type-reinterpret-cast, 2.0)
FAST(cppcoreguidelines-pro-type-static-cast-downcast, 0.0)
FAST(cppcoreguidelines-pro-type-union-access, 1.0)
FAST(cppcoreguidelines-pro-type-vararg, 1.0)
FAST(cppcoreguidelines-slicing, 3.0)
FAST(cppcoreguidelines-special-member-functions, -1.0)
FAST(cppcoreguidelines-virtual-class-destructor, 0.0)
FAST(darwin-avoid-spinlock, 1.0)
FAST(darwin-dispatch-once-nonstatic, -0.0)
FAST(fuchsia-default-arguments-calls, 2.0)
FAST(fuchsia-default-arguments-declarations, -0.0)
FAST(fuchsia-header-anon-namespaces, -0.0)
FAST(fuchsia-multiple-inheritance, -1.0)
FAST(fuchsia-overloaded-operator, -0.0)
FAST(fuchsia-statically-constructed-objects, -0.0)
FAST(fuchsia-trailing-return, 2.0)
FAST(fuchsia-virtual-inheritance, 1.0)
FAST(google-build-explicit-make-pair, 2.0)
FAST(google-build-namespaces, -1.0)
FAST(google-build-using-namespace, 0.0)
FAST(google-default-arguments, 1.0)
FAST(google-explicit-constructor, 2.0)
FAST(google-global-names-in-headers, -1.0)
FAST(google-objc-avoid-nsobject-new, 1.0)
FAST(google-objc-avoid-throwing-exception, 1.0)
FAST(google-objc-function-naming, 1.0)
FAST(google-objc-global-variable-declaration, -0.0)
FAST(google-readability-avoid-underscore-in-googletest-name, -0.0)
FAST(google-readability-braces-around-statements, 1.0)
FAST(google-readability-casting, 1.0)
FAST(google-readability-function-size, 0.0)
FAST(google-readability-namespace-comments, 0.0)
FAST(google-readability-todo, 1.0)
FAST(google-runtime-int, -1.0)
FAST(google-runtime-operator, -0.0)
FAST(google-upgrade-googletest-case, 0.0)
FAST(hicpp-avoid-c-arrays, 1.0)
FAST(hicpp-avoid-goto, 0.0)
FAST(hicpp-braces-around-statements, 1.0)
FAST(hicpp-deprecated-headers, -1.0)
FAST(hicpp-exception-baseclass, 0.0)
FAST(hicpp-explicit-conversions, -1.0)
FAST(hicpp-function-size, 1.0)
FAST(hicpp-invalid-access-moved, 6.0)
FAST(hicpp-member-init, 2.0)
FAST(hicpp-move-const-arg, 1.0)
FAST(hicpp-multiway-paths-covered, 3.0)
FAST(hicpp-named-parameter, 1.0)
FAST(hicpp-new-delete-operators, 0.0)
FAST(hicpp-no-array-decay, 3.0)
FAST(hicpp-no-assembler, -0.0)
FAST(hicpp-no-malloc, 1.0)
FAST(hicpp-noexcept-move, -0.0)
FAST(hicpp-signed-bitwise, 0.0)
FAST(hicpp-special-member-functions, 0.0)
FAST(hicpp-static-assert, 1.0)
FAST(hicpp-undelegated-constructor, 3.0)
FAST(hicpp-uppercase-literal-suffix, 3.0)
FAST(hicpp-use-auto, 3.0)
FAST(hicpp-use-emplace, 1.0)
FAST(hicpp-use-equals-default, 1.0)
FAST(hicpp-use-equals-delete, 0.0)
FAST(hicpp-use-noexcept, -1.0)
FAST(hicpp-use-nullptr, 2.0)
FAST(hicpp-use-override, -0.0)
FAST(hicpp-vararg, -2.0)
FAST(linuxkernel-must-check-errs, 1.0)
FAST(llvm-else-after-return, 0.0)
FAST(llvm-header-guard, 2.0)
FAST(llvm-include-order, 3.0)
FAST(llvm-namespace-comment, 1.0)
FAST(llvm-prefer-isa-or-dyn-cast-in-conditionals, 0.0)
FAST(llvm-prefer-register-over-unsigned, 1.0)
FAST(llvm-qualified-auto, 0.0)
FAST(llvm-twine-local, -2.0)
FAST(llvmlibc-callee-namespace, 2.0)
FAST(llvmlibc-implementation-in-namespace, 2.0)
FAST(llvmlibc-restrict-system-libc-headers, -0.0)
FAST(misc-confusable-identifiers, 1.0)
SLOW(misc-const-correctness, 261.0)
FAST(misc-definitions-in-headers, -1.0)
FAST(misc-misleading-bidirectional, -0.0)
FAST(misc-misleading-identifier, -1.0)
FAST(misc-misplaced-const, 1.0)
FAST(misc-new-delete-overloads, -1.0)
FAST(misc-no-recursion, -2.0)
FAST(misc-non-copyable-objects, 1.0)
FAST(misc-non-private-member-variables-in-classes, 2.0)
FAST(misc-redundant-expression, 0.0)
FAST(misc-static-assert, 1.0)
FAST(misc-throw-by-value-catch-by-reference, -1.0)
FAST(misc-unconventional-assign-operator, 1.0)
FAST(misc-uniqueptr-reset-release, 0.0)
FAST(misc-unused-alias-decls, 1.0)
FAST(misc-unused-parameters, 0.0)
FAST(misc-unused-using-decls, 4.0)
FAST(modernize-avoid-bind, 1.0)
FAST(modernize-avoid-c-arrays, 2.0)
FAST(modernize-concat-nested-namespaces, -1.0)
FAST(modernize-deprecated-headers, -0.0)
FAST(modernize-deprecated-ios-base-aliases, 1.0)
FAST(modernize-loop-convert, 2.0)
FAST(modernize-macro-to-enum, 1.0)
FAST(modernize-make-shared, -0.0)
FAST(modernize-make-unique, 0.0)
FAST(modernize-pass-by-value, 1.0)
FAST(modernize-raw-string-literal, 1.0)
FAST(modernize-redundant-void-arg, -1.0)
FAST(modernize-replace-auto-ptr, -1.0)
FAST(modernize-replace-disallow-copy-and-assign-macro, -2.0)
FAST(modernize-replace-random-shuffle, 0.0)
FAST(modernize-return-braced-init-list, -1.0)
FAST(modernize-shrink-to-fit, 2.0)
FAST(modernize-unary-static-assert, -1.0)
FAST(modernize-use-auto, 2.0)
FAST(modernize-use-bool-literals, 1.0)
FAST(modernize-use-default-member-init, 2.0)
FAST(modernize-use-emplace, 1.0)
FAST(modernize-use-equals-default, 2.0)
FAST(modernize-use-equals-delete, 0.0)
FAST(modernize-use-nodiscard, 1.0)
FAST(modernize-use-noexcept, 1.0)
FAST(modernize-use-nullptr, 2.0)
FAST(modernize-use-override, 1.0)
FAST(modernize-use-trailing-return-type, -0.0)
FAST(modernize-use-transparent-functors, -1.0)
FAST(modernize-use-uncaught-exceptions, 1.0)
FAST(modernize-use-using, 1.0)
FAST(objc-assert-equals, -1.0)
FAST(objc-avoid-nserror-init, -2.0)
FAST(objc-dealloc-in-category, -0.0)
FAST(objc-forbidden-subclassing, 0.0)
FAST(objc-missing-hash, 1.0)
FAST(objc-nsdate-formatter, 1.0)
FAST(objc-nsinvocation-argument-lifetime, -2.0)
FAST(objc-property-declaration, -1.0)
FAST(objc-super-self, -0.0)
FAST(openmp-exception-escape, 1.0)
FAST(openmp-use-default-none, 1.0)
FAST(performance-faster-string-find, 2.0)
FAST(performance-for-range-copy, 2.0)
FAST(performance-implicit-conversion-in-loop, 1.0)
FAST(performance-inefficient-algorithm, 0.0)
FAST(performance-inefficient-string-concatenation, -0.0)
FAST(performance-inefficient-vector-operation, 1.0)
FAST(performance-move-const-arg, 3.0)
FAST(performance-move-constructor-init, 1.0)
FAST(performance-no-automatic-move, -1.0)
FAST(performance-no-int-to-ptr, 2.0)
FAST(performance-noexcept-move-constructor, 1.0)
FAST(performance-trivially-destructible, -1.0)
FAST(performance-type-promotion-in-math-fn, 4.0)
FAST(performance-unnecessary-copy-initialization, 4.0)
FAST(performance-unnecessary-value-param, 2.0)
FAST(portability-restrict-system-includes, 2.0)
FAST(portability-simd-intrinsics, 2.0)
FAST(portability-std-allocator-const, 2.0)
FAST(readability-avoid-const-params-in-decls, -0.0)
FAST(readability-braces-around-statements, 2.0)
FAST(readability-const-return-type, -0.0)
FAST(readability-container-contains, -0.0)
FAST(readability-container-data-pointer, 0.0)
SLOW(readability-container-size-empty, 16.0)
FAST(readability-convert-member-functions-to-static, 0.0)
FAST(readability-delete-null-pointer, 0.0)
FAST(readability-duplicate-include, -0.0)
FAST(readability-else-after-return, 1.0)
FAST(readability-function-cognitive-complexity, 0.0)
FAST(readability-function-size, 3.0)
FAST(readability-identifier-length, -1.0)
FAST(readability-identifier-naming, 5.0)
FAST(readability-implicit-bool-conversion, 2.0)
FAST(readability-inconsistent-declaration-parameter-name, 1.0)
FAST(readability-isolate-declaration, 1.0)
FAST(readability-magic-numbers, -1.0)
FAST(readability-make-member-function-const, 2.0)
FAST(readability-misleading-indentation, 0.0)
FAST(readability-misplaced-array-index, -0.0)
FAST(readability-named-parameter, -0.0)
FAST(readability-non-const-parameter, 1.0)
FAST(readability-qualified-auto, -0.0)
FAST(readability-redundant-access-specifiers, -1.0)
FAST(readability-redundant-control-flow, -1.0)
FAST(readability-redundant-declaration, -0.0)
FAST(readability-redundant-function-ptr-dereference, -1.0)
FAST(readability-redundant-member-init, 0.0)
FAST(readability-redundant-preprocessor, 0.0)
FAST(readability-redundant-smartptr-get, 6.0)
FAST(readability-redundant-string-cstr, 0.0)
FAST(readability-redundant-string-init, 1.0)
FAST(readability-simplify-boolean-expr, 1.0)
FAST(readability-simplify-subscript-expr, -0.0)
FAST(readability-static-accessed-through-instance, 1.0)
FAST(readability-static-definition-in-anonymous-namespace, -0.0)
FAST(readability-string-compare, -0.0)
FAST(readability-suspicious-call-argument, 0.0)
FAST(readability-uniqueptr-delete-release, 1.0)
FAST(readability-uppercase-literal-suffix, 3.0)
FAST(readability-use-anyofallof, 1.0)
FAST(zircon-temporary-objects, 1.0)

#undef FAST
#undef SLOW