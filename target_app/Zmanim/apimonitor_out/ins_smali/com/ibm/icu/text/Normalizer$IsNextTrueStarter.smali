.class final Lcom/ibm/icu/text/Normalizer$IsNextTrueStarter;
.super Ljava/lang/Object;
.source "Normalizer.java"
.implements Lcom/ibm/icu/text/Normalizer$IsNextBoundary;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$IsNextTrueStarter;-><init>()V
return-void
.end method
.method public isNextBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[I)Z
.registers 9
shl-int/lit8 v3, p3, 0x2
and-int/lit8 v0, v3, 0xf
or-int v3, p3, v0
#calls: Lcom/ibm/icu/text/Normalizer;->getNextNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
invoke-static {p1, p2, v3, p4}, Lcom/ibm/icu/text/Normalizer;->access$1300(Lcom/ibm/icu/text/UCharacterIterator;II[I)J
move-result-wide v1
invoke-static {v1, v2, p3, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->isTrueStarter(JII)Z
move-result v3
return v3
.end method