.class final Lcom/ibm/icu/text/Normalizer$IsPrevNFDSafe;
.super Ljava/lang/Object;
.source "Normalizer.java"
.implements Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$IsPrevNFDSafe;-><init>()V
return-void
.end method
.method public isPrevBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[C)Z
.registers 8
#calls: Lcom/ibm/icu/text/Normalizer;->getPrevNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/text/Normalizer;->access$1200(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
move-result-wide v0
and-int/lit8 v2, p3, 0x3f
invoke-static {v0, v1, p3, v2}, Lcom/ibm/icu/impl/NormalizerImpl;->isNFDSafe(JII)Z
move-result v0
return v0
.end method