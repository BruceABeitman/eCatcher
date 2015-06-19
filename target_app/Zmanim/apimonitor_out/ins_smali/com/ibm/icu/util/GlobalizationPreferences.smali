.class public Lcom/ibm/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"
.implements Lcom/ibm/icu/util/Freezable;
.field public static final BI_CHARACTER:I = 0x0
.field private static final BI_LIMIT:I = 0x5
.field public static final BI_LINE:I = 0x2
.field public static final BI_SENTENCE:I = 0x3
.field public static final BI_TITLE:I = 0x4
.field public static final BI_WORD:I = 0x1
.field public static final DF_FULL:I = 0x0
.field private static final DF_LIMIT:I = 0x5
.field public static final DF_LONG:I = 0x1
.field public static final DF_MEDIUM:I = 0x2
.field public static final DF_NONE:I = 0x4
.field public static final DF_SHORT:I = 0x3
.field public static final ID_CURRENCY:I = 0x7
.field public static final ID_CURRENCY_SYMBOL:I = 0x8
.field public static final ID_KEYWORD:I = 0x5
.field public static final ID_KEYWORD_VALUE:I = 0x6
.field public static final ID_LANGUAGE:I = 0x1
.field public static final ID_LOCALE:I = 0x0
.field public static final ID_SCRIPT:I = 0x2
.field public static final ID_TERRITORY:I = 0x3
.field public static final ID_TIMEZONE:I = 0x9
.field public static final ID_VARIANT:I = 0x4
.field public static final NF_CURRENCY:I = 0x1
.field public static final NF_INTEGER:I = 0x4
.field private static final NF_LIMIT:I = 0x5
.field public static final NF_NUMBER:I = 0x0
.field public static final NF_PERCENT:I = 0x2
.field public static final NF_SCIENTIFIC:I = 0x3
.field private static final TYPE_BREAKITERATOR:I = 0x5
.field private static final TYPE_CALENDAR:I = 0x1
.field private static final TYPE_COLLATOR:I = 0x4
.field private static final TYPE_DATEFORMAT:I = 0x2
.field private static final TYPE_GENERIC:I = 0x0
.field private static final TYPE_LIMIT:I = 0x6
.field private static final TYPE_NUMBERFORMAT:I = 0x3
.field private static final available_locales:Ljava/util/HashMap;
.field private static final language_territory_hack:[[Ljava/lang/String;
.field private static final language_territory_hack_map:Ljava/util/Map;
.field static final territory_tzid_hack:[[Ljava/lang/String;
.field static final territory_tzid_hack_map:Ljava/util/Map;
.field private breakIterators:[Lcom/ibm/icu/text/BreakIterator;
.field private calendar:Lcom/ibm/icu/util/Calendar;
.field private collator:Lcom/ibm/icu/text/Collator;
.field private currency:Lcom/ibm/icu/util/Currency;
.field private dateFormats:[[Lcom/ibm/icu/text/DateFormat;
.field private frozen:Z
.field private implicitLocales:Ljava/util/List;
.field private locales:Ljava/util/List;
.field private numberFormats:[Lcom/ibm/icu/text/NumberFormat;
.field private territory:Ljava/lang/String;
.field private timezone:Lcom/ibm/icu/util/TimeZone;
.method static constructor <clinit>()V
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
const/4 v1, 0x0
move v2, v1
:goto_d
array-length v1, v0
if-ge v2, v1, :cond_25
new-instance v1, Ljava/util/BitSet;
const/4 v3, 0x6
invoke-direct {v1, v3}, Ljava/util/BitSet;-><init>(I)V
sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v4, v0, v2
invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_d
:cond_25
invoke-static {}, Lcom/ibm/icu/util/Calendar;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v2
const/4 v1, 0x0
move v3, v1
:goto_2b
array-length v1, v2
if-ge v3, v1, :cond_4f
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v4, v2, v3
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/BitSet;
if-nez v1, :cond_47
new-instance v1, Ljava/util/BitSet;
const/4 v4, 0x6
invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V
sget-object v4, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v5, v0, v3
invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_47
const/4 v4, 0x1
invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_2b
:cond_4f
invoke-static {}, Lcom/ibm/icu/text/DateFormat;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v2
const/4 v1, 0x0
move v3, v1
:goto_55
array-length v1, v2
if-ge v3, v1, :cond_79
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v4, v2, v3
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/BitSet;
if-nez v1, :cond_71
new-instance v1, Ljava/util/BitSet;
const/4 v4, 0x6
invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V
sget-object v4, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v5, v0, v3
invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_71
const/4 v4, 0x2
invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_55
:cond_79
invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v3
const/4 v1, 0x0
move v2, v1
:goto_7f
array-length v1, v3
if-ge v2, v1, :cond_a3
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v4, v3, v2
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/BitSet;
if-nez v1, :cond_9b
new-instance v1, Ljava/util/BitSet;
const/4 v4, 0x6
invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V
sget-object v4, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v5, v0, v2
invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9b
const/4 v4, 0x3
invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_7f
:cond_a3
invoke-static {}, Lcom/ibm/icu/text/Collator;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v2
const/4 v1, 0x0
move v3, v1
:goto_a9
array-length v1, v2
if-ge v3, v1, :cond_cd
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v4, v2, v3
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/BitSet;
if-nez v1, :cond_c5
new-instance v1, Ljava/util/BitSet;
const/4 v4, 0x6
invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V
sget-object v4, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v5, v0, v3
invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_c5
const/4 v4, 0x4
invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_a9
:cond_cd
invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v1
const/4 v0, 0x0
move v2, v0
:goto_d3
array-length v0, v1
if-ge v2, v0, :cond_e8
sget-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
aget-object v3, v1, v2
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/BitSet;
const/4 v3, 0x5
invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_d3
:cond_e8
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;
const/16 v0, 0x9a
new-array v0, v0, [[Ljava/lang/String;
const/4 v1, 0x0
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "af"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x1
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "am"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x2
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ar"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x3
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "as"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x4
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ay"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x5
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "az"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "AZ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x6
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "bal"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x7
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "be"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BY"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "bg"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x9
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "bn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xa
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "bs"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xb
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ca"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ES"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xc
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ch"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MP"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xd
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "cpe"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xe
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "cs"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CZ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xf
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "cy"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GB"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x10
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "da"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "DK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x11
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "de"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "DE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x12
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "dv"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MV"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x13
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "dz"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BT"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x14
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "el"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x15
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "en"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "US"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x16
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "es"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ES"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x17
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "et"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "EE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x18
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "eu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ES"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x19
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fa"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fi"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "FI"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fil"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PH"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fj"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "FJ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fo"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "FO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "fr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "FR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ga"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x20
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gd"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GB"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x21
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ES"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x22
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PY"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x23
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x24
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gv"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GB"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x25
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ha"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x26
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "he"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x27
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "hi"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x28
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ho"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x29
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "hr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "HR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ht"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "HT"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "hu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "HU"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "hy"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "AM"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "id"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ID"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "is"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IS"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x2f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "it"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IT"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x30
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ja"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "JP"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x31
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ka"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x32
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "kk"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KZ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x33
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "kl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x34
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "km"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KH"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x35
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "kn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x36
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ko"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x37
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "kok"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x38
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ks"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x39
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ku"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ky"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "la"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "VA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "lb"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "LU"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ln"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "lo"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "LA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x3f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "lt"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "LT"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x40
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "lv"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "LV"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x41
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mai"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x42
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "men"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x43
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mg"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x44
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mh"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MH"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x45
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mk"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x46
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ml"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x47
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x48
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mni"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x49
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mo"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MD"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ms"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MY"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mt"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MT"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "my"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MM"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "na"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x4f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nb"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x50
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nd"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x51
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ne"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NP"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x52
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "niu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NU"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x53
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x54
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x55
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "no"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "NO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x56
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x57
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "nso"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x58
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ny"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "MW"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x59
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "om"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "or"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "pa"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "pau"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PW"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "pl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ps"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x5f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "pt"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x60
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "qu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x61
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "rn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "BI"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x62
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ro"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "RO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x63
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ru"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "RU"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x64
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "rw"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "RW"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x65
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sd"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x66
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sg"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CF"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x67
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "si"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "LK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x68
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sk"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x69
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SI"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sm"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "WS"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "so"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "DJ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sq"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CS"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CS"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ss"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x6f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "st"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x70
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sv"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x71
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sw"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "KE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x72
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ta"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x73
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "te"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x74
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tem"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x75
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tet"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TL"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x76
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "th"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TH"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x77
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ti"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x78
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tg"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TJ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x79
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tk"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TM"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tkl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TK"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tvl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TV"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tl"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PH"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "to"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TO"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x7f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tpi"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "PG"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x80
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x81
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ts"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x82
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "uk"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "UA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x83
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ur"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x84
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "uz"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "UZ"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x85
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ve"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x86
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "vi"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "VN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x87
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "wo"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x88
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "xh"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x89
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "zh"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "zh_Hant"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "TW"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "zu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ZA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "aa"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "byn"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ER"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8e
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "eo"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "DE"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8f
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "gez"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x90
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "haw"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "US"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x91
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "iu"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "CA"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x92
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "kw"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "GB"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x93
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sa"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "IN"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x94
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sh"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "HR"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x95
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "sid"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x96
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "syr"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "SY"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x97
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tig"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ER"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x98
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "tt"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "RU"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x99
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "wal"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "ET"
aput-object v4, v2, v3
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;
const/4 v0, 0x0
:goto_b28
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_b43
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;
sget-object v2, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x0
aget-object v2, v2, v3
sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;
aget-object v3, v3, v0
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_b28
:cond_b43
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;
const/16 v0, 0x1e
new-array v0, v0, [[Ljava/lang/String;
const/4 v1, 0x0
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "AQ"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Antarctica/McMurdo"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x1
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "AR"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Buenos_Aires"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x2
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "AU"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Australia/Sydney"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x3
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "BR"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Sao_Paulo"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x4
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "CA"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Toronto"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x5
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "CD"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Africa/Kinshasa"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x6
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "CL"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Santiago"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/4 v1, 0x7
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "CN"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Shanghai"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x8
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "EC"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Guayaquil"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x9
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ES"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Europe/Madrid"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xa
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "GB"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Europe/London"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xb
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "GL"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Godthab"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xc
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ID"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Jakarta"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xd
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "ML"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Africa/Bamako"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xe
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "MX"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/Mexico_City"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0xf
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "MY"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Kuala_Lumpur"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x10
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "NZ"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Auckland"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x11
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "PT"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Europe/Lisbon"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x12
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "RU"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Europe/Moscow"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x13
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "UA"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Europe/Kiev"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x14
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "US"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "America/New_York"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x15
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "UZ"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Tashkent"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x16
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "PF"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Tahiti"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x17
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "FM"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Kosrae"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x18
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "KI"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Tarawa"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x19
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "KZ"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Almaty"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1a
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "MH"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Majuro"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1b
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "MN"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Asia/Ulaanbaatar"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1c
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "SJ"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Arctic/Longyearbyen"
aput-object v4, v2, v3
aput-object v2, v0, v1
const/16 v1, 0x1d
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "UM"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "Pacific/Midway"
aput-object v4, v2, v3
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;
const/4 v0, 0x0
:goto_d47
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_d62
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;
sget-object v2, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;
aget-object v2, v2, v0
const/4 v3, 0x0
aget-object v2, v2, v3
sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;
aget-object v3, v3, v0
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_d47
:cond_d62
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->reset()Lcom/ibm/icu/util/GlobalizationPreferences;
return-void
.end method
.method private getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
.registers 7
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;
move-result-object v2
const/4 v3, 0x0
const/4 v0, 0x0
:goto_6
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v4
if-ge v0, v4, :cond_19
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, v1, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z
move-result v4
if-eqz v4, :cond_1a
move-object v3, v1
:cond_19
return-object v3
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method private isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z
.registers 5
sget-object v1, Lcom/ibm/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/BitSet;
if-eqz v0, :cond_12
invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z
move-result v1
if-eqz v1, :cond_12
const/4 v1, 0x1
:goto_11
return v1
:cond_12
const/4 v1, 0x0
goto :goto_11
.end method
.method public cloneAsThawed()Ljava/lang/Object;
.registers 4
:try_start_0
invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/GlobalizationPreferences;
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z
:try_end_9
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_b
move-object v2, v1
:goto_a
return-object v2
:catch_b
move-exception v2
move-object v0, v2
const/4 v2, 0x0
goto :goto_a
.end method
.method public freeze()Ljava/lang/Object;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z
return-object p0
.end method
.method public getBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;
.registers 4
if-ltz p1, :cond_5
const/4 v0, 0x5
if-lt p1, v0, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Illegal break iterator type"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
aget-object v0, v0, p1
if-nez v0, :cond_1c
:cond_17
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
aget-object v0, v0, p1
invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/BreakIterator;
move-object v0, p0
goto :goto_1b
.end method
.method public getCalendar()Lcom/ibm/icu/util/Calendar;
.registers 4
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;
if-nez v1, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCalendar()Lcom/ibm/icu/util/Calendar;
move-result-object v1
:goto_8
return-object v1
:cond_9
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar;
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
move-object v1, v0
goto :goto_8
.end method
.method public getCollator()Lcom/ibm/icu/text/Collator;
.registers 4
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;
if-nez v1, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCollator()Lcom/ibm/icu/text/Collator;
move-result-object v1
:goto_8
return-object v1
:cond_9
:try_start_9
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;
invoke-virtual {v1}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/Collator;
:try_end_11
.catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_11} :catch_13
move-object v1, p0
goto :goto_8
:catch_13
move-exception v1
move-object v0, v1
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Error in cloning collator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public getCurrency()Lcom/ibm/icu/util/Currency;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;
goto :goto_8
.end method
.method public getDateFormat(II)Lcom/ibm/icu/text/DateFormat;
.registers 6
const/4 v2, 0x5
const/4 v1, 0x4
if-ne p1, v1, :cond_6
if-eq p2, v1, :cond_e
:cond_6
if-ltz p1, :cond_e
if-ge p1, v2, :cond_e
if-ltz p2, :cond_e
if-lt p2, v2, :cond_16
:cond_e
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Illegal date format style arguments"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_16
const/4 v0, 0x0
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
aget-object v1, v1, p1
aget-object v0, v1, p2
:cond_21
if-eqz v0, :cond_31
invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DateFormat;
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
:goto_30
return-object v0
:cond_31
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessDateFormat(II)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
goto :goto_30
.end method
.method public getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
.registers 23
move-object/from16 v12, p1
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_a
:cond_a
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v17
if-eqz v17, :cond_1b9
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/ibm/icu/util/ULocale;
const/16 v17, 0x0
move-object/from16 v0, p0
move-object v1, v10
move/from16 v2, v17
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/GlobalizationPreferences;->isAvailableLocale(Lcom/ibm/icu/util/ULocale;I)Z
move-result v17
if-eqz v17, :cond_a
packed-switch p2, :pswitch_data_1bc
new-instance v17, Ljava/lang/IllegalArgumentException;
new-instance v18, Ljava/lang/StringBuilder;
invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V
const-string v19, "Unknown type: "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
move/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v17
:pswitch_43
move-object/from16 v0, p1
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
:goto_4a
:cond_4a
move-object/from16 v0, p1
move-object v1, v12
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_a
move-object v13, v12
:goto_54
return-object v13
:pswitch_55
move-object/from16 v0, p1
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
goto :goto_4a
:pswitch_5d
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "und-"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
goto :goto_4a
:pswitch_7c
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "und-"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
goto :goto_4a
:pswitch_9b
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "und-QQ-"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
goto :goto_4a
:pswitch_ba
move-object/from16 v0, p1
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
goto :goto_4a
:pswitch_c2
const/16 v17, 0x2
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object v11, v0
const/16 v17, 0x3d
move-object/from16 v0, p1
move/from16 v1, v17
move-object v2, v11
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V
new-instance v17, Ljava/lang/StringBuilder;
invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V
const-string v18, "und@"
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v17
const/16 v18, 0x0
aget-object v18, v11, v18
move-object/from16 v0, v17
move-object/from16 v1, v18
move-object v2, v10
invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v12
const/16 v17, 0x1
aget-object v17, v11, v17
move-object v0, v12
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_4a
goto/16 :goto_a
:pswitch_106
new-instance v15, Lcom/ibm/icu/util/Currency;
move-object v0, v15
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/ibm/icu/util/Currency;-><init>(Ljava/lang/String;)V
const/16 v17, 0x7
move/from16 v0, p2
move/from16 v1, v17
if-ne v0, v1, :cond_12c
const/16 v17, 0x1
:goto_118
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [Z
move-object/from16 v18, v0
move-object v0, v15
move-object v1, v10
move/from16 v2, v17
move-object/from16 v3, v18
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;
move-result-object v12
goto/16 :goto_4a
:cond_12c
const/16 v17, 0x0
goto :goto_118
:pswitch_12f
new-instance v5, Lcom/ibm/icu/text/SimpleDateFormat;
const-string v17, "vvvv"
move-object v0, v5
move-object/from16 v1, v17
move-object v2, v10
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v17
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
new-instance v17, Ljava/util/Date;
invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v12
const/4 v8, 0x0
move-object/from16 v16, v12
const/16 v17, 0x28
move-object v0, v12
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v14
const/16 v17, 0x29
move-object v0, v12
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v6
const/16 v17, -0x1
move v0, v14
move/from16 v1, v17
if-eq v0, v1, :cond_187
const/16 v17, -0x1
move v0, v6
move/from16 v1, v17
if-eq v0, v1, :cond_187
sub-int v17, v6, v14
const/16 v18, 0x3
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_187
add-int/lit8 v17, v14, 0x1
move-object v0, v12
move/from16 v1, v17
move v2, v6
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v16
:cond_187
invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I
move-result v17
const/16 v18, 0x2
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_1b2
const/4 v8, 0x1
const/4 v7, 0x0
:goto_195
const/16 v17, 0x2
move v0, v7
move/from16 v1, v17
if-ge v0, v1, :cond_1b2
move-object/from16 v0, v16
move v1, v7
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v17, 0x41
move v0, v4
move/from16 v1, v17
if-lt v0, v1, :cond_1b1
const/16 v17, 0x5a
move/from16 v0, v17
move v1, v4
if-ge v0, v1, :cond_1b6
:cond_1b1
const/4 v8, 0x0
:cond_1b2
if-eqz v8, :cond_4a
goto/16 :goto_a
:cond_1b6
add-int/lit8 v7, v7, 0x1
goto :goto_195
:cond_1b9
move-object v13, v12
goto/16 :goto_54
:pswitch_data_1bc
.packed-switch 0x0
:pswitch_43
:pswitch_55
:pswitch_5d
:pswitch_7c
:pswitch_9b
:pswitch_ba
:pswitch_c2
:pswitch_106
:pswitch_106
:pswitch_12f
.end packed-switch
.end method
.method public getLocale(I)Lcom/ibm/icu/util/ULocale;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;
if-nez v0, :cond_8
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;
move-result-object v0
:cond_8
if-ltz p1, :cond_18
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge p1, v1, :cond_18
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/ULocale;
move-object v1, p0
:goto_17
return-object v1
:cond_18
const/4 v1, 0x0
goto :goto_17
.end method
.method public getLocales()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;
if-nez v1, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;
move-result-object v0
:goto_8
return-object v0
:cond_9
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_8
.end method
.method public getNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;
.registers 5
if-ltz p1, :cond_5
const/4 v1, 0x5
if-lt p1, v1, :cond_d
:cond_5
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Illegal number format type"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_d
const/4 v0, 0x0
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
aget-object v0, v1, p1
:cond_16
if-eqz v0, :cond_1f
invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/NumberFormat;
:goto_1e
return-object v0
:cond_1f
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
goto :goto_1e
.end method
.method public getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
move-result-object v0
return-object v0
.end method
.method public getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
.registers 13
const/4 v6, 0x0
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;
move-result-object v2
const/4 v3, 0x0
:goto_8
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v7
if-ge v3, v7, :cond_21
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/ULocale;
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v4
if-eqz v0, :cond_3e
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_3e
move-object v6, v1
:goto_21
:cond_21
if-nez v6, :cond_65
new-instance v7, Ljava/util/MissingResourceException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Can\'t find bundle for base name "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const-string v9, ""
invoke-direct {v7, v8, p1, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v7
:cond_3e
if-nez p2, :cond_56
:try_start_40
invoke-static {p1, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
:goto_44
if-eqz v1, :cond_5e
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v7
invoke-virtual {v7}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_5b
move-object v6, v1
goto :goto_21
:cond_56
invoke-static {p1, v4, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_59
.catch Ljava/util/MissingResourceException; {:try_start_40 .. :try_end_59} :catch_61
move-result-object v1
goto :goto_44
:cond_5b
if-nez v6, :cond_5e
move-object v6, v1
:goto_5e
:cond_5e
add-int/lit8 v3, v3, 0x1
goto :goto_8
:catch_61
move-exception v7
move-object v5, v7
const/4 v0, 0x0
goto :goto_5e
:cond_65
return-object v6
.end method
.method public getTerritory()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;
goto :goto_8
.end method
.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;
if-nez v0, :cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->guessTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;
invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/TimeZone;
move-object v0, p0
goto :goto_8
.end method
.method protected guessBreakIterator(I)Lcom/ibm/icu/text/BreakIterator;
.registers 6
const/4 v0, 0x0
const/4 v2, 0x5
invoke-direct {p0, v2}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v1
if-nez v1, :cond_a
sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:cond_a
packed-switch p1, :pswitch_data_2e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Unknown break iterator type"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:pswitch_15
invoke-static {v1}, Lcom/ibm/icu/text/BreakIterator;->getCharacterInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
:goto_19
return-object v0
:pswitch_1a
invoke-static {v1}, Lcom/ibm/icu/text/BreakIterator;->getTitleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
goto :goto_19
:pswitch_1f
invoke-static {v1}, Lcom/ibm/icu/text/BreakIterator;->getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
goto :goto_19
:pswitch_24
invoke-static {v1}, Lcom/ibm/icu/text/BreakIterator;->getLineInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
goto :goto_19
:pswitch_29
invoke-static {v1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
move-result-object v0
goto :goto_19
:pswitch_data_2e
.packed-switch 0x0
:pswitch_15
:pswitch_1f
:pswitch_24
:pswitch_29
:pswitch_1a
.end packed-switch
.end method
.method protected guessCalendar()Lcom/ibm/icu/util/Calendar;
.registers 3
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v0
if-nez v0, :cond_9
sget-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;
:cond_9
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v1
invoke-static {v1, v0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
move-result-object v1
return-object v1
.end method
.method protected guessCollator()Lcom/ibm/icu/text/Collator;
.registers 3
const/4 v1, 0x4
invoke-direct {p0, v1}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v0
if-nez v0, :cond_9
sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:cond_9
invoke-static {v0}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
move-result-object v1
return-object v1
.end method
.method protected guessCurrency()Lcom/ibm/icu/util/Currency;
.registers 4
new-instance v0, Lcom/ibm/icu/util/ULocale;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "und-"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;
move-result-object v0
return-object v0
.end method
.method protected guessDateFormat(II)Lcom/ibm/icu/text/DateFormat;
.registers 7
const/4 v3, 0x4
const/4 v2, 0x2
invoke-direct {p0, v2}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v0
if-nez v0, :cond_a
sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:cond_a
if-ne p2, v3, :cond_15
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;
move-result-object v2
invoke-static {v2, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v1
:goto_14
return-object v1
:cond_15
if-ne p1, v3, :cond_20
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;
move-result-object v2
invoke-static {v2, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v1
goto :goto_14
:cond_20
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCalendar()Lcom/ibm/icu/util/Calendar;
move-result-object v2
invoke-static {v2, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v1
goto :goto_14
.end method
.method protected guessLocales()Ljava/util/List;
.registers 3
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;
if-nez v1, :cond_17
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;
:cond_17
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;
return-object v1
.end method
.method protected guessNumberFormat(I)Lcom/ibm/icu/text/NumberFormat;
.registers 6
const/4 v2, 0x3
invoke-direct {p0, v2}, Lcom/ibm/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v0
if-nez v0, :cond_9
sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
:cond_9
packed-switch p1, :pswitch_data_34
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Unknown number format style"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:pswitch_14
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v1
:goto_18
return-object v1
:pswitch_19
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getScientificInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v1
goto :goto_18
:pswitch_1e
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v1
goto :goto_18
:pswitch_23
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v1
goto :goto_18
:pswitch_28
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getCurrency()Lcom/ibm/icu/util/Currency;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V
goto :goto_18
:pswitch_data_34
.packed-switch 0x0
:pswitch_14
:pswitch_28
:pswitch_23
:pswitch_19
:pswitch_1e
.end packed-switch
.end method
.method protected guessTerritory()Ljava/lang/String;
.registers 11
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;
move-result-object v7
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
if-eqz v7, :cond_8
move-object v5, v4
:goto_1f
return-object v5
:cond_20
const/4 v7, 0x0
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/GlobalizationPreferences;->getLocale(I)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;
move-result-object v6
const/4 v4, 0x0
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v7
if-eqz v7, :cond_53
sget-object v7, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "_"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
:cond_53
if-nez v4, :cond_5d
sget-object v7, Lcom/ibm/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;
invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
:cond_5d
if-nez v4, :cond_61
const-string v4, "US"
:cond_61
move-object v5, v4
goto :goto_1f
.end method
.method protected guessTimeZone()Lcom/ibm/icu/util/TimeZone;
.registers 6
sget-object v3, Lcom/ibm/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-nez v2, :cond_1b
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v3, v0
if-nez v3, :cond_20
const-string v2, "Etc/GMT"
:goto_1b
:cond_1b
invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v3
return-object v3
:cond_20
const/4 v1, 0x0
:goto_21
array-length v3, v0
if-ge v1, v3, :cond_2e
aget-object v3, v0, v1
const-string v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-ltz v3, :cond_35
:cond_2e
array-length v3, v0
if-le v1, v3, :cond_32
const/4 v1, 0x0
:cond_32
aget-object v2, v0, v1
goto :goto_1b
:cond_35
add-int/lit8 v1, v1, 0x1
goto :goto_21
.end method
.method public isFrozen()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->frozen:Z
return v0
.end method
.method protected processLocales(Ljava/util/List;)Ljava/util/List;
.registers 21
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
const/4 v6, 0x0
:goto_6
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v17
move v0, v6
move/from16 v1, v17
if-ge v0, v1, :cond_c9
move-object/from16 v0, p1
move v1, v6
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;
move-result-object v12
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v5
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;
move-result-object v16
const/4 v2, 0x0
const/4 v8, 0x0
:goto_2a
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v17
move v0, v8
move/from16 v1, v17
if-ge v0, v1, :cond_71
invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v13}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_49
:cond_46
add-int/lit8 v8, v8, 0x1
goto :goto_2a
:cond_49
invoke-virtual {v13}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;
move-result-object v11
invoke-virtual {v13}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v4
invoke-virtual {v13}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;
move-result-object v15
invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_a1
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_79
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_79
invoke-virtual {v15}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_79
invoke-interface {v10, v8, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v2, 0x1
:cond_71
:goto_71
if-nez v2, :cond_76
invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_76
add-int/lit8 v6, v6, 0x1
goto :goto_6
:cond_79
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_8a
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_8a
invoke-interface {v10, v8, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v2, 0x1
goto :goto_71
:cond_8a
invoke-virtual {v12}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_46
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v17
if-lez v17, :cond_46
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_46
invoke-interface {v10, v8, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v2, 0x1
goto :goto_71
:cond_a1
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_b8
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_b8
invoke-virtual {v15}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_b8
invoke-interface {v10, v8, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v2, 0x1
goto :goto_71
:cond_b8
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_46
invoke-virtual {v15}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_46
invoke-interface {v10, v8, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
const/4 v2, 0x1
goto :goto_71
:cond_c9
const/4 v7, 0x0
:goto_ca
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v17
move v0, v7
move/from16 v1, v17
if-ge v0, v1, :cond_f0
invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/ibm/icu/util/ULocale;
:goto_d9
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;
move-result-object v14
invoke-virtual {v14}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
if-nez v17, :cond_ea
add-int/lit8 v7, v7, 0x1
goto :goto_ca
:cond_ea
add-int/lit8 v7, v7, 0x1
invoke-interface {v10, v7, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_d9
:cond_f0
const/4 v7, 0x0
:cond_f1
:goto_f1
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v17
const/16 v18, 0x1
sub-int v17, v17, v18
move v0, v7
move/from16 v1, v17
if-ge v0, v1, :cond_12b
invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Lcom/ibm/icu/util/ULocale;
const/4 v3, 0x0
add-int/lit8 v6, v7, 0x1
:goto_107
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v17
move v0, v6
move/from16 v1, v17
if-ge v0, v1, :cond_123
invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/ULocale;
move-object v0, v14
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_128
invoke-interface {v10, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
const/4 v3, 0x1
:cond_123
if-nez v3, :cond_f1
add-int/lit8 v7, v7, 0x1
goto :goto_f1
:cond_128
add-int/lit8 v6, v6, 0x1
goto :goto_107
:cond_12b
return-object v10
.end method
.method public reset()Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v1
if-eqz v1, :cond_f
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v2, "Attempt to modify immutable object"
invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;
move-object v0, v2
check-cast v0, [[Lcom/ibm/icu/text/DateFormat;
move-object v1, v0
iput-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
iput-object v2, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;
return-object p0
.end method
.method public setBreakIterator(ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 5
const/4 v1, 0x5
if-ltz p1, :cond_5
if-lt p1, v1, :cond_d
:cond_5
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Illegal break iterator type"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
if-nez v0, :cond_23
new-array v0, v1, [Lcom/ibm/icu/text/BreakIterator;
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
:cond_23
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->breakIterators:[Lcom/ibm/icu/text/BreakIterator;
invoke-virtual {p2}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/BreakIterator;
aput-object v0, v1, p1
return-object p0
.end method
.method public setCalendar(Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar;
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->calendar:Lcom/ibm/icu/util/Calendar;
return-object p0
.end method
.method public setCollator(Lcom/ibm/icu/text/Collator;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v1
if-eqz v1, :cond_e
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v2, "Attempt to modify immutable object"
invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_e
:cond_e
invoke-virtual {p1}, Lcom/ibm/icu/text/Collator;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/text/Collator;
iput-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->collator:Lcom/ibm/icu/text/Collator;
:try_end_16
.catch Ljava/lang/CloneNotSupportedException; {:try_start_e .. :try_end_16} :catch_17
return-object p0
:catch_17
move-exception v1
move-object v0, v1
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Error in cloning collator"
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->currency:Lcom/ibm/icu/util/Currency;
return-object p0
.end method
.method public setDateFormat(IILcom/ibm/icu/text/DateFormat;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 6
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
if-nez v0, :cond_21
filled-new-array {v1, v1}, [I
move-result-object v0
const-class v1, Lcom/ibm/icu/text/DateFormat;
invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [[Lcom/ibm/icu/text/DateFormat;
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
:cond_21
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->dateFormats:[[Lcom/ibm/icu/text/DateFormat;
aget-object v1, v0, p1
invoke-virtual {p3}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DateFormat;
aput-object v0, v1, p2
return-object p0
.end method
.method public setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const/4 v0, 0x1
new-array v0, v0, [Lcom/ibm/icu/util/ULocale;
const/4 v1, 0x0
aput-object p1, v0, v1
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->setLocales([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
move-result-object v0
return-object v0
.end method
.method public setLocales(Ljava/lang/String;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 6
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v2
if-eqz v2, :cond_e
new-instance v2, Ljava/lang/UnsupportedOperationException;
const-string v3, "Attempt to modify immutable object"
invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v2
:cond_e
const/4 v0, 0x0
const/4 v2, 0x1
:try_start_10
invoke-static {p1, v2}, Lcom/ibm/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Lcom/ibm/icu/util/ULocale;
:try_end_13
.catch Ljava/text/ParseException; {:try_start_10 .. :try_end_13} :catch_19
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->setLocales([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
move-result-object v2
return-object v2
:catch_19
move-exception v1
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Invalid Accept-Language string"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public setLocales(Ljava/util/List;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;
return-object p0
.end method
.method public setLocales([Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Lcom/ibm/icu/util/GlobalizationPreferences;
move-result-object v0
return-object v0
.end method
.method public setNumberFormat(ILcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
if-nez v0, :cond_17
const/4 v0, 0x5
new-array v0, v0, [Lcom/ibm/icu/text/NumberFormat;
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
:cond_17
iget-object v1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->numberFormats:[Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {p2}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/NumberFormat;
aput-object v0, v1, p1
return-object p0
.end method
.method public setTerritory(Ljava/lang/String;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;
return-object p0
.end method
.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)Lcom/ibm/icu/util/GlobalizationPreferences;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/util/GlobalizationPreferences;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify immutable object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/TimeZone;
iput-object v0, p0, Lcom/ibm/icu/util/GlobalizationPreferences;->timezone:Lcom/ibm/icu/util/TimeZone;
return-object p0
.end method