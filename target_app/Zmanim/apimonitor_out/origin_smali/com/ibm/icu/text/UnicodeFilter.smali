.class public abstract Lcom/ibm/icu/text/UnicodeFilter;
.super Ljava/lang/Object;
.source "UnicodeFilter.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeMatcher;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(I)Z
.end method

.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
    .registers 11

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v1, p2, v3

    if-ge v1, p3, :cond_1e

    aget v1, p2, v3

    invoke-interface {p1, v1}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    aget v1, p2, v3

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p2, v3

    move v1, v5

    :goto_1d
    return v1

    :cond_1e
    aget v1, p2, v3

    if-le v1, p3, :cond_49

    aget v1, p2, v3

    invoke-interface {p1, v1}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_49

    aget v1, p2, v3

    sub-int/2addr v1, v4

    aput v1, p2, v3

    aget v1, p2, v3

    if-ltz v1, :cond_47

    aget v1, p2, v3

    aget v2, p2, v3

    invoke-interface {p1, v2}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v1, v2

    aput v1, p2, v3

    :cond_47
    move v1, v5

    goto :goto_1d

    :cond_49
    if-eqz p4, :cond_51

    aget v1, p2, v3

    if-ne v1, p3, :cond_51

    move v1, v4

    goto :goto_1d

    :cond_51
    move v1, v3

    goto :goto_1d
.end method
