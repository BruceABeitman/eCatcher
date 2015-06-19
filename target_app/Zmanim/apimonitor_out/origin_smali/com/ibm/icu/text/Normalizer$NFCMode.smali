.class final Lcom/ibm/icu/text/Normalizer$NFCMode;
.super Lcom/ibm/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFCMode"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/ibm/icu/text/Normalizer$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/Normalizer$NFCMode;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getMask()I
    .registers 2

    const v0, 0xff11

    return v0
.end method

.method protected getMinC()I
    .registers 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFromIndexesArr(I)I

    move-result v0

    return v0
.end method

.method protected getNextBoundary()Lcom/ibm/icu/text/Normalizer$IsNextBoundary;
    .registers 3

    new-instance v0, Lcom/ibm/icu/text/Normalizer$IsNextTrueStarter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/Normalizer$IsNextTrueStarter;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    return-object v0
.end method

.method protected getPrevBoundary()Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;
    .registers 3

    new-instance v0, Lcom/ibm/icu/text/Normalizer$IsPrevTrueStarter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/Normalizer$IsPrevTrueStarter;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V

    return-object v0
.end method

.method protected isNFSkippable(I)Z
    .registers 4

    const-wide/32 v0, 0xffc1

    invoke-static {p1, p0, v0, v1}, Lcom/ibm/icu/impl/NormalizerImpl;->isNFSkippable(ILcom/ibm/icu/text/Normalizer$Mode;J)Z

    move-result v0

    return v0
.end method

.method protected normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
    .registers 16

    const/4 v6, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/NormalizerImpl;->compose([CII[CIIILcom/ibm/icu/text/UnicodeSet;)I

    move-result v0

    return v0
.end method

.method protected normalize(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .registers 14

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ibm/icu/impl/NormalizerImpl;->getFromIndexesArr(I)I

    move-result v3

    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/impl/NormalizerImpl;->quickCheck([CIIIIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    move-result-object v0

    return-object v0
.end method
