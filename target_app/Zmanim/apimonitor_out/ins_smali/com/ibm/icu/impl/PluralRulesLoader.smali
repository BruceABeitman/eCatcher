.class public Lcom/ibm/icu/impl/PluralRulesLoader;
.super Ljava/lang/Object;
.source "PluralRulesLoader.java"
.field public static final loader:Lcom/ibm/icu/impl/PluralRulesLoader;
.field private localeIdToRulesId:Ljava/util/Map;
.field private rulesIdToEquivalentULocale:Ljava/util/Map;
.field private final rulesIdToRules:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/impl/PluralRulesLoader;
invoke-direct {v0}, Lcom/ibm/icu/impl/PluralRulesLoader;-><init>()V
sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;
return-void
.end method
.method private checkBuildRulesIdMaps()V
.registers 10
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToRulesId:Ljava/util/Map;
if-nez v7, :cond_5d
:try_start_4
invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
const-string v7, "locales"
invoke-virtual {v5, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
new-instance v7, Ljava/util/TreeMap;
invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V
iput-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToRulesId:Ljava/util/Map;
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
iput-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
const/4 v2, 0x0
:goto_1d
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v7
if-ge v2, v7, :cond_5d
invoke-virtual {v4, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToRulesId:Ljava/util/Map;
invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_4a
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
new-instance v8, Lcom/ibm/icu/util/ULocale;
invoke-direct {v8, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_4a
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4a} :catch_4d
:cond_4a
add-int/lit8 v2, v2, 0x1
goto :goto_1d
:catch_4d
move-exception v7
move-object v1, v7
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
iput-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToRulesId:Ljava/util/Map;
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
iput-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
:cond_5d
return-void
.end method
.method private getLocaleIdToRulesIdMap()Ljava/util/Map;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V
iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToRulesId:Ljava/util/Map;
return-object v0
.end method
.method private getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V
iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;
return-object v0
.end method
.method public forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
.registers 5
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_10
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_13
:cond_10
sget-object v2, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;
:goto_12
return-object v2
:cond_13
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
move-result-object v0
if-nez v0, :cond_1b
sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;
:cond_1b
move-object v2, v0
goto :goto_12
.end method
.method public getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap()Ljava/util/Map;
move-result-object v5
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v5
new-array v2, v5, [Lcom/ibm/icu/util/ULocale;
const/4 v3, 0x0
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_13
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_29
add-int/lit8 v4, v3, 0x1
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
move-result-object v5
aput-object v5, v2, v3
move v3, v4
goto :goto_13
:cond_29
return-object v2
.end method
.method public getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
.registers 9
if-eqz p2, :cond_18
array-length v4, p2
if-lez v4, :cond_18
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap()Ljava/util/Map;
move-result-object v0
const/4 v4, 0x0
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
aput-boolean v5, p2, v4
:cond_18
invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_28
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_2b
:cond_28
sget-object v4, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:goto_2a
return-object v4
:cond_2b
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
move-result-object v4
invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/ULocale;
if-nez v2, :cond_3a
sget-object v4, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
goto :goto_2a
:cond_3a
move-object v4, v2
goto :goto_2a
.end method
.method public getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
.registers 5
const-string v0, "com/ibm/icu/impl/data/icudt42b"
const-string v1, "plurals"
sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
const/4 v3, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
return-object v0
.end method
.method public getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
.registers 10
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;
invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/text/PluralRules;
if-nez v3, :cond_52
:try_start_a
invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
const-string v7, "rules"
invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v4, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
:goto_1e
invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v7
if-ge v1, v7, :cond_45
invoke-virtual {v6, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
if-lez v1, :cond_2f
const-string v7, "; "
invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_2f
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v7, ": "
invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_45
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
:try_end_4c
.catch Ljava/text/ParseException; {:try_start_a .. :try_end_4c} :catch_55
.catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_4c} :catch_53
move-result-object v3
:goto_4d
iget-object v7, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;
invoke-interface {v7, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_52
return-object v3
:catch_53
move-exception v7
goto :goto_4d
:catch_55
move-exception v7
goto :goto_4d
.end method
.method public getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 7
invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap()Ljava/util/Map;
move-result-object v0
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
:goto_d
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
if-nez v3, :cond_1e
const-string v4, "_"
invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
const/4 v4, -0x1
if-ne v1, v4, :cond_1f
:cond_1e
return-object v3
:cond_1f
const/4 v4, 0x0
invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
goto :goto_d
.end method