.class final Lcom/ibm/icu/util/CurrencyServiceShim;
.super Lcom/ibm/icu/util/Currency$ServiceShim;
.source "CurrencyServiceShim.java"
.field static final service:Lcom/ibm/icu/impl/ICULocaleService;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;
invoke-direct {v0}, Lcom/ibm/icu/util/CurrencyServiceShim$CFService;-><init>()V
sput-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ibm/icu/util/Currency$ServiceShim;-><init>()V
return-void
.end method
.method  createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
.registers 6
sget-object v3, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v3}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z
move-result v3
if-eqz v3, :cond_d
invoke-static {p1}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v3
:goto_c
return-object v3
:cond_d
const/4 v3, 0x1
new-array v0, v3, [Lcom/ibm/icu/util/ULocale;
sget-object v3, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v3, p1, v0}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/Currency;
const/4 v3, 0x0
aget-object v2, v0, v3
invoke-virtual {v1, v2, v2}, Lcom/ibm/icu/util/Currency;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
move-object v3, v1
goto :goto_c
.end method
.method  getAvailableLocales()[Ljava/util/Locale;
.registers 2
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v0
goto :goto_e
.end method
.method  getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 2
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
goto :goto_e
.end method
.method  registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.registers 4
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v0
return-object v0
.end method
.method  unregister(Ljava/lang/Object;)Z
.registers 3
sget-object v0, Lcom/ibm/icu/util/CurrencyServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z
move-result v0
return v0
.end method