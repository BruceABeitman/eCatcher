.class public Lcom/ibm/icu/impl/ICULocaleService;
.super Lcom/ibm/icu/impl/ICUService;
.source "ICULocaleService.java"
.field private fallbackLocale:Lcom/ibm/icu/util/ULocale;
.field private fallbackLocaleName:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ibm/icu/impl/ICUService;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-result-object v0
return-object v0
.end method
.method public createKey(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUService$Key;
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-result-object v0
return-object v0
.end method
.method public createKey(Ljava/lang/String;I)Lcom/ibm/icu/impl/ICUService$Key;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-result-object v0
return-object v0
.end method
.method public get(Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.registers 4
const/4 v0, -0x1
const/4 v1, 0x0
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public get(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.registers 11
const/4 v6, 0x0
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->createKey(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Key;
move-result-object v0
if-nez p3, :cond_c
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;)Ljava/lang/Object;
move-result-object v4
:goto_b
return-object v4
:cond_c
const/4 v4, 0x1
new-array v3, v4, [Ljava/lang/String;
invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/impl/ICULocaleService;->getKey(Lcom/ibm/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_32
aget-object v4, v3, v6
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_29
aget-object v4, v3, v6
add-int/lit8 v5, v1, 0x1
invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v6
:cond_29
new-instance v4, Lcom/ibm/icu/util/ULocale;
aget-object v5, v3, v6
invoke-direct {v4, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
aput-object v4, p3, v6
:cond_32
move-object v4, v2
goto :goto_b
.end method
.method public get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.registers 4
const/4 v0, -0x1
invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;I[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getAvailableLocales()[Ljava/util/Locale;
.registers 8
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v5}, Ljava/util/Set;->size()I
move-result v6
new-array v2, v6, [Ljava/util/Locale;
const/4 v3, 0x0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_25
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;
move-result-object v1
add-int/lit8 v4, v3, 0x1
aput-object v1, v2, v3
move v3, v4
goto :goto_f
:cond_25
return-object v2
.end method
.method public getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 7
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v4}, Ljava/util/Set;->size()I
move-result v5
new-array v1, v5, [Lcom/ibm/icu/util/ULocale;
const/4 v2, 0x0
:goto_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_26
add-int/lit8 v3, v2, 0x1
new-instance v5, Lcom/ibm/icu/util/ULocale;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-direct {v5, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
aput-object v5, v1, v2
move v2, v3
goto :goto_f
:cond_26
return-object v1
.end method
.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ICUService$Factory;
.registers 5
const/4 v0, -0x1
const/4 v1, 0x1
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v0
return-object v0
.end method
.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/impl/ICUService$Factory;
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v0
return-object v0
.end method
.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;
.registers 7
new-instance v0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)V
invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v1
return-object v1
.end method
.method public registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/ICUService$Factory;
.registers 5
const/4 v0, -0x1
invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v0
return-object v0
.end method
.method public validateFallbackLocale()Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;
if-eq v0, v1, :cond_19
monitor-enter p0
:try_start_9
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;
if-eq v0, v1, :cond_18
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService;->clearServiceCache()V
:cond_18
monitor-exit p0
:cond_19
:try_end_19
.catchall {:try_start_9 .. :try_end_19} :catchall_1c
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;
return-object v1
:catchall_1c
move-exception v1
:try_start_1d
monitor-exit p0
:try_end_1e
.catchall {:try_start_1d .. :try_end_1e} :catchall_1c
throw v1
.end method