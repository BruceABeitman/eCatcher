.class  Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;
.field  prop:I
.field  value:I
.method constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I
iput p2, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I
return-void
.end method
.method public contains(I)Z
.registers 4
iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I
invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I
move-result v0
iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method