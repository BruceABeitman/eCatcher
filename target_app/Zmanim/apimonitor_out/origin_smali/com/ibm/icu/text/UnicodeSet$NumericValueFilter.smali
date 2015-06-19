.class Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericValueFilter"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;->value:D

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 6

    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ibm/icu/text/UnicodeSet$NumericValueFilter;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
