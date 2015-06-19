.class public final Lcom/ibm/icu/util/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"
.field public static final ALT_QUOTATION_END:I = 0x3
.field public static final ALT_QUOTATION_START:I = 0x2
.field public static final DELIMITER_COUNT:I = 0x4
.field public static final ES_AUXILIARY:I = 0x1
.field public static final ES_COUNT:I = 0x2
.field public static final ES_STANDARD:I = 0x0
.field private static final EXEMPLAR_CHARS:Ljava/lang/String; = "ExemplarCharacters"
.field private static final LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"
.field private static final MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"
.field private static final PAPER_SIZE:Ljava/lang/String; = "PaperSize"
.field private static final PATTERN:Ljava/lang/String; = "pattern"
.field public static final QUOTATION_END:I = 0x1
.field public static final QUOTATION_START:I = 0x0
.field private static final SEPARATOR:Ljava/lang/String; = "separator"
.field private bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
.field private noSubstitute:Z
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getExemplarSet(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/UnicodeSet;
.registers 6
const-string v2, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v2, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v2, "ExemplarCharacters"
invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/ibm/icu/text/UnicodeSet;
or-int/lit8 v3, p1, 0x1
invoke-direct {v2, v1, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
return-object v2
.end method
.method public static final getInstance()Lcom/ibm/icu/util/LocaleData;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/LocaleData;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;
move-result-object v0
return-object v0
.end method
.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;
.registers 3
new-instance v0, Lcom/ibm/icu/util/LocaleData;
invoke-direct {v0}, Lcom/ibm/icu/util/LocaleData;-><init>()V
const-string v1, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
iput-object p0, v0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z
return-object v0
.end method
.method public static final getMeasurementSystem(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
.registers 5
const-string v3, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v3, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "MeasurementSystem"
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I
move-result v2
sget-object v3, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
#calls: Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->equals(I)Z
invoke-static {v3, v2}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->access$000(Lcom/ibm/icu/util/LocaleData$MeasurementSystem;I)Z
move-result v3
if-eqz v3, :cond_1d
sget-object v3, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
:goto_1c
return-object v3
:cond_1d
sget-object v3, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
#calls: Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->equals(I)Z
invoke-static {v3, v2}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->access$000(Lcom/ibm/icu/util/LocaleData$MeasurementSystem;I)Z
move-result v3
if-eqz v3, :cond_28
sget-object v3, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
goto :goto_1c
:cond_28
const/4 v3, 0x0
goto :goto_1c
.end method
.method public static final getPaperSize(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData$PaperSize;
.registers 8
const-string v3, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v3, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "PaperSize"
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
move-result-object v2
new-instance v3, Lcom/ibm/icu/util/LocaleData$PaperSize;
const/4 v4, 0x0
aget v4, v2, v4
const/4 v5, 0x1
aget v5, v2, v5
const/4 v6, 0x0
invoke-direct {v3, v4, v5, v6}, Lcom/ibm/icu/util/LocaleData$PaperSize;-><init>(IILcom/ibm/icu/util/LocaleData$1;)V
return-object v3
.end method
.method public getDelimiter(I)Ljava/lang/String;
.registers 7
const/4 v4, 0x2
const/4 v2, 0x4
new-array v0, v2, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "quotationStart"
aput-object v3, v0, v2
const/4 v2, 0x1
const-string v3, "quotationEnd"
aput-object v3, v0, v2
const-string v2, "alternateQuotationStart"
aput-object v2, v0, v4
const/4 v2, 0x3
const-string v3, "alternateQuotationEnd"
aput-object v3, v0, v2
iget-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "delimiters"
invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
aget-object v3, v0, p1
invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
iget-boolean v2, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z
if-eqz v2, :cond_33
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLoadingStatus()I
move-result v2
if-ne v2, v4, :cond_33
const/4 v2, 0x0
:goto_32
return-object v2
:cond_33
new-instance v2, Ljava/lang/String;
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_32
.end method
.method public getExemplarSet(II)Lcom/ibm/icu/text/UnicodeSet;
.registers 10
const/4 v5, 0x2
const/4 v6, 0x1
new-array v1, v5, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ExemplarCharacters"
aput-object v4, v1, v3
const-string v3, "AuxExemplarCharacters"
aput-object v3, v1, v6
:try_start_d
iget-object v3, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
aget-object v4, v1, p2
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;
iget-boolean v3, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z
if-eqz v3, :cond_23
invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLoadingStatus()I
move-result v3
if-ne v3, v5, :cond_23
const/4 v3, 0x0
:goto_22
return-object v3
:cond_23
new-instance v3, Lcom/ibm/icu/text/UnicodeSet;
invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v4
or-int/lit8 v5, p1, 0x1
invoke-direct {v3, v4, v5}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
:try_end_2e
.catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_2e} :catch_2f
goto :goto_22
:catch_2f
move-exception v3
move-object v0, v3
if-ne p2, v6, :cond_39
new-instance v3, Lcom/ibm/icu/text/UnicodeSet;
invoke-direct {v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V
goto :goto_22
:cond_39
throw v0
.end method
.method public getLocaleDisplayPattern()Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v2, :cond_12
const-string v2, "com/ibm/icu/impl/data/icudt42b"
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v3
invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;
iput-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
:cond_12
iget-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "localeDisplayPattern"
invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v2, "pattern"
invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getLocaleSeparator()Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v2, :cond_12
const-string v2, "com/ibm/icu/impl/data/icudt42b"
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v3
invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;
iput-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
:cond_12
iget-object v2, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "localeDisplayPattern"
invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v2, "separator"
invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getNoSubstitute()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z
return v0
.end method
.method public setNoSubstitute(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z
return-void
.end method