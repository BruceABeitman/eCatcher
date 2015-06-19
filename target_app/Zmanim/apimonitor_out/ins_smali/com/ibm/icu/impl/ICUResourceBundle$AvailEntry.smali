.class final Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"
.field private fullNameSet:Ljava/util/Set;
.field private locales:[Ljava/util/Locale;
.field private nameSet:Ljava/util/Set;
.field private prefix:Ljava/lang/String;
.field private ulocales:[Lcom/ibm/icu/util/ULocale;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;
return-void
.end method
.method  getFullLocaleNameSet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;
#calls: Lcom/ibm/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$300(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;
:cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;
return-object v0
.end method
.method  getLocaleList()[Ljava/util/Locale;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;
#calls: Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleList(Ljava/lang/String;)[Ljava/util/Locale;
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$100(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;
:cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;
return-object v0
.end method
.method  getLocaleNameSet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;
#calls: Lcom/ibm/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$200(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;
:cond_c
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;
return-object v0
.end method
.method  getULocaleList()[Lcom/ibm/icu/util/ULocale;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Lcom/ibm/icu/util/ULocale;
if-nez v0, :cond_e
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;
sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
#calls: Lcom/ibm/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->access$000(Ljava/lang/String;Ljava/lang/ClassLoader;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Lcom/ibm/icu/util/ULocale;
:cond_e
iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Lcom/ibm/icu/util/ULocale;
return-object v0
.end method