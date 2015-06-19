.class public Lcom/ibm/icu/impl/locale/LanguageTag$Extension;
.super Ljava/lang/Object;
.source "LanguageTag.java"
.implements Ljava/lang/Comparable;
.field private _singleton:C
.field private _value:Ljava/lang/String;
.method public constructor <init>(CLjava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result v0
iput-char v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_singleton:C
iput-object p2, p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_value:Ljava/lang/String;
return-void
.end method
.method public compareTo(Lcom/ibm/icu/impl/locale/LanguageTag$Extension;)I
.registers 4
iget-char v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_singleton:C
iget-char v1, p1, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_singleton:C
sub-int/2addr v0, v1
return v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->compareTo(Lcom/ibm/icu/impl/locale/LanguageTag$Extension;)I
move-result v0
return v0
.end method
.method public getSingleton()C
.registers 2
iget-char v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_singleton:C
return v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->_value:Ljava/lang/String;
return-object v0
.end method