.class  Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;
.super Ljava/lang/Object;
.source "UPropertyAliases.java"
.field  enumToName:Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;
.field  nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;
.field final synthetic this$0:Lcom/ibm/icu/impl/UPropertyAliases;
.method constructor <init>(Lcom/ibm/icu/impl/UPropertyAliases;Lcom/ibm/icu/impl/UPropertyAliases$Builder;)V
.registers 8
iput-object p1, p0, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->this$0:Lcom/ibm/icu/impl/UPropertyAliases;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readShort()S
move-result v0
invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readShort()S
move-result v2
invoke-virtual {p2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->readShort()S
move-result v1
if-eqz v0, :cond_2d
invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V
new-instance v3, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;
invoke-direct {v3, p2}, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;-><init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V
iget-object v4, v3, Lcom/ibm/icu/impl/UPropertyAliases$ContiguousEnumToShort;->offsetArray:[S
#calls: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroupOffsetToIndex([S)V
invoke-static {p2, v4}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$000(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V
iput-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;
:goto_22
invoke-virtual {p2, v1}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V
new-instance v4, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;
invoke-direct {v4, p1, p2}, Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;-><init>(Lcom/ibm/icu/impl/UPropertyAliases;Lcom/ibm/icu/impl/UPropertyAliases$Builder;)V
iput-object v4, p0, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->nameToEnum:Lcom/ibm/icu/impl/UPropertyAliases$NameToEnum;
return-void
:cond_2d
invoke-virtual {p2, v2}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->seek(I)V
new-instance v3, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;
invoke-direct {v3, p2}, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;-><init>(Lcom/ibm/icu/impl/ICUBinaryStream;)V
iget-object v4, v3, Lcom/ibm/icu/impl/UPropertyAliases$NonContiguousEnumToShort;->offsetArray:[S
#calls: Lcom/ibm/icu/impl/UPropertyAliases$Builder;->nameGroupOffsetToIndex([S)V
invoke-static {p2, v4}, Lcom/ibm/icu/impl/UPropertyAliases$Builder;->access$000(Lcom/ibm/icu/impl/UPropertyAliases$Builder;[S)V
iput-object v3, p0, Lcom/ibm/icu/impl/UPropertyAliases$ValueMap;->enumToName:Lcom/ibm/icu/impl/UPropertyAliases$EnumToShort;
goto :goto_22
.end method