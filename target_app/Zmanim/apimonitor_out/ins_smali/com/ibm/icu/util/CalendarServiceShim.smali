.class  Lcom/ibm/icu/util/CalendarServiceShim;
.super Lcom/ibm/icu/util/Calendar$CalendarShim;
.source "CalendarServiceShim.java"
.field private static service:Lcom/ibm/icu/impl/ICULocaleService;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ibm/icu/util/CalendarServiceShim$CalService;
invoke-direct {v0}, Lcom/ibm/icu/util/CalendarServiceShim$CalService;-><init>()V
sput-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar$CalendarShim;-><init>()V
return-void
.end method
.method  createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 8
const/4 v2, 0x1
new-array v0, v2, [Lcom/ibm/icu/util/ULocale;
sget-object v2, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
invoke-virtual {p1, v2}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
sget-object p1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:cond_d
sget-object v2, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v2, p1, v0}, Lcom/ibm/icu/impl/ICULocaleService;->get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/Calendar;
if-nez v1, :cond_23
new-instance v2, Ljava/util/MissingResourceException;
const-string v3, "Unable to construct Calendar"
const-string v4, ""
const-string v5, ""
invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v2
:cond_23
invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/Calendar;
return-object v1
.end method
.method  getAvailableLocales()[Ljava/util/Locale;
.registers 2
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v0
goto :goto_e
.end method
.method  getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 2
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->isDefault()Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
:goto_e
return-object v0
:cond_f
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICULocaleService;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
goto :goto_e
.end method
.method  registerFactory(Lcom/ibm/icu/util/Calendar$CalendarFactory;)Ljava/lang/Object;
.registers 4
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
new-instance v1, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;
invoke-direct {v1, p1}, Lcom/ibm/icu/util/CalendarServiceShim$CalFactory;-><init>(Lcom/ibm/icu/util/Calendar$CalendarFactory;)V
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICULocaleService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;
move-result-object v0
return-object v0
.end method
.method  unregister(Ljava/lang/Object;)Z
.registers 3
sget-object v0, Lcom/ibm/icu/util/CalendarServiceShim;->service:Lcom/ibm/icu/impl/ICULocaleService;
check-cast p1, Lcom/ibm/icu/impl/ICUService$Factory;
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICULocaleService;->unregisterFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Z
move-result v0
return v0
.end method