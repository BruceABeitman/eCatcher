.class abstract Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
.super Ljava/lang/Object;
.source "BreakIterator.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
.end method
.method public abstract getAvailableLocales()[Ljava/util/Locale;
.end method
.method public abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.end method
.method public abstract registerInstance(Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/Object;
.end method
.method public abstract unregister(Ljava/lang/Object;)Z
.end method