.class public Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"
.field protected final bundleName:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V
iput-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;
return-void
.end method
.method protected getSupportedIDs()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", bundle: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public updateVisibleIDs(Ljava/util/Map;)V
.registers 6
iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;)Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_a
:cond_1a
return-void
.end method