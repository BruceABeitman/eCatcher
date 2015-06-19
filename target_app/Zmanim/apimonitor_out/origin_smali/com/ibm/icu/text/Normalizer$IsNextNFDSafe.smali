.class final Lcom/ibm/icu/text/Normalizer$IsNextNFDSafe;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Lcom/ibm/icu/text/Normalizer$IsNextBoundary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsNextNFDSafe"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$IsNextNFDSafe;-><init>()V

    return-void
.end method


# virtual methods
.method public isNextBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[I)Z
    .registers 8

    #calls: Lcom/ibm/icu/text/Normalizer;->getNextNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/text/Normalizer;->access$1300(Lcom/ibm/icu/text/UCharacterIterator;II[I)J

    move-result-wide v0

    and-int/lit8 v2, p3, 0x3f

    invoke-static {v0, v1, p3, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->isNFDSafe(JII)Z

    move-result v0

    return v0
.end method
