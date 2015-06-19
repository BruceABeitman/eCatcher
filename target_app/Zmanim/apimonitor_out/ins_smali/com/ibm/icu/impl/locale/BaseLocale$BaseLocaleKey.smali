.class public Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
.super Ljava/lang/Object;
.source "BaseLocale.java"
.implements Ljava/lang/Comparable;
.field private _hash:I
.field private _lang:Ljava/lang/String;
.field private _regn:Ljava/lang/String;
.field private _scrt:Ljava/lang/String;
.field private _vart:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
if-eqz p1, :cond_17
iput-object p1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
:cond_17
if-eqz p2, :cond_1b
iput-object p2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
:cond_1b
if-eqz p3, :cond_1f
iput-object p3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
:cond_1f
if-eqz p4, :cond_23
iput-object p4, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
:cond_23
return-void
.end method
.method public compareTo(Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;)I
.registers 5
iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
iget-object v2, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_26
iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
iget-object v2, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_26
iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
iget-object v2, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_26
iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
iget-object v2, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
:cond_26
return v0
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->compareTo(Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
if-eq p0, p1, :cond_3c
instance-of v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
if-eqz v1, :cond_3e
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
move-object v1, v0
iget-object v1, v1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3e
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
move-object v1, v0
iget-object v1, v1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3e
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
move-object v1, v0
iget-object v1, v1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3e
check-cast p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;
iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
:cond_3c
const/4 v1, 0x1
:goto_3d
return v1
:cond_3e
const/4 v1, 0x0
goto :goto_3d
.end method
.method public hashCode()I
.registers 5
iget v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_hash:I
if-nez v0, :cond_6e
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_1e
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_lang:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result v3
add-int v0, v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1e
const/4 v1, 0x0
:goto_1f
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_38
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_scrt:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result v3
add-int v0, v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_38
const/4 v1, 0x0
:goto_39
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_52
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_regn:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result v3
add-int v0, v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_39
:cond_52
const/4 v1, 0x0
:goto_53
iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_6c
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_vart:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result v3
add-int v0, v2, v3
add-int/lit8 v1, v1, 0x1
goto :goto_53
:cond_6c
iput v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$BaseLocaleKey;->_hash:I
:cond_6e
return v0
.end method