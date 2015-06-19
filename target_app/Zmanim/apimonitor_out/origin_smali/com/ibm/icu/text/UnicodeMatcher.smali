.class public interface abstract Lcom/ibm/icu/text/UnicodeMatcher;
.super Ljava/lang/Object;
.source "UnicodeMatcher.java"


# static fields
.field public static final ETHER:C = '\uffff'

.field public static final U_MATCH:I = 0x2

.field public static final U_MISMATCH:I = 0x0

.field public static final U_PARTIAL_MATCH:I = 0x1


# virtual methods
.method public abstract addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
.end method

.method public abstract matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
.end method

.method public abstract matchesIndexValue(I)Z
.end method

.method public abstract toPattern(Z)Ljava/lang/String;
.end method
