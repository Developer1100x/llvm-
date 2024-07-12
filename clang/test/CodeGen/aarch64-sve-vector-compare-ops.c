// NOTE: Assertions have been autogenerated by utils/update_cc_test_checks.py
// RUN: %clang_cc1 -triple aarch64-none-linux-gnu -target-feature +sve \
// RUN: -disable-O0-optnone \
// RUN:  -emit-llvm -o - %s | opt -S -passes=sroa | FileCheck %s

// REQUIRES: aarch64-registered-target

#include <arm_sve.h>

// EQ

// CHECK-LABEL: @eq_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t eq_bool(svbool_t a, svbool_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t eq_i8(svint8_t a, svint8_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t eq_i16(svint16_t a, svint16_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t eq_i32(svint32_t a, svint32_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t eq_i64(svint64_t a, svint64_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t eq_u8(svuint8_t a, svuint8_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t eq_u16(svuint16_t a, svuint16_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t eq_u32(svuint32_t a, svuint32_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp eq <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t eq_u64(svuint64_t a, svuint64_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oeq <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t eq_f16(svfloat16_t a, svfloat16_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oeq <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t eq_f32(svfloat32_t a, svfloat32_t b) {
  return a == b;
}

// CHECK-LABEL: @eq_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oeq <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t eq_f64(svfloat64_t a, svfloat64_t b) {
  return a == b;
}

// NEQ

// CHECK-LABEL: @neq_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t neq_bool(svbool_t a, svbool_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t neq_i8(svint8_t a, svint8_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t neq_i16(svint16_t a, svint16_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t neq_i32(svint32_t a, svint32_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t neq_i64(svint64_t a, svint64_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t neq_u8(svuint8_t a, svuint8_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t neq_u16(svuint16_t a, svuint16_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t neq_u32(svuint32_t a, svuint32_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ne <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t neq_u64(svuint64_t a, svuint64_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp une <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t neq_f16(svfloat16_t a, svfloat16_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp une <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t neq_f32(svfloat32_t a, svfloat32_t b) {
  return a != b;
}

// CHECK-LABEL: @neq_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp une <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t neq_f64(svfloat64_t a, svfloat64_t b) {
  return a != b;
}

// LT

// CHECK-LABEL: @lt_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t lt_bool(svbool_t a, svbool_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t lt_i8(svint8_t a, svint8_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t lt_i16(svint16_t a, svint16_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t lt_i32(svint32_t a, svint32_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t lt_i64(svint64_t a, svint64_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t lt_u8(svuint8_t a, svuint8_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t lt_u16(svuint16_t a, svuint16_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t lt_u32(svuint32_t a, svuint32_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ult <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t lt_u64(svuint64_t a, svuint64_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp olt <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t lt_f16(svfloat16_t a, svfloat16_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp olt <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t lt_f32(svfloat32_t a, svfloat32_t b) {
  return a < b;
}

// CHECK-LABEL: @lt_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp olt <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t lt_f64(svfloat64_t a, svfloat64_t b) {
  return a < b;
}

// LEQ

// CHECK-LABEL: @leq_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t leq_bool(svbool_t a, svbool_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t leq_i8(svint8_t a, svint8_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t leq_i16(svint16_t a, svint16_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t leq_i32(svint32_t a, svint32_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t leq_i64(svint64_t a, svint64_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t leq_u8(svuint8_t a, svuint8_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t leq_u16(svuint16_t a, svuint16_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t leq_u32(svuint32_t a, svuint32_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ule <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t leq_u64(svuint64_t a, svuint64_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ole <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t leq_f16(svfloat16_t a, svfloat16_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ole <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t leq_f32(svfloat32_t a, svfloat32_t b) {
  return a <= b;
}

// CHECK-LABEL: @leq_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ole <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t leq_f64(svfloat64_t a, svfloat64_t b) {
  return a <= b;
}

// GT

// CHECK-LABEL: @gt_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t gt_bool(svbool_t a, svbool_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t gt_i8(svint8_t a, svint8_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t gt_i16(svint16_t a, svint16_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t gt_i32(svint32_t a, svint32_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t gt_i64(svint64_t a, svint64_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t gt_u8(svuint8_t a, svuint8_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t gt_u16(svuint16_t a, svuint16_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t gt_u32(svuint32_t a, svuint32_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp ugt <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t gt_u64(svuint64_t a, svuint64_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ogt <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t gt_f16(svfloat16_t a, svfloat16_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ogt <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t gt_f32(svfloat32_t a, svfloat32_t b) {
  return a > b;
}

// CHECK-LABEL: @gt_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp ogt <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t gt_f64(svfloat64_t a, svfloat64_t b) {
  return a > b;
}

// GEQ

// CHECK-LABEL: @geq_bool(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 16 x i1> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    ret <vscale x 16 x i1> [[CMP]]
//
svbool_t geq_bool(svbool_t a, svbool_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_i8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t geq_i8(svint8_t a, svint8_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_i16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t geq_i16(svint16_t a, svint16_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_i32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t geq_i32(svint32_t a, svint32_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_i64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t geq_i64(svint64_t a, svint64_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_u8(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 16 x i8> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 16 x i1> [[CMP]] to <vscale x 16 x i8>
// CHECK-NEXT:    ret <vscale x 16 x i8> [[CONV]]
//
svint8_t geq_u8(svuint8_t a, svuint8_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_u16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 8 x i16> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t geq_u16(svuint16_t a, svuint16_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_u32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 4 x i32> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t geq_u32(svuint32_t a, svuint32_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_u64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = icmp uge <vscale x 2 x i64> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t geq_u64(svuint64_t a, svuint64_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_f16(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oge <vscale x 8 x half> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 8 x i1> [[CMP]] to <vscale x 8 x i16>
// CHECK-NEXT:    ret <vscale x 8 x i16> [[CONV]]
//
svint16_t geq_f16(svfloat16_t a, svfloat16_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_f32(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oge <vscale x 4 x float> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 4 x i1> [[CMP]] to <vscale x 4 x i32>
// CHECK-NEXT:    ret <vscale x 4 x i32> [[CONV]]
//
svint32_t geq_f32(svfloat32_t a, svfloat32_t b) {
  return a >= b;
}

// CHECK-LABEL: @geq_f64(
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[CMP:%.*]] = fcmp oge <vscale x 2 x double> [[A:%.*]], [[B:%.*]]
// CHECK-NEXT:    [[CONV:%.*]] = zext <vscale x 2 x i1> [[CMP]] to <vscale x 2 x i64>
// CHECK-NEXT:    ret <vscale x 2 x i64> [[CONV]]
//
svint64_t geq_f64(svfloat64_t a, svfloat64_t b) {
  return a >= b;
}