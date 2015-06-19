.class public Lcom/glympse/android/lib/json/JsonToken;
.super Ljava/lang/Object;
.source "JsonToken.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# static fields
.field public static final TOKEN_ARRAY_BEGIN:I = 0x4

.field public static final TOKEN_ARRAY_END:I = 0x5

.field public static final TOKEN_ARRAY_SEPARATOR:I = 0xc

.field public static final TOKEN_COMMENT:I = 0xe

.field public static final TOKEN_DOUBLE:I = 0x8

.field public static final TOKEN_END_OF_STREAM:I = 0x1

.field public static final TOKEN_ERROR:I = 0xf

.field public static final TOKEN_FALSE:I = 0xa

.field public static final TOKEN_LONG:I = 0x7

.field public static final TOKEN_NULL:I = 0xb

.field public static final TOKEN_OBJECT_BEGIN:I = 0x2

.field public static final TOKEN_OBJECT_END:I = 0x3

.field public static final TOKEN_PAIR_SEPARATOR:I = 0xd

.field public static final TOKEN_STRING:I = 0x6

.field public static final TOKEN_TRUE:I = 0x9


# instance fields
.field public _buffer:[C

.field public _end:I

.field public _start:I

.field public _type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
