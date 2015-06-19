.class final Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;
.super Ljava/lang/Object;
.source "DecimalFormat.java"
.field private negPrefixPatternForCurrency:Ljava/lang/String;
.field private negSuffixPatternForCurrency:Ljava/lang/String;
.field private patternType:I
.field private posPrefixPatternForCurrency:Ljava/lang/String;
.field private posSuffixPatternForCurrency:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->patternType:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;
iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;
iput-object p3, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;
iput-object p4, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;
iput p5, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->patternType:I
return-void
.end method
.method public getNegPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;
return-object v0
.end method
.method public getNegSuffix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;
return-object v0
.end method
.method public getPatternType()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->patternType:I
return v0
.end method
.method public getPosPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;
return-object v0
.end method
.method public getPosSuffix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;
return-object v0
.end method