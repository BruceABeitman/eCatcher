.class final Lcom/ibm/icu/text/Normalizer$IsPrevTrueStarter;
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
invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$IsPrevTrueStarter;-><init>()V
return-void
.end method
.method public isPrevBoundary(Lcom/ibm/icu/text/UCharacterIterator;II[C)Z
.registers 9
shl-int/lit8 v3, p3, 0x2
and-int/lit8 v0, v3, 0xf
or-int v3, p3, v0
#calls: Lcom/ibm/icu/text/Normalizer;->getPrevNorm32(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
invoke-static {p1, p2, v3, p4}, Lcom/ibm/icu/text/Normalizer;->access$1200(Lcom/ibm/icu/text/UCharacterIterator;II[C)J
move-result-wide v1
invoke-static {v1, v2, p3, v0}, Lcom/ibm/icu/impl/NormalizerImpl;->isTrueStarter(JII)Z
move-result v3
return v3
.end method