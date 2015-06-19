.class public final Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"
.field private static final DEFAULTMAPCAPACITY:I = 0x4
.field private static final LANGTAGSEP:Ljava/lang/String; = "-"
.field private static final LDMLSINGLETON:C = 'u'
.field private static final LOCALESEP:Ljava/lang/String; = "_"
.field public static final PRIVATEUSEKEY:C = 'x'
.field private _extMap:Ljava/util/HashMap;
.field private _handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
.field private _kwdMap:Ljava/util/HashMap;
.field private _language:Ljava/lang/String;
.field private _region:Ljava/lang/String;
.field private _script:Ljava/lang/String;
.field private _variant:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;
sget-object v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->DEFAULT:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;
sget-object v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->DEFAULT:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
return-void
.end method
.method public clear()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 2
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;
invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->removeLocaleExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
return-object p0
.end method
.method public getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;
.registers 5
iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;
iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;
iget-object v3, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;
move-result-object v0
return-object v0
.end method
.method public getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
.registers 14
const/4 v2, 0x0
const/4 v7, 0x0
iget-object v11, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-eqz v11, :cond_43
iget-object v11, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v11}, Ljava/util/HashMap;->size()I
move-result v11
if-lez v11, :cond_43
iget-object v11, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v8
invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_18
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_43
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/Map$Entry;
invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
if-nez v7, :cond_37
new-instance v7, Ljava/util/TreeMap;
invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V
:cond_37
invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v11
invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v12
invoke-virtual {v7, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_18
:cond_43
iget-object v11, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
if-eqz v11, :cond_78
iget-object v11, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_51
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_78
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Character;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
if-nez v2, :cond_70
new-instance v2, Ljava/util/TreeMap;
invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
:cond_70
invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v11
invoke-virtual {v2, v5, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_51
:cond_78
if-eqz v7, :cond_9b
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {v7, v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->keywordsToString(Ljava/util/TreeMap;Ljava/lang/StringBuffer;)V
if-nez v2, :cond_89
new-instance v2, Ljava/util/TreeMap;
invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
:cond_89
new-instance v11, Ljava/lang/Character;
const/16 v12, 0x75
invoke-direct {v11, v12}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v12
invoke-virtual {v2, v11, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9b
invoke-static {v2, v7}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getInstance(Ljava/util/TreeMap;Ljava/util/TreeMap;)Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v11
return-object v11
.end method
.method public removeLocaleExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:cond_9
iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:cond_12
return-object p0
.end method
.method public setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 14
const/4 v10, 0x4
invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidExtensionKey(C)Z
move-result v7
if-nez v7, :cond_20
new-instance v7, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Ill-formed extension key: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v7
:cond_20
invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C
move-result p1
const/16 v7, 0x75
if-ne p1, v7, :cond_b3
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-eqz v7, :cond_31
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
:cond_31
const-string v7, "_"
const-string v8, "-"
invoke-static {p2, v7, v8}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const/16 v8, 0x2d
invoke-static {v7, v8}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;
move-result-object v5
array-length v7, v5
rem-int/lit8 v7, v7, 0x2
if-eqz v7, :cond_5d
new-instance v7, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Ill-formed LDML extension key/value pairs: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v7
:cond_5d
const/4 v2, 0x0
:goto_5e
array-length v7, v5
if-ge v2, v7, :cond_c7
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
add-int/lit8 v3, v2, 0x1
aget-object v8, v5, v2
invoke-virtual {v7, v10, v8}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v8, 0x5
add-int/lit8 v2, v3, 0x1
aget-object v9, v5, v3
invoke-virtual {v7, v8, v9}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v6
if-eqz v4, :cond_86
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
if-eqz v7, :cond_86
if-eqz v6, :cond_86
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_9f
:cond_86
new-instance v7, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Ill-formed LDML extension key/value pairs: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v7
:cond_9f
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-nez v7, :cond_ad
new-instance v7, Ljava/util/HashMap;
array-length v8, v5
div-int/lit8 v8, v8, 0x2
invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V
iput-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
:cond_ad
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_5e
:cond_b3
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_c8
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
if-eqz v7, :cond_c7
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
new-instance v8, Ljava/lang/Character;
invoke-direct {v8, p1}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_c7
:cond_c7
return-object p0
:cond_c8
const/16 v7, 0x78
if-ne p1, v7, :cond_ef
const/4 v7, 0x7
move v1, v7
:goto_ce
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
invoke-virtual {v7, v1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_f2
new-instance v7, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Ill-formed LDML extension value: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v7
:cond_ef
const/4 v7, 0x6
move v1, v7
goto :goto_ce
:cond_f2
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
if-nez v7, :cond_fd
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V
iput-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
:cond_fd
iget-object v7, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extMap:Ljava/util/HashMap;
new-instance v8, Ljava/lang/Character;
invoke-direct {v8, p1}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c7
.end method
.method public setLDMLExtensionValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 8
const/4 v4, 0x4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_f
new-instance v2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
const-string v3, "Empty LDML extension key"
invoke-direct {v2, v3}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v2
:cond_f
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
invoke-virtual {v2, v4, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_30
new-instance v2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Ill-formed LDML extension key: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v2
:cond_30
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_40
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-eqz v2, :cond_3f
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_3f
:cond_3f
return-object p0
:cond_40
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v3, 0x5
invoke-virtual {v2, v3, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_62
new-instance v2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Ill-formed LDML extension value: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v2
:cond_62
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
if-nez v2, :cond_6d
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V
iput-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
:cond_6d
iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_kwdMap:Ljava/util/HashMap;
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3f
.end method
.method public setLanguage(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 6
const-string v0, ""
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2a
iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v2, 0x0
invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2a
new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ill-formed language: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2a
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;
return-object p0
.end method
.method public setRegion(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 6
const-string v0, ""
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2a
iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v2, 0x2
invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2a
new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ill-formed region: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2a
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;
return-object p0
.end method
.method public setScript(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 6
const-string v0, ""
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2a
iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v2, 0x1
invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2a
new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ill-formed script: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2a
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;
return-object p0
.end method
.method public setVariant(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.registers 6
const-string v0, ""
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2a
iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_handler:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;
const/4 v2, 0x3
invoke-virtual {v1, v2, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$FieldHandler;->process(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_2a
new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Ill-formed variant: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2a
iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;
return-object p0
.end method