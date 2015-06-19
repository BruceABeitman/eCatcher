.class public final Lcom/ibm/icu/util/LocaleData$PaperSize;
.super Ljava/lang/Object;
.source "LocaleData.java"
.field private height:I
.field private width:I
.method private constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/util/LocaleData$PaperSize;->height:I
iput p2, p0, Lcom/ibm/icu/util/LocaleData$PaperSize;->width:I
return-void
.end method
.method synthetic constructor <init>(IILcom/ibm/icu/util/LocaleData$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/LocaleData$PaperSize;-><init>(II)V
return-void
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/LocaleData$PaperSize;->height:I
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/LocaleData$PaperSize;->width:I
return v0
.end method