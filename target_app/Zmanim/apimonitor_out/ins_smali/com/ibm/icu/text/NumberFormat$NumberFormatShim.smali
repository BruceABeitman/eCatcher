.class abstract Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.super Ljava/lang/Object;
.source "NumberFormat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
.end method
.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method
.method abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method
.method abstract registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
.end method
.method abstract unregister(Ljava/lang/Object;)Z
.end method