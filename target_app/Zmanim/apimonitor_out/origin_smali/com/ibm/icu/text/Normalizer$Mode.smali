.class public Lcom/ibm/icu/text/Normalizer$Mode;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(ILcom/ibm/icu/text/Normalizer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getMask()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected getMinC()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected getNextBoundary()Lcom/ibm/icu/text/Normalizer$IsNextBoundary;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPrevBoundary()Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isNFSkippable(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected normalize([CII[CIII)I
    .registers 16

    invoke-static {p7}, Lcom/ibm/icu/impl/NormalizerImpl;->getNX(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/text/Normalizer$Mode;->normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I

    move-result v0

    return v0
.end method

.method protected normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
    .registers 10

    sub-int v1, p3, p2

    sub-int v0, p6, p5

    if-le v1, v0, :cond_7

    :goto_6
    return v1

    :cond_7
    invoke-static {p1, p2, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method protected normalize(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    return-object p1
.end method

.method protected quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .registers 7

    if-eqz p4, :cond_5

    sget-object v0, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    goto :goto_4
.end method
