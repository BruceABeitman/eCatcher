.class public Lcom/ibm/icu/util/Currency;
.super Lcom/ibm/icu/util/MeasureUnit;
.source "Currency.java"
.implements Ljava/io/Serializable;
.field private static CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
.field private static final DEBUG:Z = false
.field private static final EUR_STR:Ljava/lang/String; = "EUR"
.field private static final LAST_RESORT_DATA:[I = null
.field public static final LONG_NAME:I = 0x1
.field public static final PLURAL_LONG_NAME:I = 0x2
.field private static final POW10:[I = null
.field public static final SYMBOL_NAME:I = 0x0
.field private static final serialVersionUID:J = -0x510bc147b5e8c814L
.field private static shim:Lcom/ibm/icu/util/Currency$ServiceShim;
.field private actualLocale:Lcom/ibm/icu/util/ULocale;
.field private isoCode:Ljava/lang/String;
.field private validLocale:Lcom/ibm/icu/util/ULocale;
.method static constructor <clinit>()V
.registers 1
const-string v0, "currency"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/ibm/icu/util/Currency;->DEBUG:Z
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;
const/4 v0, 0x2
new-array v0, v0, [I
fill-array-data v0, :array_22
sput-object v0, Lcom/ibm/icu/util/Currency;->LAST_RESORT_DATA:[I
const/16 v0, 0xa
new-array v0, v0, [I
fill-array-data v0, :array_2a
sput-object v0, Lcom/ibm/icu/util/Currency;->POW10:[I
return-void
nop
:array_2a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x64t 0x0t 0x0t 0x0t
0xe8t 0x3t 0x0t 0x0t
0x10t 0x27t 0x0t 0x0t
0xa0t 0x86t 0x1t 0x0t
0x40t 0x42t 0xft 0x0t
0x80t 0x96t 0x98t 0x0t
0x0t 0xe1t 0xf5t 0x5t
0x0t 0xcat 0x9at 0x3bt
.end array-data
:array_22
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
return-void
.end method
.method static createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
.registers 14
const/4 v12, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;
move-result-object v8
const-string v9, "PREEURO"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
const-string v9, "EURO"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
const-string v9, "com/ibm/icu/impl/data/icudt42b"
const-string v10, "supplementalData"
sget-object v11, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v9, v10, v11}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez v0, :cond_25
move-object v9, v12
:goto_24
return-object v9
:cond_25
:try_start_25
const-string v9, "CurrencyMap"
invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
const/4 v5, 0x0
invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
const/4 v9, 0x0
invoke-virtual {v3, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
const-string v9, "id"
invoke-virtual {v4, v9}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v7, :cond_5b
const-string v9, "EUR"
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_5b
const/4 v9, 0x1
invoke-virtual {v3, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
const-string v9, "id"
invoke-virtual {v4, v9}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
:goto_50
:cond_50
if-eqz v5, :cond_59
new-instance v9, Lcom/ibm/icu/util/Currency;
invoke-direct {v9, v5}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V
goto :goto_24
:catch_58
move-exception v9
:cond_59
move-object v9, v12
goto :goto_24
:cond_5b
if-eqz v6, :cond_50
const-string v5, "EUR"
:try_end_5f
.catch Ljava/util/MissingResourceException; {:try_start_25 .. :try_end_5f} :catch_58
goto :goto_50
.end method
.method private findData()[I
.registers 7
:try_start_0
const-string v3, "com/ibm/icu/impl/data/icudt42b"
const-string v4, "supplementalData"
sget-object v5, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v3, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
const-string v3, "CurrencyMeta"
invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
iget-object v3, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
move-result-object v1
if-nez v1, :cond_26
const-string v3, "DEFAULT"
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
move-result-object v1
:cond_26
if-eqz v1, :cond_2f
array-length v3, v1
:try_end_29
.catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_29} :catch_2e
const/4 v4, 0x2
if-lt v3, v4, :cond_2f
move-object v3, v1
:goto_2d
return-object v3
:catch_2e
move-exception v3
:cond_2f
sget-object v3, Lcom/ibm/icu/util/Currency;->LAST_RESORT_DATA:[I
goto :goto_2d
.end method
.method public static getAvailableCurrencyCodes(Lcom/ibm/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
.registers 16
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v2
const-wide v8, 0xffffffffL
new-instance p1, Ljava/util/Vector;
invoke-direct {p1}, Ljava/util/Vector;-><init>()V
const-string p0, "com/ibm/icu/impl/data/icudt42b"
const-string v1, "supplementalData"
sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {p0, v1, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
if-nez p0, :cond_22
const/4 p0, 0x0
:goto_21
return-object p0
:cond_22
:try_start_22
const-string v1, "CurrencyMap"
invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
const/4 v0, 0x0
move v7, v0
:goto_2e
invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v0
if-ge v7, v0, :cond_93
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
const/4 v1, 0x0
const-string v1, "id"
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-wide/16 v4, 0x0
const-string v4, "from"
invoke-virtual {v0, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
move-result-object v4
const/4 v5, 0x0
aget v5, v4, v5
int-to-long v5, v5
const/16 v10, 0x20
shl-long/2addr v5, v10
const/4 v10, 0x1
aget v4, v4, v10
int-to-long v10, v4
and-long/2addr v10, v8
or-long v4, v5, v10
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v6
const/4 v10, 0x2
if-le v6, v10, :cond_88
const-wide/16 v10, 0x0
const-string v6, "to"
invoke-virtual {v0, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I
move-result-object v0
const/4 v6, 0x0
aget v6, v0, v6
int-to-long v10, v6
const/16 v6, 0x20
shl-long/2addr v10, v6
const/4 v6, 0x1
aget v0, v0, v6
int-to-long v12, v0
and-long/2addr v12, v8
or-long/2addr v10, v12
cmp-long v0, v4, v2
if-gtz v0, :cond_84
cmp-long v0, v2, v10
if-gez v0, :cond_84
invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_84
:goto_84
add-int/lit8 v0, v7, 0x1
move v7, v0
goto :goto_2e
:cond_88
cmp-long v0, v4, v2
if-gtz v0, :cond_84
invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_84
:catch_90
move-exception p0
:cond_91
const/4 p0, 0x0
goto :goto_21
:cond_93
invoke-virtual {p1}, Ljava/util/Vector;->trimToSize()V
invoke-virtual {p1}, Ljava/util/Vector;->size()I
move-result p0
if-eqz p0, :cond_91
const/4 p0, 0x0
new-array p0, p0, [Ljava/lang/String;
invoke-virtual {p1, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
:try_end_a7
.catch Ljava/util/MissingResourceException; {:try_start_22 .. :try_end_a7} :catch_90
goto/16 :goto_21
.end method
.method public static getAvailableLocales()[Ljava/util/Locale;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
invoke-virtual {v0}, Lcom/ibm/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v0
goto :goto_a
.end method
.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
invoke-virtual {v0}, Lcom/ibm/icu/util/Currency$ServiceShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
goto :goto_a
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
.registers 3
const-string v1, "currency"
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d
invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
move-result-object v1
:goto_c
return-object v1
:cond_d
sget-object v1, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
if-nez v1, :cond_16
invoke-static {p0}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v1
goto :goto_c
:cond_16
sget-object v1, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
invoke-virtual {v1, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v1
goto :goto_c
.end method
.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;
.registers 6
const/4 v4, 0x3
if-nez p0, :cond_b
new-instance v3, Ljava/lang/NullPointerException;
const-string v4, "The input currency code is null."
invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v3
:cond_b
const/4 v2, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-eq v3, v4, :cond_1d
const/4 v2, 0x0
:cond_13
:goto_13
if-nez v2, :cond_39
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "The input currency code is not 3-letter alphabetic code."
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1d
const/4 v1, 0x0
:goto_1e
if-ge v1, v4, :cond_13
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v3, 0x41
if-lt v0, v3, :cond_34
const/16 v3, 0x5a
if-le v0, v3, :cond_30
const/16 v3, 0x61
if-lt v0, v3, :cond_34
:cond_30
const/16 v3, 0x7a
if-le v0, v3, :cond_36
:cond_34
const/4 v2, 0x0
goto :goto_13
:cond_36
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_39
new-instance v3, Lcom/ibm/icu/util/Currency;
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V
return-object v3
.end method
.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/Currency;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v0
return-object v0
.end method
.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
.registers 15
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_ce
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
move-result-object p1
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object p1
move-object v8, p1
:goto_13
new-instance v10, Ljava/util/LinkedList;
invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V
new-instance v7, Ljava/util/LinkedList;
invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V
const-string p1, "com/ibm/icu/impl/data/icudt42b"
const-string v0, "supplementalData"
invoke-static {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
const-string v0, "CurrencyMap"
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;
move-result-object v6
const/4 v2, 0x0
:cond_30
invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_8e
if-nez v2, :cond_8e
invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_46
if-nez p2, :cond_30
:cond_46
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v9
const/4 v0, 0x0
move v4, v0
:goto_4c
invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v0
if-ge v4, v0, :cond_30
invoke-virtual {v9, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getType()I
move-result v0
const/4 v3, 0x2
if-eq v0, v3, :cond_61
:goto_5d
:cond_5d
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_4c
:cond_61
const-string v0, "id"
invoke-virtual {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
:try_start_68
const-string v11, "to"
invoke-virtual {v1, v11}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_6d
.catch Ljava/util/MissingResourceException; {:try_start_68 .. :try_end_6d} :catch_7f
move-result-object v1
if-eqz v1, :cond_cc
const/4 v1, 0x1
:goto_71
if-eqz v5, :cond_82
if-nez v1, :cond_82
invoke-virtual {v10, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_82
invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_5d
:catch_7f
move-exception v1
move v1, v3
goto :goto_71
:cond_82
invoke-virtual {v7, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5d
if-nez p2, :cond_5d
invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_5d
:cond_8e
if-eqz p2, :cond_a3
invoke-virtual {v10}, Ljava/util/LinkedList;->size()I
move-result p1
if-nez p1, :cond_bd
new-instance p1, Lcom/ibm/icu/util/ULocale;
const-string p2, "und"
invoke-direct {p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
const/4 p2, 0x1
invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/Currency;->getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
move-result-object p0
:goto_a2
return-object p0
:cond_a3
invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object p1
:goto_a7
:cond_a7
invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
move-result p0
if-eqz p0, :cond_bd
invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-virtual {v10, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result p2
if-nez p2, :cond_a7
invoke-virtual {v10, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_a7
:cond_bd
invoke-virtual {v10}, Ljava/util/LinkedList;->size()I
move-result p0
new-array p0, p0, [Ljava/lang/String;
invoke-virtual {v10, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
goto :goto_a2
:cond_cc
move v1, v3
goto :goto_71
:cond_ce
move-object v8, v0
goto/16 :goto_13
.end method
.method private static getShim()Lcom/ibm/icu/util/Currency$ServiceShim;
.registers 4
sget-object v2, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
if-nez v2, :cond_12
:try_start_4
const-string v2, "com.ibm.icu.util.CurrencyServiceShim"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Currency$ServiceShim;
sput-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
:cond_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
sget-object v2, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
return-object v2
:catch_15
move-exception v2
move-object v1, v2
sget-boolean v2, Lcom/ibm/icu/util/Currency;->DEBUG:Z
if-eqz v2, :cond_1e
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:cond_1e
new-instance v2, Ljava/lang/RuntimeException;
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static parse(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
.registers 12
sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
if-nez v0, :cond_2a
new-instance v0, Lcom/ibm/icu/impl/TextTrieMap;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V
new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
invoke-static {p0, v2}, Lcom/ibm/icu/util/Currency;->setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/Vector;)V
sget-object v0, Lcom/ibm/icu/util/Currency;->CURRENCY_NAME_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v0, p0, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
move-object v0, v2
:cond_2a
const/4 v3, 0x0
const/4 v2, 0x0
const/4 p0, 0x1
invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;
new-instance v1, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;
const/4 v4, 0x0
invoke-direct {v1, v4}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>(Lcom/ibm/icu/util/Currency$1;)V
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
invoke-virtual {p0, p1, v4, v1}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getMatchedCurrencyNames()Ljava/util/List;
move-result-object v5
if-eqz v5, :cond_e0
invoke-interface {v5}, Ljava/util/List;->size()I
move-result p0
if-eqz p0, :cond_e0
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move v6, v3
move-object v3, v2
:goto_52
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result p0
if-eqz p0, :cond_75
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$100(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object v2
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getCurrencyString()Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$200(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
if-le v7, v6, :cond_dd
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
move-object p0, v2
move v2, v3
:goto_72
move-object v3, p0
move v6, v2
goto :goto_52
:cond_75
move-object v2, v3
move v4, v6
:goto_77
const/4 p0, 0x1
if-eq p2, p0, :cond_d8
const/4 p0, 0x0
invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/impl/TextTrieMap;
new-instance p2, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;
const/4 v0, 0x0
invoke-direct {p2, v0}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>(Lcom/ibm/icu/util/Currency$1;)V
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v0
invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/String;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
invoke-virtual {p2}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->getMatchedCurrencyNames()Ljava/util/List;
move-result-object v3
if-eqz v3, :cond_d3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result p0
if-eqz p0, :cond_d3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
move-object v0, v2
move v2, v4
:goto_a0
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result p0
if-eqz p0, :cond_c3
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$100(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object p1
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getCurrencyString()Ljava/lang/String;
invoke-static {p0}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$200(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-le v4, v2, :cond_d0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
move-object p0, p1
move p1, v0
:goto_c0
move-object v0, p0
move v2, p1
goto :goto_a0
:cond_c3
move-object p0, p2
move-object p1, v0
move-object p2, v3
move v0, v2
:goto_c7
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result p0
add-int/2addr p0, v0
invoke-virtual {p3, p0}, Ljava/text/ParsePosition;->setIndex(I)V
return-object p1
:cond_d0
move-object p0, v0
move p1, v2
goto :goto_c0
:cond_d3
move-object p0, p2
move-object p1, v2
move v0, v4
move-object p2, v3
goto :goto_c7
:cond_d8
move-object p2, v5
move-object p0, v1
move-object p1, v2
move v0, v4
goto :goto_c7
:cond_dd
move-object p0, v3
move v2, v6
goto :goto_72
:cond_e0
move v4, v3
goto :goto_77
.end method
.method public static registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/Currency;->getShim()Lcom/ibm/icu/util/Currency$ServiceShim;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/util/Currency$ServiceShim;->registerInstance(Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/util/ULocale;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private static setupCurrencyTrieVec(Lcom/ibm/icu/util/ULocale;Ljava/util/Vector;)V
.registers 15
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/ibm/icu/impl/TextTrieMap;
const/4 v0, 0x1
invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/ibm/icu/impl/TextTrieMap;
new-instance v10, Ljava/util/HashSet;
invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
move-object p1, p0
move-object v7, p1
:goto_15
if-eqz v7, :cond_b3
const-string p1, "com/ibm/icu/impl/data/icudt42b"
invoke-static {p1, v7}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
:try_start_1d
const-string v0, "Currencies"
invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
const/4 p1, 0x0
move v2, p1
:goto_25
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result p1
if-ge v2, p1, :cond_ac
invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object p1
invoke-virtual {v10, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9d
new-instance v3, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
invoke-direct {v3, p1, p1}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8, p1, v3}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v0, 0x0
invoke-virtual {v4, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v0
const/4 v6, 0x1
if-le v0, v6, :cond_a1
const/4 v0, 0x0
invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v6, 0x3d
if-ne v0, v6, :cond_a1
const/4 v0, 0x1
invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v6, 0x3d
if-eq v0, v6, :cond_a1
const/4 v0, 0x1
invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
new-instance v0, Ljava/text/ChoiceFormat;
invoke-direct {v0, v5}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/text/ChoiceFormat;->getFormats()[Ljava/lang/Object;
move-result-object v6
const/4 v0, 0x0
move v12, v0
move-object v0, v3
move v3, v12
:goto_71
array-length v11, v6
if-ge v3, v11, :cond_87
new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
aget-object v11, v6, v3
check-cast v11, Ljava/lang/String;
invoke-direct {v0, p1, v11}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aget-object v11, v6, v3
check-cast v11, Ljava/lang/String;
invoke-virtual {v8, v11, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
add-int/lit8 v3, v3, 0x1
goto :goto_71
:cond_87
move-object v3, v5
:goto_88
new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
const/4 v3, 0x1
invoke-virtual {v4, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p1, v3}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x1
invoke-virtual {v4, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v9, v3, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {v10, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_9d
add-int/lit8 p1, v2, 0x1
move v2, p1
goto :goto_25
:cond_a1
new-instance v0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
invoke-direct {v0, p1, v5}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8, v5, v0}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_a9
.catch Ljava/util/MissingResourceException; {:try_start_1d .. :try_end_a9} :catch_ab
move-object v3, v5
goto :goto_88
:catch_ab
move-exception p1
:cond_ac
invoke-virtual {v7}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;
move-result-object p1
move-object v7, p1
goto/16 :goto_15
:cond_b3
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
move-object p0, p0
move-object v5, p0
:goto_ba
if-eqz v5, :cond_129
const-string p0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {p0, v5}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p0
:try_start_c2
const-string p1, "CurrencyPlurals"
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
const/4 p0, 0x0
move v1, p0
:goto_ca
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result p0
if-ge v1, p0, :cond_123
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object p0
invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/util/HashSet;
if-nez p1, :cond_e8
new-instance p1, Ljava/util/HashSet;
invoke-direct {p1}, Ljava/util/HashSet;-><init>()V
invoke-virtual {v7, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_e8
move-object v6, p1
const/4 p1, 0x0
move v4, p1
:goto_eb
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result p1
if-ge v4, p1, :cond_11e
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p1
invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object p1
invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_11a
new-instance v2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v8
invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v8
invoke-direct {v2, p0, v8}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v8
invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8, v2}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_11a
:try_end_11a
.catch Ljava/util/MissingResourceException; {:try_start_c2 .. :try_end_11a} :catch_122
add-int/lit8 p1, v4, 0x1
move v4, p1
goto :goto_eb
:cond_11e
add-int/lit8 p0, v1, 0x1
move v1, p0
goto :goto_ca
:catch_122
move-exception p0
:cond_123
invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;
move-result-object p0
move-object v5, p0
goto :goto_ba
:cond_129
return-void
.end method
.method public static unregister(Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "registryKey must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
sget-object v0, Lcom/ibm/icu/util/Currency;->shim:Lcom/ibm/icu/util/Currency$ServiceShim;
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z
move-result v0
goto :goto_f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x0
if-nez p1, :cond_5
move v3, v5
:goto_4
return v3
:cond_5
if-ne p1, p0, :cond_9
const/4 v3, 0x1
goto :goto_4
:try_start_9
:cond_9
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/Currency;
move-object v1, v0
iget-object v3, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
iget-object v4, v1, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_14
.catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_16
move-result v3
goto :goto_4
:catch_16
move-exception v3
move-object v2, v3
move v3, v5
goto :goto_4
.end method
.method public getCurrencyCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
return-object v0
.end method
.method public getDefaultFractionDigits()I
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/util/Currency;->findData()[I
move-result-object v0
const/4 v1, 0x0
aget v0, v0, v1
return v0
.end method
.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
.registers 4
sget-object v1, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
if-ne p1, v1, :cond_c
iget-object v1, p0, Lcom/ibm/icu/util/Currency;->actualLocale:Lcom/ibm/icu/util/ULocale;
move-object v0, v1
:goto_7
if-nez v0, :cond_10
sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:goto_b
return-object v1
:cond_c
iget-object v1, p0, Lcom/ibm/icu/util/Currency;->validLocale:Lcom/ibm/icu/util/ULocale;
move-object v0, v1
goto :goto_7
:cond_10
move-object v1, v0
goto :goto_b
.end method
.method public getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
.registers 13
const/4 v7, 0x1
const/4 v6, 0x2
if-eq p2, v6, :cond_9
invoke-virtual {p0, p1, p2, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v6
:goto_8
return-object v6
:cond_9
const/4 v5, 0x0
:try_start_a
const-string v6, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v6, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
const-string v6, "CurrencyPlurals"
invoke-virtual {v4, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
iget-object v6, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
:try_end_1d
.catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_1d} :catch_26
move-result-object v3
:try_start_1e
invoke-virtual {v3, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
:try_end_21
.catch Ljava/util/MissingResourceException; {:try_start_1e .. :try_end_21} :catch_2d
move-result-object v5
:goto_22
if-eqz v5, :cond_3c
move-object v6, v5
goto :goto_8
:catch_26
move-exception v6
move-object v1, v6
invoke-virtual {p0, p1, v7, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v6
goto :goto_8
:catch_2d
move-exception v2
:try_start_2e
const-string v6, "other"
invoke-virtual {v3, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
:try_end_33
.catch Ljava/util/MissingResourceException; {:try_start_2e .. :try_end_33} :catch_35
move-result-object v5
goto :goto_22
:catch_35
move-exception v6
move-object v1, v6
invoke-virtual {p0, p1, v7, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v6
goto :goto_8
:cond_3c
iget-object v6, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
goto :goto_8
.end method
.method public getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
.registers 12
const/4 v7, 0x1
const/4 v6, 0x0
if-ltz p2, :cond_6
if-le p2, v7, :cond_c
:cond_6
new-instance v4, Ljava/lang/IllegalArgumentException;
invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v4
:cond_c
const/4 v3, 0x0
:try_start_d
const-string v4, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v4, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
const-string v4, "Currencies"
invoke-virtual {v2, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
iget-object v4, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v4
invoke-virtual {v4, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;
:try_end_24
.catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_24} :catch_50
move-result-object v3
:goto_25
aput-boolean v6, p3, v6
if-eqz v3, :cond_4d
const/4 v1, 0x0
:goto_2a
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ge v1, v4, :cond_3e
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x3d
if-ne v4, v5, :cond_3e
const/4 v4, 0x2
if-ge v1, v4, :cond_3e
add-int/lit8 v1, v1, 0x1
goto :goto_2a
:cond_3e
if-ne v1, v7, :cond_4b
move v4, v7
:goto_41
aput-boolean v4, p3, v6
if-eqz v1, :cond_49
invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
:cond_49
move-object v4, v3
:goto_4a
return-object v4
:cond_4b
move v4, v6
goto :goto_41
:cond_4d
iget-object v4, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
goto :goto_4a
:catch_50
move-exception v4
goto :goto_25
.end method
.method public getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
.registers 6
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0, p2, p3, p4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRoundingIncrement()D
.registers 8
const-wide/16 v4, 0x0
invoke-direct {p0}, Lcom/ibm/icu/util/Currency;->findData()[I
move-result-object v0
const/4 v3, 0x1
aget v2, v0, v3
if-nez v2, :cond_d
move-wide v3, v4
:goto_c
return-wide v3
:cond_d
const/4 v3, 0x0
aget v1, v0, v3
if-ltz v1, :cond_17
sget-object v3, Lcom/ibm/icu/util/Currency;->POW10:[I
array-length v3, v3
if-lt v1, v3, :cond_19
:cond_17
move-wide v3, v4
goto :goto_c
:cond_19
int-to-double v3, v2
sget-object v5, Lcom/ibm/icu/util/Currency;->POW10:[I
aget v5, v5, v1
int-to-double v5, v5
div-double/2addr v3, v5
goto :goto_c
.end method
.method public getSymbol()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
const/4 v1, 0x1
new-array v1, v1, [Z
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p1, :cond_10
move v0, v2
:goto_5
if-nez p2, :cond_8
move v1, v2
:cond_8
if-eq v0, v1, :cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_10
move v0, v1
goto :goto_5
:cond_12
iput-object p1, p0, Lcom/ibm/icu/util/Currency;->validLocale:Lcom/ibm/icu/util/ULocale;
iput-object p2, p0, Lcom/ibm/icu/util/Currency;->actualLocale:Lcom/ibm/icu/util/ULocale;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Currency;->isoCode:Ljava/lang/String;
return-object v0
.end method