.class  Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;
.field  mask:I
.method constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I
return-void
.end method
.method public contains(I)Z
.registers 5
const/4 v2, 0x1
invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I
move-result v0
shl-int v0, v2, v0
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I
and-int/2addr v0, v1
if-eqz v0, :cond_e
move v0, v2
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method