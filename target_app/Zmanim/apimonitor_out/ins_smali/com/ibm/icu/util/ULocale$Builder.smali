.class public final Lcom/ibm/icu/util/ULocale$Builder;
.super Ljava/lang/Object;
.source "ULocale.java"
.field private _locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-direct {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
return-void
.end method
.method public clear()Lcom/ibm/icu/util/ULocale$Builder;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clear()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
return-object p0
.end method
.method public clearExtensions()Lcom/ibm/icu/util/ULocale$Builder;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->removeLocaleExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
return-object p0
.end method
.method public create()Lcom/ibm/icu/util/ULocale;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v1
#calls: Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->access$1500(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method public setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 7
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public setLDMLExtensionValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 7
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLDMLExtensionValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public setLanguage(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public setLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 11
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Builder;->clear()Lcom/ibm/icu/util/ULocale$Builder;
const/4 v5, 0x0
:try_start_4
invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LanguageTag;
:try_end_7
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_4 .. :try_end_7} :catch_5b
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtlang(I)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_6a
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;
move-result-object v6
move-object v4, v6
:goto_14
const-string v6, "und"
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6c
const-string v6, ""
:goto_1e
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v6
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariant()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/Set;
move-result-object v2
if-eqz v2, :cond_6e
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_43
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_6e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->getSingleton()C
move-result v6
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->getValue()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v6, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
goto :goto_43
:catch_5b
move-exception v0
new-instance v6, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v8
invoke-direct {v6, v7, v8}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v6
:cond_6a
move-object v4, v1
goto :goto_14
:cond_6c
move-object v6, v4
goto :goto_1e
:cond_6e
const/16 v6, 0x78
invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateUse()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v6, v7}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
return-object p0
.end method
.method public setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 8
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Builder;->clear()Lcom/ibm/icu/util/ULocale$Builder;
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v4
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/ibm/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v4
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/ibm/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v4
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/ibm/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;
move-result-object v0
if-eqz v0, :cond_4c
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_2c
:goto_2c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_4c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Character;
invoke-virtual {v4}, Ljava/lang/Character;->charValue()C
move-result v2
invoke-virtual {p1, v2}, Lcom/ibm/icu/util/ULocale;->getExtension(C)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_2c
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_2c
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
goto :goto_2c
:cond_4c
return-object p0
.end method
.method public setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method
.method public setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
.registers 6
:try_start_0
iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
:try_end_5
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_5} :catch_6
return-object p0
:catch_6
move-exception v1
move-object v0, v1
new-instance v1, Lcom/ibm/icu/util/IllformedLocaleException;
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V
throw v1
.end method