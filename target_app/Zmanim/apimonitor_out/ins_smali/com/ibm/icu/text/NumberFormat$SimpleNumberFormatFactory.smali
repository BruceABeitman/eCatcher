.class public abstract Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;
.super Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;
.source "NumberFormat.java"
.field final localeNames:Ljava/util/Set;
.field final visible:Z
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Lcom/ibm/icu/util/ULocale;Z)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Z)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;-><init>()V
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;
iput-boolean p2, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z
return-void
.end method
.method public constructor <init>(Ljava/util/Locale;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V
return-void
.end method
.method public constructor <init>(Ljava/util/Locale;Z)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;-><init>()V
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;
iput-boolean p2, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z
return-void
.end method
.method public final getSupportedLocaleNames()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;
return-object v0
.end method
.method public final visible()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z
return v0
.end method