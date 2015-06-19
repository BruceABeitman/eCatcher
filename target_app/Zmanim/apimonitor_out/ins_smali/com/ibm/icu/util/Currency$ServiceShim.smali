.class abstract Lcom/ibm/icu/util/Currency$ServiceShim;
.super Ljava/lang/Object;
.source "Currency.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
.end method
.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method
.method abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method
.method abstract registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.end method
.method abstract unregister(Ljava/lang/Object;)Z
.end method