.class  Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"
.implements Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;
.field  enumArray:[I
.field  offsetArray:[S
.method constructor <init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readInt()I
move-result v0
new-array v2, v0, [I
iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->enumArray:[I
new-array v2, v0, [S
iput-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S
const/4 v1, 0x0
:goto_10
if-ge v1, v0, :cond_1d
iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->enumArray:[I
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readInt()I
move-result v3
aput v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_1d
const/4 v1, 0x0
:goto_1e
if-ge v1, v0, :cond_2b
iget-object v2, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUBinaryStream;->readShort()S
move-result v3
aput-short v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_2b
return-void
.end method
.method public getShort(I)S
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->enumArray:[I
array-length v1, v1
if-ge v0, v1, :cond_15
iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->enumArray:[I
aget v1, v1, v0
if-ge v1, p1, :cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_f
iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->enumArray:[I
aget v1, v1, v0
if-le v1, p1, :cond_1d
:cond_15
new-instance v1, Lcom/ibm/icu/impl/IllegalIcuArgumentException;
const-string v2, "Invalid enum"
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1d
iget-object v1, p0, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S
aget-short v1, v1, v0
return v1
.end method