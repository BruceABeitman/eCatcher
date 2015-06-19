.class public abstract Lcom/ibm/icu/text/NumberFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "NumberFormat.java"
.field public static final CURRENCYSTYLE:I = 0x1
.field public static final FRACTION_FIELD:I = 0x1
.field public static final INTEGERSTYLE:I = 0x4
.field public static final INTEGER_FIELD:I = 0x0
.field public static final ISOCURRENCYSTYLE:I = 0x5
.field public static final NUMBERSTYLE:I = 0x0
.field public static final PERCENTSTYLE:I = 0x2
.field public static final PLURALCURRENCYSTYLE:I = 0x6
.field public static final SCIENTIFICSTYLE:I = 0x3
.field static final currentSerialVersion:I = 0x1
.field private static final doubleCurrencySign:[C = null
.field private static final doubleCurrencyStr:Ljava/lang/String; = null
.field private static final serialVersionUID:J = -0x20094c40ec82f818L
.field private static shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.field private currency:Lcom/ibm/icu/util/Currency;
.field private groupingUsed:Z
.field private maxFractionDigits:B
.field private maxIntegerDigits:B
.field private maximumFractionDigits:I
.field private maximumIntegerDigits:I
.field private minFractionDigits:B
.field private minIntegerDigits:B
.field private minimumFractionDigits:I
.field private minimumIntegerDigits:I
.field private parseIntegerOnly:Z
.field private parseStrict:Z
.field private serialVersionOnStream:I
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x2
new-array v0, v0, [C
fill-array-data v0, :array_12
sput-object v0, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencySign:[C
new-instance v0, Ljava/lang/String;
sget-object v1, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencySign:[C
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
sput-object v0, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;
return-void
:array_12
.array-data 0x2
0xa4t 0x0t
0xa4t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 5
const/16 v3, 0x28
const/4 v2, 0x3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z
iput-byte v3, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B
iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B
iput-byte v2, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B
iput-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B
iput-boolean v1, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z
iput v3, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iput v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iput v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I
return-void
.end method
.method static createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
.registers 8
invoke-static {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
move-result-object v0
new-instance v4, Lcom/ibm/icu/text/DecimalFormatSymbols;
invoke-direct {v4, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V
const/4 v1, 0x1
if-eq p1, v1, :cond_f
const/4 v1, 0x5
if-ne p1, v1, :cond_16
:cond_f
invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_16
move-object v0, v1
:cond_16
const/4 v1, 0x5
if-ne p1, v1, :cond_a0
const-string v1, "\u00a4"
sget-object v2, Lcom/ibm/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_22
invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v0
if-nez v0, :cond_2a
const/4 p0, 0x0
:goto_29
return-object p0
:cond_2a
if-eqz v0, :cond_87
invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z
move-result v2
if-eqz v2, :cond_87
const/4 p1, 0x4
invoke-virtual {v0}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;
move-result-object v2
const-string v0, "/"
invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const-string v1, "/"
invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v1
if-le v1, v0, :cond_81
const/4 p0, 0x0
invoke-virtual {v2, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
add-int/lit8 v0, v0, 0x1
invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v0, v1, 0x1
invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
new-instance v0, Lcom/ibm/icu/util/ULocale;
invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
const-string p0, "SpelloutRules"
invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result p0
if-eqz p0, :cond_9e
const/4 p0, 0x1
:goto_64
move-object p1, v0
move-object v0, v1
:goto_66
new-instance v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-direct {v1, p1, p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V
invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
move-object p0, v1
move-object p1, p0
:goto_70
sget-object p0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {v4, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
sget-object p0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {v4, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object p0
invoke-virtual {p1, v0, p0}, Lcom/ibm/icu/text/NumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
move-object p0, p1
goto :goto_29
:cond_81
move-object p0, p0
move-object v0, v2
move v5, p1
move-object p1, p0
move p0, v5
goto :goto_66
:cond_87
new-instance p0, Lcom/ibm/icu/text/DecimalFormat;
invoke-direct {p0, v1, v4, p1}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
const/4 v0, 0x4
if-ne p1, v0, :cond_9b
const/4 p1, 0x0
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V
const/4 p1, 0x0
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V
const/4 p1, 0x1
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V
:cond_9b
move-object p0, p0
move-object p1, p0
goto :goto_70
:cond_9e
move p0, p1
goto :goto_64
:cond_a0
move-object v1, v0
goto :goto_22
.end method
.method public static getAvailableLocales()[Ljava/util/Locale;
.registers 1
sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v0
goto :goto_a
.end method
.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 1
sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
goto :goto_a
.end method
.method public static final getCurrencyInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getCurrencyInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static final getInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static final getInstance(I)Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0, p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x6
if-le p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "choice should be from NUMBERSTYLE to PLURALCURRENCYSTYLE"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Ljava/util/Locale;I)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0, p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static final getIntegerInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x4
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x4
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getIntegerInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x4
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static final getNumberInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getNumberInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getNumberInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method protected static getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
.registers 6
const/4 v3, 0x3
if-ne p1, v3, :cond_6
const-string v3, "#E0"
:goto_5
return-object v3
:cond_6
const-string v3, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v3, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v3, "NumberPatterns"
invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v3, 0x4
if-ne p1, v3, :cond_1c
const/4 v3, 0x0
move v0, v3
:goto_19
aget-object v3, v1, v0
goto :goto_5
:cond_1c
const/4 v3, 0x5
if-eq p1, v3, :cond_22
const/4 v3, 0x6
if-ne p1, v3, :cond_25
:cond_22
const/4 v3, 0x1
move v0, v3
goto :goto_19
:cond_25
move v0, p1
goto :goto_19
.end method
.method protected static getPattern(Ljava/util/Locale;I)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0, p1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final getPercentInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x2
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getPercentInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static final getScientificInstance()Lcom/ibm/icu/text/NumberFormat;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getScientificInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
.registers 2
const/4 v0, 0x3
invoke-static {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method public static getScientificInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;
.registers 3
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
return-object v0
.end method
.method private static getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
.registers 4
sget-object v2, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
if-nez v2, :cond_12
:try_start_4
const-string v2, "com.ibm.icu.text.NumberFormatServiceShim"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
sput-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
:cond_12
:try_end_12
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_15
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_18
sget-object v2, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
return-object v2
:catch_15
move-exception v2
move-object v1, v2
throw v1
:catch_18
move-exception v2
move-object v1, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 5
const/4 v2, 0x1
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I
if-ge v0, v2, :cond_18
iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iget-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
:cond_18
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
if-gt v0, v1, :cond_2c
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
if-gt v0, v1, :cond_2c
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
if-ltz v0, :cond_2c
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
if-gez v0, :cond_34
:cond_2c
new-instance v0, Ljava/io/InvalidObjectException;
const-string v1, "Digit count range invalid"
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
iput v2, p0, Lcom/ibm/icu/text/NumberFormat;->serialVersionOnStream:I
return-void
.end method
.method public static registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "factory must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getShim()Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Lcom/ibm/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static unregister(Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "registryKey must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
sget-object v0, Lcom/ibm/icu/text/NumberFormat;->shim:Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;
invoke-virtual {v0, p0}, Lcom/ibm/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z
move-result v0
goto :goto_f
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 4
const/16 v1, 0x7f
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
if-le v0, v1, :cond_22
move v0, v1
:goto_7
iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxIntegerDigits:B
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
if-le v0, v1, :cond_26
move v0, v1
:goto_e
iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minIntegerDigits:B
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
if-le v0, v1, :cond_2a
move v0, v1
:goto_15
iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
if-le v0, v1, :cond_2e
move v0, v1
:goto_1c
iput-byte v0, p0, Lcom/ibm/icu/text/NumberFormat;->minFractionDigits:B
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
return-void
:cond_22
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
int-to-byte v0, v0
goto :goto_7
:cond_26
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
int-to-byte v0, v0
goto :goto_e
:cond_2a
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
int-to-byte v0, v0
goto :goto_15
:cond_2e
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
int-to-byte v0, v0
goto :goto_1c
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/NumberFormat;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p1, :cond_6
move v2, v4
:goto_5
return v2
:cond_6
if-ne p0, p1, :cond_a
move v2, v5
goto :goto_5
:cond_a
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_16
move v2, v4
goto :goto_5
:cond_16
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/NumberFormat;
move-object v1, v0
iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
iget v3, v1, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
if-ne v2, v3, :cond_46
iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget v3, v1, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
if-ne v2, v3, :cond_46
iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iget v3, v1, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
if-ne v2, v3, :cond_46
iget v2, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
iget v3, v1, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
if-ne v2, v3, :cond_46
iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z
iget-boolean v3, v1, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z
if-ne v2, v3, :cond_46
iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z
iget-boolean v3, v1, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z
if-ne v2, v3, :cond_46
iget-boolean v2, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z
iget-boolean v3, v1, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z
if-ne v2, v3, :cond_46
move v2, v5
goto :goto_5
:cond_46
move v2, v4
goto :goto_5
.end method
.method public final format(D)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final format(J)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
const/16 v2, 0x13
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public final format(Lcom/ibm/icu/math/BigDecimal;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final format(Lcom/ibm/icu/util/CurrencyAmount;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final format(Ljava/math/BigDecimal;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final format(Ljava/math/BigInteger;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/text/FieldPosition;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public abstract format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 8
invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v2
invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V
:cond_11
invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;
move-result-object v3
invoke-virtual {p0, v3, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
if-nez v1, :cond_1d
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V
:cond_1d
return-object p2
.end method
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
instance-of v0, p1, Ljava/lang/Long;
if-eqz v0, :cond_f
check-cast p1, Ljava/lang/Long;
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
:goto_e
return-object v0
:cond_f
instance-of v0, p1, Ljava/math/BigInteger;
if-eqz v0, :cond_1a
check-cast p1, Ljava/math/BigInteger;
invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
goto :goto_e
:cond_1a
instance-of v0, p1, Ljava/math/BigDecimal;
if-eqz v0, :cond_25
check-cast p1, Ljava/math/BigDecimal;
invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
goto :goto_e
:cond_25
instance-of v0, p1, Lcom/ibm/icu/math/BigDecimal;
if-eqz v0, :cond_30
check-cast p1, Lcom/ibm/icu/math/BigDecimal;
invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
goto :goto_e
:cond_30
instance-of v0, p1, Lcom/ibm/icu/util/CurrencyAmount;
if-eqz v0, :cond_3b
check-cast p1, Lcom/ibm/icu/util/CurrencyAmount;
invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
goto :goto_e
:cond_3b
instance-of v0, p1, Ljava/lang/Number;
if-eqz v0, :cond_4a
check-cast p1, Ljava/lang/Number;
invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
goto :goto_e
:cond_4a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Cannot format given Object as a Number"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method
.method public getCurrency()Lcom/ibm/icu/util/Currency;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;
return-object v0
.end method
.method protected getEffectiveCurrency()Lcom/ibm/icu/util/Currency;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v0
if-nez v0, :cond_16
sget-object v2, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/NumberFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object v1
if-nez v1, :cond_12
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
:cond_12
invoke-static {v1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v0
:cond_16
return-object v0
.end method
.method public getMaximumFractionDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
return v0
.end method
.method public getMaximumIntegerDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
return v0
.end method
.method public getMinimumFractionDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
return v0
.end method
.method public getMinimumIntegerDigits()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
return v0
.end method
.method public getRoundingMode()I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "getRoundingMode must be implemented by the subclass implementation."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
mul-int/lit8 v0, v0, 0x25
iget-byte v1, p0, Lcom/ibm/icu/text/NumberFormat;->maxFractionDigits:B
add-int/2addr v0, v1
return v0
.end method
.method public isGroupingUsed()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z
return v0
.end method
.method public isParseIntegerOnly()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z
return v0
.end method
.method public isParseStrict()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z
return v0
.end method
.method public parse(Ljava/lang/String;)Ljava/lang/Number;
.registers 7
new-instance v0, Ljava/text/ParsePosition;
const/4 v2, 0x0
invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v1
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
if-nez v2, :cond_33
new-instance v2, Ljava/text/ParseException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Unparseable number: \""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x22
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I
move-result v4
invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V
throw v2
:cond_33
return-object v1
.end method
.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method
.method  parseCurrency(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
.registers 6
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
new-instance v1, Lcom/ibm/icu/util/CurrencyAmount;
invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat;->getEffectiveCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V
goto :goto_7
.end method
.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/text/NumberFormat;->currency:Lcom/ibm/icu/util/Currency;
return-void
.end method
.method public setGroupingUsed(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->groupingUsed:Z
return-void
.end method
.method public setMaximumFractionDigits(I)V
.registers 4
const/4 v0, 0x0
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
if-ge v0, v1, :cond_11
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
:cond_11
return-void
.end method
.method public setMaximumIntegerDigits(I)V
.registers 4
const/4 v0, 0x0
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
if-le v0, v1, :cond_11
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
:cond_11
return-void
.end method
.method public setMinimumFractionDigits(I)V
.registers 4
const/4 v0, 0x0
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
if-ge v0, v1, :cond_11
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumFractionDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumFractionDigits:I
:cond_11
return-void
.end method
.method public setMinimumIntegerDigits(I)V
.registers 4
const/4 v0, 0x0
invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iget v1, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
if-le v0, v1, :cond_11
iget v0, p0, Lcom/ibm/icu/text/NumberFormat;->minimumIntegerDigits:I
iput v0, p0, Lcom/ibm/icu/text/NumberFormat;->maximumIntegerDigits:I
:cond_11
return-void
.end method
.method public setParseIntegerOnly(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->parseIntegerOnly:Z
return-void
.end method
.method public setParseStrict(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/text/NumberFormat;->parseStrict:Z
return-void
.end method
.method public setRoundingMode(I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "setRoundingMode must be implemented by the subclass implementation."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method