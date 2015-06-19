.class final Lcom/ibm/icu/text/Normalizer$FCDMode;
.super Lcom/ibm/icu/text/Normalizer$Mode;
.source "Normalizer.java"
.method private constructor <init>(I)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>(ILcom/ibm/icu/text/Normalizer$1;)V
return-void
.end method
.method synthetic constructor <init>(ILcom/ibm/icu/text/Normalizer$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/text/Normalizer$FCDMode;-><init>(I)V
return-void
.end method
.method protected getMask()I
.registers 2
const v0, 0xff04
return v0
.end method
.method protected getMinC()I
.registers 2
const/16 v0, 0x300
return v0
.end method
.method protected getNextBoundary()Lcom/ibm/icu/text/Normalizer$IsNextBoundary;
.registers 3
new-instance v0, Lcom/ibm/icu/text/Normalizer$IsNextNFDSafe;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/text/Normalizer$IsNextNFDSafe;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V
return-object v0
.end method
.method protected getPrevBoundary()Lcom/ibm/icu/text/Normalizer$IsPrevBoundary;
.registers 3
new-instance v0, Lcom/ibm/icu/text/Normalizer$IsPrevNFDSafe;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/text/Normalizer$IsPrevNFDSafe;-><init>(Lcom/ibm/icu/text/Normalizer$1;)V
return-object v0
.end method
.method protected isNFSkippable(I)Z
.registers 4
const/4 v1, 0x1
invoke-static {p1}, Lcom/ibm/icu/impl/NormalizerImpl;->getFCD16(I)I
move-result v0
if-le v0, v1, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method protected normalize([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
.registers 9
invoke-static/range {p1 .. p7}, Lcom/ibm/icu/impl/NormalizerImpl;->makeFCD([CII[CIILcom/ibm/icu/text/UnicodeSet;)I
move-result v0
return v0
.end method
.method protected normalize(Ljava/lang/String;I)Ljava/lang/String;
.registers 4
#calls: Lcom/ibm/icu/text/Normalizer;->makeFCD(Ljava/lang/String;I)Ljava/lang/String;
invoke-static {p1, p2}, Lcom/ibm/icu/text/Normalizer;->access$1000(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected quickCheck([CIIZLcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
.registers 7
invoke-static {p1, p2, p3, p5}, Lcom/ibm/icu/impl/NormalizerImpl;->checkFCD([CIILcom/ibm/icu/text/UnicodeSet;)Z
move-result v0
if-eqz v0, :cond_9
sget-object v0, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
:goto_8
return-object v0
:cond_9
sget-object v0, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
goto :goto_8
.end method