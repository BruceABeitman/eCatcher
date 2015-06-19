.class public abstract Lcom/ibm/icu/text/Collator$CollatorFactory;
.super Ljava/lang/Object;
.source "Collator.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createCollator(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
.registers 3
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->createCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
move-result-object v0
return-object v0
.end method
.method public createCollator(Ljava/util/Locale;)Lcom/ibm/icu/text/Collator;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->createCollator(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
move-result-object v0
return-object v0
.end method
.method public getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->visible()Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {p0}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;
move-result-object v1
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
invoke-virtual {p1, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v2
:goto_18
return-object v2
:cond_19
const/4 v2, 0x0
goto :goto_18
.end method
.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/Collator$CollatorFactory;->getDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract getSupportedLocaleIDs()Ljava/util/Set;
.end method
.method public visible()Z
.registers 2
const/4 v0, 0x1
return v0
.end method