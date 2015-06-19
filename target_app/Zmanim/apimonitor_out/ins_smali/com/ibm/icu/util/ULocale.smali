.class public final Lcom/ibm/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"
.implements Ljava/io/Serializable;
.field public static ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null
.field private static final CACHE:Lcom/ibm/icu/impl/SimpleCache; = null
.field public static final CANADA:Lcom/ibm/icu/util/ULocale; = null
.field public static final CANADA_FRENCH:Lcom/ibm/icu/util/ULocale; = null
.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null
.field public static final CHINA:Lcom/ibm/icu/util/ULocale; = null
.field public static final CHINESE:Lcom/ibm/icu/util/ULocale; = null
.field private static final EMPTY_LOCALE:Ljava/util/Locale; = null
.field private static final EMPTY_STRING:Ljava/lang/String; = ""
.field public static final ENGLISH:Lcom/ibm/icu/util/ULocale; = null
.field public static final FRANCE:Lcom/ibm/icu/util/ULocale; = null
.field public static final FRENCH:Lcom/ibm/icu/util/ULocale; = null
.field public static final GERMAN:Lcom/ibm/icu/util/ULocale; = null
.field public static final GERMANY:Lcom/ibm/icu/util/ULocale; = null
.field public static final ITALIAN:Lcom/ibm/icu/util/ULocale; = null
.field public static final ITALY:Lcom/ibm/icu/util/ULocale; = null
.field public static final JAPAN:Lcom/ibm/icu/util/ULocale; = null
.field public static final JAPANESE:Lcom/ibm/icu/util/ULocale; = null
.field public static final KOREA:Lcom/ibm/icu/util/ULocale; = null
.field public static final KOREAN:Lcom/ibm/icu/util/ULocale; = null
.field public static final LDML_EXTENSION:C = 'u'
.field public static final PRC:Lcom/ibm/icu/util/ULocale; = null
.field public static final PRIVATE_USE_EXTENSION:C = 'x'
.field public static final ROOT:Lcom/ibm/icu/util/ULocale; = null
.field public static final SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale; = null
.field public static final TAIWAN:Lcom/ibm/icu/util/ULocale; = null
.field public static final TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale; = null
.field public static final UK:Lcom/ibm/icu/util/ULocale; = null
.field private static final UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"
.field private static final UNDEFINED_REGION:Ljava/lang/String; = "ZZ"
.field private static final UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"
.field private static final UNDERSCORE:C = '_'
.field public static final US:Lcom/ibm/icu/util/ULocale; = null
.field public static VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null
.field private static _countries:[Ljava/lang/String; = null
.field private static _countries3:[Ljava/lang/String; = null
.field private static _deprecatedCountries:[Ljava/lang/String; = null
.field private static final _javaLocaleMap:[[Ljava/lang/String; = null
.field private static _languages:[Ljava/lang/String; = null
.field private static _languages3:[Ljava/lang/String; = null
.field private static _obsoleteCountries:[Ljava/lang/String; = null
.field private static _obsoleteCountries3:[Ljava/lang/String; = null
.field private static _obsoleteLanguages:[Ljava/lang/String; = null
.field private static _obsoleteLanguages3:[Ljava/lang/String; = null
.field private static _replacementCountries:[Ljava/lang/String; = null
.field private static _replacementLanguages:[Ljava/lang/String; = null
.field private static defaultLocale:Ljava/util/Locale; = null
.field private static defaultULocale:Lcom/ibm/icu/util/ULocale; = null
.field private static gCLDRVersion:Lcom/ibm/icu/util/VersionInfo; = null
.field private static nameCache:Lcom/ibm/icu/impl/ICUCache; = null
.field private static final serialVersionUID:J = 0x338ef66846d00be1L
.field private static variantsToKeywords:[[Ljava/lang/String;
.field private transient locale:Ljava/util/Locale;
.field private localeID:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x0
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "en"
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->ENGLISH:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "fr"
sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->FRENCH:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "de"
sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMAN:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "it"
sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALIAN:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "ja"
sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPANESE:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "ko"
sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREAN:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "zh"
sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINESE:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "zh_Hans"
sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "zh_Hant"
sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "fr_FR"
sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->FRANCE:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "de_DE"
sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMANY:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "it_IT"
sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALY:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "ja_JP"
sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPAN:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "ko_KR"
sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREA:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "zh_Hans_CN"
sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;
sget-object v0, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;
sput-object v0, Lcom/ibm/icu/util/ULocale;->PRC:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "zh_Hant_TW"
sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->TAIWAN:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "en_GB"
sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->UK:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "en_US"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "en_CA"
sget-object v2, Ljava/util/Locale;->CANADA:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "fr_CA"
sget-object v2, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;
new-instance v0, Ljava/util/Locale;
const-string v1, ""
const-string v2, ""
invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
const-string v1, "root"
sget-object v2, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
new-array v0, v8, [[Ljava/lang/String;
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const-string v2, "ja_JP_JP"
aput-object v2, v1, v5
const-string v2, "ja_JP"
aput-object v2, v1, v6
const-string v2, "calendar"
aput-object v2, v1, v7
const-string v2, "japanese"
aput-object v2, v1, v8
const/4 v2, 0x4
const-string v3, "ja"
aput-object v3, v1, v2
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const-string v2, "no_NO_NY"
aput-object v2, v1, v5
const-string v2, "nn_NO"
aput-object v2, v1, v6
aput-object v4, v1, v7
aput-object v4, v1, v8
const/4 v2, 0x4
const-string v3, "nn"
aput-object v3, v1, v2
aput-object v1, v0, v6
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const-string v2, "th_TH_TH"
aput-object v2, v1, v5
const-string v2, "th_TH"
aput-object v2, v1, v6
const-string v2, "numbers"
aput-object v2, v1, v7
const-string v2, "thai"
aput-object v2, v1, v8
const/4 v2, 0x4
const-string v3, "th"
aput-object v3, v1, v2
aput-object v1, v0, v7
sput-object v0, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/ICUCache;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;
new-instance v0, Lcom/ibm/icu/util/ULocale;
sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/util/Locale;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
sput-object v4, Lcom/ibm/icu/util/ULocale;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;
new-instance v0, Lcom/ibm/icu/util/ULocale$Type;
invoke-direct {v0, v4}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
new-instance v0, Lcom/ibm/icu/util/ULocale$Type;
invoke-direct {v0, v4}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V
sput-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
invoke-static {p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
return-void
.end method
.method private constructor <init>(Ljava/util/Locale;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
return-void
.end method
.method public static acceptLanguage(Ljava/lang/String;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
.registers 6
if-nez p0, :cond_8
new-instance v2, Ljava/lang/NullPointerException;
invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V
throw v2
:cond_8
const/4 v0, 0x0
const/4 v2, 0x1
:try_start_a
invoke-static {p0, v2}, Lcom/ibm/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Lcom/ibm/icu/util/ULocale;
:try_end_d
.catch Ljava/text/ParseException; {:try_start_a .. :try_end_d} :catch_12
move-result-object v0
:goto_e
if-nez v0, :cond_15
const/4 v2, 0x0
:goto_11
return-object v2
:catch_12
move-exception v1
const/4 v0, 0x0
goto :goto_e
:cond_15
invoke-static {v0, p1, p2}, Lcom/ibm/icu/util/ULocale;->acceptLanguage([Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
move-result-object v2
goto :goto_11
.end method
.method public static acceptLanguage(Ljava/lang/String;[Z)Lcom/ibm/icu/util/ULocale;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {p0, v0, p1}, Lcom/ibm/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method public static acceptLanguage([Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
.registers 11
const/4 v7, 0x0
if-eqz p2, :cond_6
const/4 v6, 0x1
aput-boolean v6, p2, v7
:cond_6
const/4 v1, 0x0
:goto_7
array-length v6, p0
if-ge v1, v6, :cond_3a
aget-object v0, p0, v1
move-object v5, p2
:cond_d
const/4 v2, 0x0
:goto_e
array-length v6, p1
if-ge v2, v6, :cond_23
aget-object v6, p1, v2
invoke-virtual {v6, v0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_20
if-eqz v5, :cond_1d
aput-boolean v7, v5, v7
:cond_1d
aget-object v6, p1, v2
:goto_1f
return-object v6
:cond_20
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_23
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v3
invoke-static {v3}, Lcom/ibm/icu/impl/LocaleUtility;->fallback(Ljava/util/Locale;)Ljava/util/Locale;
move-result-object v4
if-eqz v4, :cond_38
new-instance v0, Lcom/ibm/icu/util/ULocale;
invoke-direct {v0, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/util/Locale;)V
:goto_32
const/4 v5, 0x0
if-nez v0, :cond_d
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_38
const/4 v0, 0x0
goto :goto_32
:cond_3a
const/4 v6, 0x0
goto :goto_1f
.end method
.method public static acceptLanguage([Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {p0, v0, p1}, Lcom/ibm/icu/util/ULocale;->acceptLanguage([Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100()V
.registers 0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initLanguageTables()V
return-void
.end method
.method static synthetic access$1000()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries3:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1100()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1500(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_languages3:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$300([Ljava/lang/String;Ljava/lang/String;)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static synthetic access$400()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$500()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages3:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$600()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$700()V
.registers 0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initCountryTables()V
return-void
.end method
.method static synthetic access$800()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_countries3:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$900()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
return-object v0
.end method
.method public static addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
.registers 8
const/4 v4, 0x3
new-array v1, v4, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v4, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v4, v1}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
move-result v3
iget-object v4, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_18
iget-object v4, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:cond_18
const/4 v4, 0x0
aget-object v4, v1, v4
const/4 v5, 0x1
aget-object v5, v1, v5
const/4 v6, 0x2
aget-object v6, v1, v6
invoke-static {v4, v5, v6, v2}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_29
move-object v4, p0
:goto_28
return-object v4
:cond_29
new-instance v4, Lcom/ibm/icu/util/ULocale;
invoke-direct {v4, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_28
.end method
.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
.registers 3
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-eqz v0, :cond_b
const/16 v0, 0x5f
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_b
invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-void
.end method
.method private base()Lcom/ibm/icu/impl/locale/BaseLocale;
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
const-string v0, ""
:cond_e
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;
move-result-object v1
return-object v1
.end method
.method private static bcp47ToLDMLKey(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const-string v6, "com/ibm/icu/impl/data/icudt42b"
const-string v7, "supplementalData"
sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v6, v7, v8}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
const-string v6, "bcp47KeywordMappings"
invoke-virtual {v5, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
const-string v6, "key"
invoke-virtual {v0, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
const/4 v2, 0x0
const/4 v1, 0x0
:goto_1c
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v6
if-ge v1, v6, :cond_34
invoke-virtual {v4, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_38
invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v2
:cond_34
if-nez v2, :cond_3b
move-object v6, p0
:goto_37
return-object v6
:cond_38
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:cond_3b
move-object v6, v2
goto :goto_37
.end method
.method private static bcp47ToLDMLType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const-string v6, "com/ibm/icu/impl/data/icudt42b"
const-string v7, "supplementalData"
sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v6, v7, v8}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
const-string v6, "bcp47KeywordMappings"
invoke-virtual {v2, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
const/4 v3, 0x0
:try_start_19
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
const/4 v1, 0x0
:goto_1e
invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v6
if-ge v1, v6, :cond_46
invoke-virtual {v5, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_4a
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v3
const-string v6, "timezone"
invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_46
const-string v6, ":"
const-string v7, "/"
invoke-static {v3, v6, v7}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_45
.catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_45} :catch_4f
move-result-object v3
:goto_46
:cond_46
if-nez v3, :cond_4d
move-object v6, p1
:goto_49
return-object v6
:cond_4a
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:cond_4d
move-object v6, v3
goto :goto_49
:catch_4f
move-exception v6
goto :goto_46
.end method
.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/4 v11, 0x0
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
new-instance v4, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v4, p0, v9, v11}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;ZLcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getBaseName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const-string v6, ""
invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_19
const-string v6, ""
:goto_18
return-object v6
:cond_19
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initCANONICALIZE_MAP()V
const/4 v2, 0x0
:goto_1d
sget-object v6, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
array-length v6, v6
if-ge v2, v6, :cond_5f
sget-object v6, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
aget-object v5, v6, v2
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "_"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v5, v8
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v3
const/4 v6, -0x1
if-le v3, v6, :cond_b8
const/4 v1, 0x1
invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string v6, "_"
invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_55
add-int/lit8 v3, v3, -0x1
invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_55
invoke-virtual {v4, v0}, Lcom/ibm/icu/util/ULocale$IDParser;->setBaseName(Ljava/lang/String;)V
aget-object v6, v5, v9
aget-object v7, v5, v10
invoke-virtual {v4, v6, v7}, Lcom/ibm/icu/util/ULocale$IDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
:cond_5f
const/4 v2, 0x0
:goto_60
sget-object v6, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
array-length v6, v6
if-ge v2, v6, :cond_87
sget-object v6, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
aget-object v6, v6, v2
aget-object v6, v6, v8
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_bc
const/4 v1, 0x1
sget-object v6, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
aget-object v5, v6, v2
aget-object v6, v5, v9
invoke-virtual {v4, v6}, Lcom/ibm/icu/util/ULocale$IDParser;->setBaseName(Ljava/lang/String;)V
aget-object v6, v5, v10
if-eqz v6, :cond_87
aget-object v6, v5, v10
const/4 v7, 0x3
aget-object v7, v5, v7
invoke-virtual {v4, v6, v7}, Lcom/ibm/icu/util/ULocale$IDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
:cond_87
if-nez v1, :cond_b2
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguage()Ljava/lang/String;
move-result-object v6
const-string v7, "nb"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_b2
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getVariant()Ljava/lang/String;
move-result-object v6
const-string v7, "NY"
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_b2
const-string v6, "nn"
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getScript()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getCountry()Ljava/lang/String;
move-result-object v8
invoke-static {v6, v7, v8, v11}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Lcom/ibm/icu/util/ULocale$IDParser;->setBaseName(Ljava/lang/String;)V
:cond_b2
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale$IDParser;->getName()Ljava/lang/String;
move-result-object v6
goto/16 :goto_18
:cond_b8
add-int/lit8 v2, v2, 0x1
goto/16 :goto_1d
:cond_bc
add-int/lit8 v2, v2, 0x1
goto :goto_60
.end method
.method public static createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale;
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 p0, 0x0
check-cast p0, Ljava/util/Locale;
invoke-direct {v0, v1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
return-object v0
.end method
.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v3, 0x0
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1c
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1c
invoke-static {p0, p1, p2, v3}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
invoke-static {v3, v3, v3, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:goto_1b
return-object v2
:cond_1c
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_31
invoke-static {p0, p1, v3, v3}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_31
invoke-static {v3, v3, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_1b
:cond_31
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_46
invoke-static {p0, v3, p2, v3}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_46
invoke-static {v3, p1, v3, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_1b
:cond_46
invoke-static {p0, v3, v3, v3}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_55
invoke-static {v3, p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_1b
:cond_55
move-object v2, v3
goto :goto_1b
.end method
.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 16
const/4 v10, 0x0
const/16 v9, 0x5f
const/4 v8, 0x1
const/4 v3, 0x0
const/4 v4, 0x0
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_4f
invoke-static {p0, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
:goto_14
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_72
invoke-static {p1, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
:cond_1d
:goto_1d
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_8d
invoke-static {p2, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
const/4 v4, 0x1
:goto_27
:cond_27
if-eqz p3, :cond_4a
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v7
if-le v7, v8, :cond_4a
const/4 v5, 0x0
const/4 v7, 0x0
invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v9, :cond_aa
invoke-virtual {p3, v8}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v9, :cond_3e
const/4 v5, 0x2
:goto_3e
:cond_3e
if-eqz v4, :cond_b0
const/4 v7, 0x2
if-ne v5, v7, :cond_ac
invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_4a
:cond_4a
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
return-object v7
:cond_4f
invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_5b
const-string v7, "und"
invoke-static {v7, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
goto :goto_14
:cond_5b
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v3, p4, v10}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_6f
move-object v7, v0
:goto_6b
invoke-static {v7, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
goto :goto_14
:cond_6f
const-string v7, "und"
goto :goto_6b
:cond_72
invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1d
if-nez v3, :cond_7f
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v3, p4, v10}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
:cond_7f
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getScript()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1d
invoke-static {v2, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
goto :goto_1d
:cond_8d
invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_27
if-nez v3, :cond_9a
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v3, p4, v10}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
:cond_9a
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_27
invoke-static {v1, v6}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuffer;)V
const/4 v4, 0x1
goto/16 :goto_27
:cond_aa
const/4 v5, 0x1
goto :goto_3e
:cond_ac
invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_4a
:cond_b0
if-ne v5, v8, :cond_b5
invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_b5
invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_4a
.end method
.method private extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
.registers 15
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;
move-result-object v8
if-nez v8, :cond_9
sget-object v12, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;
:goto_8
return-object v12
:cond_9
const/4 v3, 0x0
const/4 v9, 0x0
:cond_b
:goto_b
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_96
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v12
const/4 v13, 0x1
if-ne v12, v13, :cond_76
const/4 v12, 0x0
invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C
move-result v12
const/16 v13, 0x78
if-ne v12, v13, :cond_66
const/4 v12, 0x1
move v5, v12
:goto_2d
if-nez v5, :cond_35
invoke-static {v7}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_b
:cond_35
const/4 v6, 0x1
const/16 v12, 0x2d
invoke-static {v11, v12}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;
move-result-object v10
const/4 v4, 0x0
:goto_3d
array-length v12, v10
if-ge v4, v12, :cond_4b
if-eqz v5, :cond_69
aget-object v12, v10, v4
invoke-static {v12}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseValueSubtag(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_73
const/4 v6, 0x0
:goto_4b
:cond_4b
if-eqz v6, :cond_b
if-nez v3, :cond_54
new-instance v3, Ljava/util/TreeMap;
invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
:cond_54
new-instance v12, Ljava/lang/Character;
const/4 v13, 0x0
invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C
move-result v13
invoke-direct {v12, v13}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v13
invoke-virtual {v3, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_b
:cond_66
const/4 v12, 0x0
move v5, v12
goto :goto_2d
:cond_69
aget-object v12, v10, v4
invoke-static {v12}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_73
const/4 v6, 0x0
goto :goto_4b
:cond_73
add-int/lit8 v4, v4, 0x1
goto :goto_3d
:cond_76
invoke-static {v7}, Lcom/ibm/icu/util/ULocale;->ldmlKeyToBCP47(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v7, v11}, Lcom/ibm/icu/util/ULocale;->ldmlTypeToBCP47(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_b
if-eqz v1, :cond_b
if-nez v9, :cond_89
new-instance v9, Ljava/util/TreeMap;
invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V
:cond_89
invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v12
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v13
invoke-virtual {v9, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_b
:cond_96
if-eqz v9, :cond_b9
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {v9, v2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->keywordsToString(Ljava/util/TreeMap;Ljava/lang/StringBuffer;)V
if-nez v3, :cond_a7
new-instance v3, Ljava/util/TreeMap;
invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
:cond_a7
new-instance v12, Ljava/lang/Character;
const/16 v13, 0x75
invoke-direct {v12, v13}, Ljava/lang/Character;-><init>(C)V
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v13
invoke-virtual {v3, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b9
invoke-static {v3, v9}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getInstance(Ljava/util/TreeMap;Ljava/util/TreeMap;)Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v12
goto/16 :goto_8
.end method
.method private static findIndex([Ljava/lang/String;Ljava/lang/String;)I
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p0
if-ge v0, v1, :cond_11
aget-object v1, p0, v0
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
move v1, v0
:goto_d
return v1
:cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_11
const/4 v1, -0x1
goto :goto_d
.end method
.method public static forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
.registers 13
const/4 v11, 0x0
new-instance v7, Lcom/ibm/icu/util/ULocale;
const-string v9, ""
invoke-direct {v7, v9}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
const/4 v8, 0x0
:goto_9
:try_start_9
invoke-static {p0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LanguageTag;
move-result-object v8
new-instance v0, Lcom/ibm/icu/util/ULocale$Builder;
invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$Builder;-><init>()V
const/4 v9, 0x0
invoke-virtual {v8, v9}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtlang(I)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_6d
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;
move-result-object v9
move-object v6, v9
:goto_1e
const-string v9, "und"
invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_29
invoke-virtual {v0, v6}, Lcom/ibm/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
:cond_29
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;
move-result-object v9
invoke-virtual {v0, v9}, Lcom/ibm/icu/util/ULocale$Builder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v9
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/ibm/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
move-result-object v9
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariant()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/ibm/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/Set;
move-result-object v3
if-eqz v3, :cond_6f
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_4a
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_6f
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;
invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->getSingleton()C
move-result v9
invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;->getValue()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v9, v10}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
:try_end_61
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_9 .. :try_end_61} :catch_62
.catch Lcom/ibm/icu/util/IllformedLocaleException; {:try_start_9 .. :try_end_61} :catch_82
goto :goto_4a
:catch_62
move-exception v9
:goto_63
const/16 v9, 0x2d
invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I
move-result v4
const/4 v9, -0x1
if-ne v4, v9, :cond_7d
:goto_6c
return-object v7
:cond_6d
move-object v6, v2
goto :goto_1e
:cond_6f
const/16 v9, 0x78
:try_start_71
invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateUse()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v9, v10}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$Builder;->create()Lcom/ibm/icu/util/ULocale;
:try_end_7b
.catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_71 .. :try_end_7b} :catch_62
.catch Lcom/ibm/icu/util/IllformedLocaleException; {:try_start_71 .. :try_end_7b} :catch_82
move-result-object v7
goto :goto_6c
:cond_7d
invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p0
goto :goto_9
:catch_82
move-exception v9
goto :goto_63
.end method
.method public static forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
.registers 8
const/4 v6, 0x0
if-nez p0, :cond_5
move-object v4, v6
:goto_4
return-object v4
:cond_5
sget-object v4, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
invoke-virtual {v4, p0}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/util/ULocale;
if-nez v3, :cond_20
sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
if-eqz v4, :cond_22
sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
iget-object v4, v4, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
if-ne p0, v4, :cond_22
sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
:goto_1b
sget-object v4, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SimpleCache;
invoke-virtual {v4, p0, v3}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_20
move-object v4, v3
goto :goto_4
:cond_22
invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_2f
sget-object v3, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;
goto :goto_1b
:cond_2f
const/4 v0, 0x0
:goto_30
sget-object v4, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
array-length v4, v4
if-ge v0, v4, :cond_63
sget-object v4, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v4, v4, v0
const/4 v5, 0x0
aget-object v4, v4, v5
invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_69
new-instance v2, Lcom/ibm/icu/util/ULocale$IDParser;
sget-object v4, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v4, v4, v0
const/4 v5, 0x1
aget-object v4, v4, v5
invoke-direct {v2, v4, v6}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
sget-object v4, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v4, v4, v0
const/4 v5, 0x2
aget-object v4, v4, v5
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v0
const/4 v6, 0x3
aget-object v5, v5, v6
invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getName()Ljava/lang/String;
move-result-object v1
:cond_63
new-instance v3, Lcom/ibm/icu/util/ULocale;
invoke-direct {v3, v1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
goto :goto_1b
:cond_69
add-int/lit8 v0, v0, 0x1
goto :goto_30
.end method
.method public static getAvailableLocales()[Lcom/ibm/icu/util/ULocale;
.registers 1
invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
return-object v0
.end method
.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/16 v0, 0x40
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_b
move-object v0, p0
:goto_a
return-object v0
:cond_b
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getBaseName()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public static getCLDRVersion()Lcom/ibm/icu/util/VersionInfo;
.registers 5
sget-object v2, Lcom/ibm/icu/util/ULocale;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;
if-nez v2, :cond_1e
const-string v2, "com/ibm/icu/impl/data/icudt42b"
const-string v3, "supplementalData"
sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
const-string v2, "cldrVersion"
invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
move-result-object v2
sput-object v2, Lcom/ibm/icu/util/ULocale;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;
:cond_1e
sget-object v2, Lcom/ibm/icu/util/ULocale;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;
return-object v2
.end method
.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getCountry()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static getCurrentCountryID(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initCountryTables()V
sget-object v1, Lcom/ibm/icu/util/ULocale;->_deprecatedCountries:[Ljava/lang/String;
invoke-static {v1, p0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_10
sget-object v1, Lcom/ibm/icu/util/ULocale;->_replacementCountries:[Ljava/lang/String;
aget-object v1, v1, v0
:goto_f
return-object v1
:cond_10
move-object v1, p0
goto :goto_f
.end method
.method static getCurrentLanguageID(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initLanguageTables()V
sget-object v1, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages:[Ljava/lang/String;
invoke-static {v1, p0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-ltz v0, :cond_10
sget-object v1, Lcom/ibm/icu/util/ULocale;->_replacementLanguages:[Ljava/lang/String;
aget-object v1, v1, v0
:goto_f
return-object v1
:cond_10
move-object v1, p0
goto :goto_f
.end method
.method public static getDefault()Lcom/ibm/icu/util/ULocale;
.registers 4
const-class v1, Lcom/ibm/icu/util/ULocale;
monitor-enter v1
:try_start_3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;
invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1a
sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;
new-instance v2, Lcom/ibm/icu/util/ULocale;
sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;
invoke-direct {v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/util/Locale;)V
sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
:cond_1a
sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
monitor-exit v1
return-object v2
:catchall_1e
move-exception v2
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v2
.end method
.method public static getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayCountryInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
const-string v0, "Countries"
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v2, v1, p1}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
iget-object v0, v0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayKeyword(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayKeywordInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string v0, "Keys"
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2, p1}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p2, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayKeywordValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1, p1}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Types"
invoke-static {v1, p1, v0, p2}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static getDisplayLanguage(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayLanguageInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
const-string v0, "Languages"
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v2, v1, p1}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayNameInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v0, 0x4
new-array v6, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "Languages"
aput-object v1, v6, v0
const/4 v0, 0x1
const-string v1, "Scripts"
aput-object v1, v6, v0
const/4 v0, 0x2
const-string v1, "Countries"
aput-object v1, v6, v0
const/4 v0, 0x3
const-string v1, "Variants"
aput-object v1, v6, v0
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
new-instance p1, Ljava/lang/StringBuffer;
invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V
new-instance v5, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v5, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;
move-result-object v3
const/4 p0, 0x0
aget-object p0, v3, p0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result p0
if-lez p0, :cond_66
const/4 p0, 0x1
move v1, p0
:goto_39
const/4 v2, 0x0
const/4 p0, 0x0
move v4, v2
:goto_3c
array-length v2, v3
if-ge p0, v2, :cond_71
aget-object v2, v3, p0
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_63
aget-object v7, v6, p0
const/4 v8, 0x0
invoke-static {v7, v8, v2, v0}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v7
if-lez v7, :cond_60
if-nez v4, :cond_69
const/4 v7, 0x1
:goto_57
and-int/2addr v7, v1
if-eqz v7, :cond_6b
const-string v4, " ("
invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v4, 0x1
:cond_60
:goto_60
invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_63
add-int/lit8 p0, p0, 0x1
goto :goto_3c
:cond_66
const/4 p0, 0x0
move v1, p0
goto :goto_39
:cond_69
const/4 v7, 0x0
goto :goto_57
:cond_6b
const-string v7, ", "
invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_60
:cond_71
#calls: Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordMap()Ljava/util/Map;
invoke-static {v5}, Lcom/ibm/icu/util/ULocale$IDParser;->access$1300(Lcom/ibm/icu/util/ULocale$IDParser;)Ljava/util/Map;
move-result-object p0
invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
move-result v2
if-nez v2, :cond_d2
invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object p0
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move p0, v4
:goto_84
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_d3
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v2
if-lez v2, :cond_df
if-nez p0, :cond_c9
const/4 v2, 0x1
:goto_93
and-int/2addr v2, v1
if-eqz v2, :cond_cb
const-string p0, " ("
invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 p0, 0x1
move v4, p0
:goto_9d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/util/Map$Entry;
invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
const-string v5, "Keys"
const/4 v6, 0x0
invoke-static {v5, v6, v2, v0}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
move-result-object v5
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v5, "="
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v5, "Types"
invoke-static {v5, v2, p0, v0}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
move-result-object p0
invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move p0, v4
goto :goto_84
:cond_c9
const/4 v2, 0x0
goto :goto_93
:cond_cb
const-string v2, ", "
invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v4, p0
goto :goto_9d
:cond_d2
move p0, v4
:cond_d3
if-eqz p0, :cond_da
const-string p0, ")"
invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_da
invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
return-object p0
:cond_df
move v4, p0
goto :goto_9d
.end method
.method public static getDisplayScript(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayScriptInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
const-string v0, "Scripts"
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->getScript()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v2, v1, p1}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayVariant(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
iget-object v0, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getDisplayVariantInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
const-string v0, "Variants"
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->getVariant()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v2, v1, p1}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v3, -0x1
const/16 v2, 0x40
invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v0, v3, :cond_d
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:cond_d
const/16 v2, 0x5f
invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I
move-result v1
if-ne v1, v3, :cond_16
const/4 v1, 0x0
:cond_16
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v3, 0x0
invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static getISO3Country(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initCountryTables()V
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
invoke-static {v2, v0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_14
sget-object v2, Lcom/ibm/icu/util/ULocale;->_countries3:[Ljava/lang/String;
aget-object v2, v2, v1
:goto_13
return-object v2
:cond_14
sget-object v2, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries:[Ljava/lang/String;
invoke-static {v2, v0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_21
sget-object v2, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries3:[Ljava/lang/String;
aget-object v2, v2, v1
goto :goto_13
:cond_21
const-string v2, ""
goto :goto_13
.end method
.method public static getISO3Language(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initLanguageTables()V
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
invoke-static {v2, v0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_14
sget-object v2, Lcom/ibm/icu/util/ULocale;->_languages3:[Ljava/lang/String;
aget-object v2, v2, v1
:goto_13
return-object v2
:cond_14
sget-object v2, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages:[Ljava/lang/String;
invoke-static {v2, v0}, Lcom/ibm/icu/util/ULocale;->findIndex([Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_21
sget-object v2, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages3:[Ljava/lang/String;
aget-object v2, v2, v1
goto :goto_13
:cond_21
const-string v2, ""
goto :goto_13
.end method
.method public static getISOCountries()[Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initCountryTables()V
sget-object v0, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public static getISOLanguages()[Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->initLanguageTables()V
sget-object v0, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method private static getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
.registers 8
new-instance v1, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getID()Ljava/lang/String;
move-result-object p0
invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtensionKeys()Ljava/util/Set;
move-result-object p0
if-eqz p0, :cond_b0
new-instance v3, Ljava/util/TreeMap;
invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
const/4 p0, 0x0
:goto_1a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_40
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Character;
invoke-virtual {v2}, Ljava/lang/Character;->charValue()C
move-result v4
const/16 v5, 0x75
if-ne v4, v5, :cond_30
const/4 p0, 0x1
goto :goto_1a
:cond_30
invoke-virtual {v2}, Ljava/lang/Character;->charValue()C
move-result v4
invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtensionValue(C)Ljava/lang/String;
move-result-object v4
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1a
:cond_40
if-eqz p0, :cond_68
invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getLDMLKeywordKeys()Ljava/util/Set;
move-result-object p0
if-eqz p0, :cond_68
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result p0
if-eqz p0, :cond_68
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object p0
check-cast p0, Ljava/lang/String;
invoke-virtual {p1, p0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getLDMLKeywordType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->bcp47ToLDMLKey(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->bcp47ToLDMLType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4c
:cond_68
invoke-virtual {v3}, Ljava/util/TreeMap;->size()I
move-result p0
if-lez p0, :cond_a5
const-string p0, "@"
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;
move-result-object p0
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object p1
const/4 p0, 0x0
:goto_7c
invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a5
if-eqz p0, :cond_a3
const-string v0, ";"
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_89
invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto :goto_7c
:cond_a3
const/4 p0, 0x1
goto :goto_89
:cond_a5
move-object p0, v3
:goto_a6
new-instance p0, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p1
invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
return-object p0
:cond_b0
move-object p0, v0
goto :goto_a6
.end method
.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0, p1}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywords()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getName(Ljava/lang/String;)Ljava/lang/String;
.registers 4
sget-object v1, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v1, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_19
new-instance v1, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$IDParser;->getName()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_19
return-object v0
.end method
.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getScript()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
.registers 9
:goto_0
:try_start_0
const-string v4, "currency"
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_18
const-string v4, "Currencies"
invoke-virtual {p3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v3
invoke-virtual {v3, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;
move-result-object v4
:goto_17
return-object v4
:cond_18
invoke-virtual {p3, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_74
move-result-object v3
if-eqz p1, :cond_22
:try_start_1e
invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v3
:cond_22
invoke-virtual {v3, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
:try_end_25
.catch Ljava/util/MissingResourceException; {:try_start_1e .. :try_end_25} :catch_27
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_74
move-result-object v4
goto :goto_17
:catch_27
move-exception v4
move-object v1, v4
if-nez p1, :cond_4b
const/4 v0, 0x0
:try_start_2c
const-string v4, "Countries"
invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3d
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->getCurrentCountryID(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_38
:goto_38
invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
goto :goto_17
:cond_3d
const-string v4, "Languages"
invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_38
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->getCurrentLanguageID(Ljava/lang/String;)Ljava/lang/String;
:try_end_48
.catch Ljava/util/MissingResourceException; {:try_start_2c .. :try_end_48} :catch_4a
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_48} :catch_74
move-result-object v0
goto :goto_38
:catch_4a
move-exception v4
:cond_4b
:try_start_4b
const-string v4, "Fallback"
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_5d
const-string v2, "root"
:cond_5d
invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v4
iget-object v4, v4, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6b
move-object v4, p2
goto :goto_17
:cond_6b
const-string v4, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v4, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object p3
check-cast p3, Lcom/ibm/icu/impl/ICUResourceBundle;
:try_end_73
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_73} :catch_74
goto :goto_0
:catch_74
move-exception v4
move-object v4, p2
goto :goto_17
.end method
.method private static getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_14
:try_start_6
const-string v1, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v1, p3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
:try_end_11
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_13
move-result-object v1
:goto_12
return-object v1
:catch_13
move-exception v1
:cond_14
move-object v1, p2
goto :goto_12
.end method
.method public static getVariant(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getVariant()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static initCANONICALIZE_MAP()V
.registers 10
const/4 v9, 0x0
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
sget-object v2, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
if-nez v2, :cond_421
const/16 v2, 0x32
new-array v0, v2, [[Ljava/lang/String;
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/String;
const-string v3, "C"
aput-object v3, v2, v5
const-string v3, "en_US_POSIX"
aput-object v3, v2, v6
aput-object v9, v2, v7
aput-object v9, v2, v8
aput-object v2, v0, v5
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/String;
const-string v3, "art_LOJBAN"
aput-object v3, v2, v5
const-string v3, "jbo"
aput-object v3, v2, v6
aput-object v9, v2, v7
aput-object v9, v2, v8
aput-object v2, v0, v6
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/String;
const-string v3, "az_AZ_CYRL"
aput-object v3, v2, v5
const-string v3, "az_Cyrl_AZ"
aput-object v3, v2, v6
aput-object v9, v2, v7
aput-object v9, v2, v8
aput-object v2, v0, v7
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/String;
const-string v3, "az_AZ_LATN"
aput-object v3, v2, v5
const-string v3, "az_Latn_AZ"
aput-object v3, v2, v6
aput-object v9, v2, v7
aput-object v9, v2, v8
aput-object v2, v0, v8
const/4 v2, 0x4
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "ca_ES_PREEURO"
aput-object v4, v3, v5
const-string v4, "ca_ES"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ESP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/4 v2, 0x5
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "cel_GAULISH"
aput-object v4, v3, v5
const-string v4, "cel__GAULISH"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/4 v2, 0x6
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de_1901"
aput-object v4, v3, v5
const-string v4, "de__1901"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/4 v2, 0x7
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de_1906"
aput-object v4, v3, v5
const-string v4, "de__1906"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x8
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de__PHONEBOOK"
aput-object v4, v3, v5
const-string v4, "de"
aput-object v4, v3, v6
const-string v4, "collation"
aput-object v4, v3, v7
const-string v4, "phonebook"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x9
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de_AT_PREEURO"
aput-object v4, v3, v5
const-string v4, "de_AT"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ATS"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xa
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de_DE_PREEURO"
aput-object v4, v3, v5
const-string v4, "de_DE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "DEM"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xb
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "de_LU_PREEURO"
aput-object v4, v3, v5
const-string v4, "de_LU"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "EUR"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xc
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "el_GR_PREEURO"
aput-object v4, v3, v5
const-string v4, "el_GR"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "GRD"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xd
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "en_BOONT"
aput-object v4, v3, v5
const-string v4, "en__BOONT"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xe
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "en_SCOUSE"
aput-object v4, v3, v5
const-string v4, "en__SCOUSE"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0xf
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "en_BE_PREEURO"
aput-object v4, v3, v5
const-string v4, "en_BE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "BEF"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x10
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "en_IE_PREEURO"
aput-object v4, v3, v5
const-string v4, "en_IE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "IEP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x11
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "es__TRADITIONAL"
aput-object v4, v3, v5
const-string v4, "es"
aput-object v4, v3, v6
const-string v4, "collation"
aput-object v4, v3, v7
const-string v4, "traditional"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x12
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "es_ES_PREEURO"
aput-object v4, v3, v5
const-string v4, "es_ES"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ESP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x13
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "eu_ES_PREEURO"
aput-object v4, v3, v5
const-string v4, "eu_ES"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ESP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x14
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "fi_FI_PREEURO"
aput-object v4, v3, v5
const-string v4, "fi_FI"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "FIM"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x15
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "fr_BE_PREEURO"
aput-object v4, v3, v5
const-string v4, "fr_BE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "BEF"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x16
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "fr_FR_PREEURO"
aput-object v4, v3, v5
const-string v4, "fr_FR"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "FRF"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x17
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "fr_LU_PREEURO"
aput-object v4, v3, v5
const-string v4, "fr_LU"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "LUF"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x18
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "ga_IE_PREEURO"
aput-object v4, v3, v5
const-string v4, "ga_IE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "IEP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x19
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "gl_ES_PREEURO"
aput-object v4, v3, v5
const-string v4, "gl_ES"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ESP"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1a
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "hi__DIRECT"
aput-object v4, v3, v5
const-string v4, "hi"
aput-object v4, v3, v6
const-string v4, "collation"
aput-object v4, v3, v7
const-string v4, "direct"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1b
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "it_IT_PREEURO"
aput-object v4, v3, v5
const-string v4, "it_IT"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "ITL"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1c
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "ja_JP_TRADITIONAL"
aput-object v4, v3, v5
const-string v4, "ja_JP"
aput-object v4, v3, v6
const-string v4, "calendar"
aput-object v4, v3, v7
const-string v4, "japanese"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1d
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "nl_BE_PREEURO"
aput-object v4, v3, v5
const-string v4, "nl_BE"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "BEF"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1e
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "nl_NL_PREEURO"
aput-object v4, v3, v5
const-string v4, "nl_NL"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "NLG"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x1f
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "pt_PT_PREEURO"
aput-object v4, v3, v5
const-string v4, "pt_PT"
aput-object v4, v3, v6
const-string v4, "currency"
aput-object v4, v3, v7
const-string v4, "PTE"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x20
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "sl_ROZAJ"
aput-object v4, v3, v5
const-string v4, "sl__ROZAJ"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x21
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "sr_SP_CYRL"
aput-object v4, v3, v5
const-string v4, "sr_Cyrl_RS"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x22
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "sr_SP_LATN"
aput-object v4, v3, v5
const-string v4, "sr_Latn_RS"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x23
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "sr_YU_CYRILLIC"
aput-object v4, v3, v5
const-string v4, "sr_Cyrl_RS"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x24
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "th_TH_TRADITIONAL"
aput-object v4, v3, v5
const-string v4, "th_TH"
aput-object v4, v3, v6
const-string v4, "calendar"
aput-object v4, v3, v7
const-string v4, "buddhist"
aput-object v4, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x25
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "uz_UZ_CYRILLIC"
aput-object v4, v3, v5
const-string v4, "uz_Cyrl_UZ"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x26
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "uz_UZ_CYRL"
aput-object v4, v3, v5
const-string v4, "uz_Cyrl_UZ"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x27
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "uz_UZ_LATN"
aput-object v4, v3, v5
const-string v4, "uz_Latn_UZ"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x28
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_CHS"
aput-object v4, v3, v5
const-string v4, "zh_Hans"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x29
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_CHT"
aput-object v4, v3, v5
const-string v4, "zh_Hant"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2a
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_GAN"
aput-object v4, v3, v5
const-string v4, "zh__GAN"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2b
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_GUOYU"
aput-object v4, v3, v5
const-string v4, "zh"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2c
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_HAKKA"
aput-object v4, v3, v5
const-string v4, "zh__HAKKA"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2d
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_MIN"
aput-object v4, v3, v5
const-string v4, "zh__MIN"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2e
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_MIN_NAN"
aput-object v4, v3, v5
const-string v4, "zh__MINNAN"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x2f
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_WUU"
aput-object v4, v3, v5
const-string v4, "zh__WUU"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x30
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_XIANG"
aput-object v4, v3, v5
const-string v4, "zh__XIANG"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const/16 v2, 0x31
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/String;
const-string v4, "zh_YUE"
aput-object v4, v3, v5
const-string v4, "zh__YUE"
aput-object v4, v3, v6
aput-object v9, v3, v7
aput-object v9, v3, v8
aput-object v3, v0, v2
const-class v2, Lcom/ibm/icu/util/ULocale;
monitor-enter v2
:try_start_41a
sget-object v3, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
if-nez v3, :cond_420
sput-object v0, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
:cond_420
monitor-exit v2
:try_end_421
.catchall {:try_start_41a .. :try_end_421} :catchall_462
:cond_421
sget-object v2, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
if-nez v2, :cond_461
new-array v1, v8, [[Ljava/lang/String;
new-array v2, v8, [Ljava/lang/String;
const-string v3, "EURO"
aput-object v3, v2, v5
const-string v3, "currency"
aput-object v3, v2, v6
const-string v3, "EUR"
aput-object v3, v2, v7
aput-object v2, v1, v5
new-array v2, v8, [Ljava/lang/String;
const-string v3, "PINYIN"
aput-object v3, v2, v5
const-string v3, "collation"
aput-object v3, v2, v6
const-string v3, "pinyin"
aput-object v3, v2, v7
aput-object v2, v1, v6
new-array v2, v8, [Ljava/lang/String;
const-string v3, "STROKE"
aput-object v3, v2, v5
const-string v3, "collation"
aput-object v3, v2, v6
const-string v3, "stroke"
aput-object v3, v2, v7
aput-object v2, v1, v7
const-class v2, Lcom/ibm/icu/util/ULocale;
monitor-enter v2
:try_start_45a
sget-object v3, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
if-nez v3, :cond_460
sput-object v1, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
:cond_460
monitor-exit v2
:cond_461
:try_end_461
.catchall {:try_start_45a .. :try_end_461} :catchall_465
return-void
:catchall_462
move-exception v3
:try_start_463
monitor-exit v2
:try_end_464
.catchall {:try_start_463 .. :try_end_464} :catchall_462
throw v3
:catchall_465
move-exception v3
:try_start_466
monitor-exit v2
:try_end_467
.catchall {:try_start_466 .. :try_end_467} :catchall_465
throw v3
.end method
.method private static initCountryTables()V
.registers 13
const/4 v12, 0x4
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
sget-object v6, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
if-nez v6, :cond_c31
const/16 v6, 0xf6
new-array v0, v6, [Ljava/lang/String;
const-string v6, "AD"
aput-object v6, v0, v8
const-string v6, "AE"
aput-object v6, v0, v9
const-string v6, "AF"
aput-object v6, v0, v10
const-string v6, "AG"
aput-object v6, v0, v11
const-string v6, "AI"
aput-object v6, v0, v12
const/4 v6, 0x5
const-string v7, "AL"
aput-object v7, v0, v6
const/4 v6, 0x6
const-string v7, "AM"
aput-object v7, v0, v6
const/4 v6, 0x7
const-string v7, "AN"
aput-object v7, v0, v6
const/16 v6, 0x8
const-string v7, "AO"
aput-object v7, v0, v6
const/16 v6, 0x9
const-string v7, "AQ"
aput-object v7, v0, v6
const/16 v6, 0xa
const-string v7, "AR"
aput-object v7, v0, v6
const/16 v6, 0xb
const-string v7, "AS"
aput-object v7, v0, v6
const/16 v6, 0xc
const-string v7, "AT"
aput-object v7, v0, v6
const/16 v6, 0xd
const-string v7, "AU"
aput-object v7, v0, v6
const/16 v6, 0xe
const-string v7, "AW"
aput-object v7, v0, v6
const/16 v6, 0xf
const-string v7, "AX"
aput-object v7, v0, v6
const/16 v6, 0x10
const-string v7, "AZ"
aput-object v7, v0, v6
const/16 v6, 0x11
const-string v7, "BA"
aput-object v7, v0, v6
const/16 v6, 0x12
const-string v7, "BB"
aput-object v7, v0, v6
const/16 v6, 0x13
const-string v7, "BD"
aput-object v7, v0, v6
const/16 v6, 0x14
const-string v7, "BE"
aput-object v7, v0, v6
const/16 v6, 0x15
const-string v7, "BF"
aput-object v7, v0, v6
const/16 v6, 0x16
const-string v7, "BG"
aput-object v7, v0, v6
const/16 v6, 0x17
const-string v7, "BH"
aput-object v7, v0, v6
const/16 v6, 0x18
const-string v7, "BI"
aput-object v7, v0, v6
const/16 v6, 0x19
const-string v7, "BJ"
aput-object v7, v0, v6
const/16 v6, 0x1a
const-string v7, "BL"
aput-object v7, v0, v6
const/16 v6, 0x1b
const-string v7, "BM"
aput-object v7, v0, v6
const/16 v6, 0x1c
const-string v7, "BN"
aput-object v7, v0, v6
const/16 v6, 0x1d
const-string v7, "BO"
aput-object v7, v0, v6
const/16 v6, 0x1e
const-string v7, "BR"
aput-object v7, v0, v6
const/16 v6, 0x1f
const-string v7, "BS"
aput-object v7, v0, v6
const/16 v6, 0x20
const-string v7, "BT"
aput-object v7, v0, v6
const/16 v6, 0x21
const-string v7, "BV"
aput-object v7, v0, v6
const/16 v6, 0x22
const-string v7, "BW"
aput-object v7, v0, v6
const/16 v6, 0x23
const-string v7, "BY"
aput-object v7, v0, v6
const/16 v6, 0x24
const-string v7, "BZ"
aput-object v7, v0, v6
const/16 v6, 0x25
const-string v7, "CA"
aput-object v7, v0, v6
const/16 v6, 0x26
const-string v7, "CC"
aput-object v7, v0, v6
const/16 v6, 0x27
const-string v7, "CD"
aput-object v7, v0, v6
const/16 v6, 0x28
const-string v7, "CF"
aput-object v7, v0, v6
const/16 v6, 0x29
const-string v7, "CG"
aput-object v7, v0, v6
const/16 v6, 0x2a
const-string v7, "CH"
aput-object v7, v0, v6
const/16 v6, 0x2b
const-string v7, "CI"
aput-object v7, v0, v6
const/16 v6, 0x2c
const-string v7, "CK"
aput-object v7, v0, v6
const/16 v6, 0x2d
const-string v7, "CL"
aput-object v7, v0, v6
const/16 v6, 0x2e
const-string v7, "CM"
aput-object v7, v0, v6
const/16 v6, 0x2f
const-string v7, "CN"
aput-object v7, v0, v6
const/16 v6, 0x30
const-string v7, "CO"
aput-object v7, v0, v6
const/16 v6, 0x31
const-string v7, "CR"
aput-object v7, v0, v6
const/16 v6, 0x32
const-string v7, "CU"
aput-object v7, v0, v6
const/16 v6, 0x33
const-string v7, "CV"
aput-object v7, v0, v6
const/16 v6, 0x34
const-string v7, "CX"
aput-object v7, v0, v6
const/16 v6, 0x35
const-string v7, "CY"
aput-object v7, v0, v6
const/16 v6, 0x36
const-string v7, "CZ"
aput-object v7, v0, v6
const/16 v6, 0x37
const-string v7, "DE"
aput-object v7, v0, v6
const/16 v6, 0x38
const-string v7, "DJ"
aput-object v7, v0, v6
const/16 v6, 0x39
const-string v7, "DK"
aput-object v7, v0, v6
const/16 v6, 0x3a
const-string v7, "DM"
aput-object v7, v0, v6
const/16 v6, 0x3b
const-string v7, "DO"
aput-object v7, v0, v6
const/16 v6, 0x3c
const-string v7, "DZ"
aput-object v7, v0, v6
const/16 v6, 0x3d
const-string v7, "EC"
aput-object v7, v0, v6
const/16 v6, 0x3e
const-string v7, "EE"
aput-object v7, v0, v6
const/16 v6, 0x3f
const-string v7, "EG"
aput-object v7, v0, v6
const/16 v6, 0x40
const-string v7, "EH"
aput-object v7, v0, v6
const/16 v6, 0x41
const-string v7, "ER"
aput-object v7, v0, v6
const/16 v6, 0x42
const-string v7, "ES"
aput-object v7, v0, v6
const/16 v6, 0x43
const-string v7, "ET"
aput-object v7, v0, v6
const/16 v6, 0x44
const-string v7, "FI"
aput-object v7, v0, v6
const/16 v6, 0x45
const-string v7, "FJ"
aput-object v7, v0, v6
const/16 v6, 0x46
const-string v7, "FK"
aput-object v7, v0, v6
const/16 v6, 0x47
const-string v7, "FM"
aput-object v7, v0, v6
const/16 v6, 0x48
const-string v7, "FO"
aput-object v7, v0, v6
const/16 v6, 0x49
const-string v7, "FR"
aput-object v7, v0, v6
const/16 v6, 0x4a
const-string v7, "GA"
aput-object v7, v0, v6
const/16 v6, 0x4b
const-string v7, "GB"
aput-object v7, v0, v6
const/16 v6, 0x4c
const-string v7, "GD"
aput-object v7, v0, v6
const/16 v6, 0x4d
const-string v7, "GE"
aput-object v7, v0, v6
const/16 v6, 0x4e
const-string v7, "GF"
aput-object v7, v0, v6
const/16 v6, 0x4f
const-string v7, "GG"
aput-object v7, v0, v6
const/16 v6, 0x50
const-string v7, "GH"
aput-object v7, v0, v6
const/16 v6, 0x51
const-string v7, "GI"
aput-object v7, v0, v6
const/16 v6, 0x52
const-string v7, "GL"
aput-object v7, v0, v6
const/16 v6, 0x53
const-string v7, "GM"
aput-object v7, v0, v6
const/16 v6, 0x54
const-string v7, "GN"
aput-object v7, v0, v6
const/16 v6, 0x55
const-string v7, "GP"
aput-object v7, v0, v6
const/16 v6, 0x56
const-string v7, "GQ"
aput-object v7, v0, v6
const/16 v6, 0x57
const-string v7, "GR"
aput-object v7, v0, v6
const/16 v6, 0x58
const-string v7, "GS"
aput-object v7, v0, v6
const/16 v6, 0x59
const-string v7, "GT"
aput-object v7, v0, v6
const/16 v6, 0x5a
const-string v7, "GU"
aput-object v7, v0, v6
const/16 v6, 0x5b
const-string v7, "GW"
aput-object v7, v0, v6
const/16 v6, 0x5c
const-string v7, "GY"
aput-object v7, v0, v6
const/16 v6, 0x5d
const-string v7, "HK"
aput-object v7, v0, v6
const/16 v6, 0x5e
const-string v7, "HM"
aput-object v7, v0, v6
const/16 v6, 0x5f
const-string v7, "HN"
aput-object v7, v0, v6
const/16 v6, 0x60
const-string v7, "HR"
aput-object v7, v0, v6
const/16 v6, 0x61
const-string v7, "HT"
aput-object v7, v0, v6
const/16 v6, 0x62
const-string v7, "HU"
aput-object v7, v0, v6
const/16 v6, 0x63
const-string v7, "ID"
aput-object v7, v0, v6
const/16 v6, 0x64
const-string v7, "IE"
aput-object v7, v0, v6
const/16 v6, 0x65
const-string v7, "IL"
aput-object v7, v0, v6
const/16 v6, 0x66
const-string v7, "IM"
aput-object v7, v0, v6
const/16 v6, 0x67
const-string v7, "IN"
aput-object v7, v0, v6
const/16 v6, 0x68
const-string v7, "IO"
aput-object v7, v0, v6
const/16 v6, 0x69
const-string v7, "IQ"
aput-object v7, v0, v6
const/16 v6, 0x6a
const-string v7, "IR"
aput-object v7, v0, v6
const/16 v6, 0x6b
const-string v7, "IS"
aput-object v7, v0, v6
const/16 v6, 0x6c
const-string v7, "IT"
aput-object v7, v0, v6
const/16 v6, 0x6d
const-string v7, "JE"
aput-object v7, v0, v6
const/16 v6, 0x6e
const-string v7, "JM"
aput-object v7, v0, v6
const/16 v6, 0x6f
const-string v7, "JO"
aput-object v7, v0, v6
const/16 v6, 0x70
const-string v7, "JP"
aput-object v7, v0, v6
const/16 v6, 0x71
const-string v7, "KE"
aput-object v7, v0, v6
const/16 v6, 0x72
const-string v7, "KG"
aput-object v7, v0, v6
const/16 v6, 0x73
const-string v7, "KH"
aput-object v7, v0, v6
const/16 v6, 0x74
const-string v7, "KI"
aput-object v7, v0, v6
const/16 v6, 0x75
const-string v7, "KM"
aput-object v7, v0, v6
const/16 v6, 0x76
const-string v7, "KN"
aput-object v7, v0, v6
const/16 v6, 0x77
const-string v7, "KP"
aput-object v7, v0, v6
const/16 v6, 0x78
const-string v7, "KR"
aput-object v7, v0, v6
const/16 v6, 0x79
const-string v7, "KW"
aput-object v7, v0, v6
const/16 v6, 0x7a
const-string v7, "KY"
aput-object v7, v0, v6
const/16 v6, 0x7b
const-string v7, "KZ"
aput-object v7, v0, v6
const/16 v6, 0x7c
const-string v7, "LA"
aput-object v7, v0, v6
const/16 v6, 0x7d
const-string v7, "LB"
aput-object v7, v0, v6
const/16 v6, 0x7e
const-string v7, "LC"
aput-object v7, v0, v6
const/16 v6, 0x7f
const-string v7, "LI"
aput-object v7, v0, v6
const/16 v6, 0x80
const-string v7, "LK"
aput-object v7, v0, v6
const/16 v6, 0x81
const-string v7, "LR"
aput-object v7, v0, v6
const/16 v6, 0x82
const-string v7, "LS"
aput-object v7, v0, v6
const/16 v6, 0x83
const-string v7, "LT"
aput-object v7, v0, v6
const/16 v6, 0x84
const-string v7, "LU"
aput-object v7, v0, v6
const/16 v6, 0x85
const-string v7, "LV"
aput-object v7, v0, v6
const/16 v6, 0x86
const-string v7, "LY"
aput-object v7, v0, v6
const/16 v6, 0x87
const-string v7, "MA"
aput-object v7, v0, v6
const/16 v6, 0x88
const-string v7, "MC"
aput-object v7, v0, v6
const/16 v6, 0x89
const-string v7, "MD"
aput-object v7, v0, v6
const/16 v6, 0x8a
const-string v7, "ME"
aput-object v7, v0, v6
const/16 v6, 0x8b
const-string v7, "MF"
aput-object v7, v0, v6
const/16 v6, 0x8c
const-string v7, "MG"
aput-object v7, v0, v6
const/16 v6, 0x8d
const-string v7, "MH"
aput-object v7, v0, v6
const/16 v6, 0x8e
const-string v7, "MK"
aput-object v7, v0, v6
const/16 v6, 0x8f
const-string v7, "ML"
aput-object v7, v0, v6
const/16 v6, 0x90
const-string v7, "MM"
aput-object v7, v0, v6
const/16 v6, 0x91
const-string v7, "MN"
aput-object v7, v0, v6
const/16 v6, 0x92
const-string v7, "MO"
aput-object v7, v0, v6
const/16 v6, 0x93
const-string v7, "MP"
aput-object v7, v0, v6
const/16 v6, 0x94
const-string v7, "MQ"
aput-object v7, v0, v6
const/16 v6, 0x95
const-string v7, "MR"
aput-object v7, v0, v6
const/16 v6, 0x96
const-string v7, "MS"
aput-object v7, v0, v6
const/16 v6, 0x97
const-string v7, "MT"
aput-object v7, v0, v6
const/16 v6, 0x98
const-string v7, "MU"
aput-object v7, v0, v6
const/16 v6, 0x99
const-string v7, "MV"
aput-object v7, v0, v6
const/16 v6, 0x9a
const-string v7, "MW"
aput-object v7, v0, v6
const/16 v6, 0x9b
const-string v7, "MX"
aput-object v7, v0, v6
const/16 v6, 0x9c
const-string v7, "MY"
aput-object v7, v0, v6
const/16 v6, 0x9d
const-string v7, "MZ"
aput-object v7, v0, v6
const/16 v6, 0x9e
const-string v7, "NA"
aput-object v7, v0, v6
const/16 v6, 0x9f
const-string v7, "NC"
aput-object v7, v0, v6
const/16 v6, 0xa0
const-string v7, "NE"
aput-object v7, v0, v6
const/16 v6, 0xa1
const-string v7, "NF"
aput-object v7, v0, v6
const/16 v6, 0xa2
const-string v7, "NG"
aput-object v7, v0, v6
const/16 v6, 0xa3
const-string v7, "NI"
aput-object v7, v0, v6
const/16 v6, 0xa4
const-string v7, "NL"
aput-object v7, v0, v6
const/16 v6, 0xa5
const-string v7, "NO"
aput-object v7, v0, v6
const/16 v6, 0xa6
const-string v7, "NP"
aput-object v7, v0, v6
const/16 v6, 0xa7
const-string v7, "NR"
aput-object v7, v0, v6
const/16 v6, 0xa8
const-string v7, "NU"
aput-object v7, v0, v6
const/16 v6, 0xa9
const-string v7, "NZ"
aput-object v7, v0, v6
const/16 v6, 0xaa
const-string v7, "OM"
aput-object v7, v0, v6
const/16 v6, 0xab
const-string v7, "PA"
aput-object v7, v0, v6
const/16 v6, 0xac
const-string v7, "PE"
aput-object v7, v0, v6
const/16 v6, 0xad
const-string v7, "PF"
aput-object v7, v0, v6
const/16 v6, 0xae
const-string v7, "PG"
aput-object v7, v0, v6
const/16 v6, 0xaf
const-string v7, "PH"
aput-object v7, v0, v6
const/16 v6, 0xb0
const-string v7, "PK"
aput-object v7, v0, v6
const/16 v6, 0xb1
const-string v7, "PL"
aput-object v7, v0, v6
const/16 v6, 0xb2
const-string v7, "PM"
aput-object v7, v0, v6
const/16 v6, 0xb3
const-string v7, "PN"
aput-object v7, v0, v6
const/16 v6, 0xb4
const-string v7, "PR"
aput-object v7, v0, v6
const/16 v6, 0xb5
const-string v7, "PS"
aput-object v7, v0, v6
const/16 v6, 0xb6
const-string v7, "PT"
aput-object v7, v0, v6
const/16 v6, 0xb7
const-string v7, "PW"
aput-object v7, v0, v6
const/16 v6, 0xb8
const-string v7, "PY"
aput-object v7, v0, v6
const/16 v6, 0xb9
const-string v7, "QA"
aput-object v7, v0, v6
const/16 v6, 0xba
const-string v7, "RE"
aput-object v7, v0, v6
const/16 v6, 0xbb
const-string v7, "RO"
aput-object v7, v0, v6
const/16 v6, 0xbc
const-string v7, "RS"
aput-object v7, v0, v6
const/16 v6, 0xbd
const-string v7, "RU"
aput-object v7, v0, v6
const/16 v6, 0xbe
const-string v7, "RW"
aput-object v7, v0, v6
const/16 v6, 0xbf
const-string v7, "SA"
aput-object v7, v0, v6
const/16 v6, 0xc0
const-string v7, "SB"
aput-object v7, v0, v6
const/16 v6, 0xc1
const-string v7, "SC"
aput-object v7, v0, v6
const/16 v6, 0xc2
const-string v7, "SD"
aput-object v7, v0, v6
const/16 v6, 0xc3
const-string v7, "SE"
aput-object v7, v0, v6
const/16 v6, 0xc4
const-string v7, "SG"
aput-object v7, v0, v6
const/16 v6, 0xc5
const-string v7, "SH"
aput-object v7, v0, v6
const/16 v6, 0xc6
const-string v7, "SI"
aput-object v7, v0, v6
const/16 v6, 0xc7
const-string v7, "SJ"
aput-object v7, v0, v6
const/16 v6, 0xc8
const-string v7, "SK"
aput-object v7, v0, v6
const/16 v6, 0xc9
const-string v7, "SL"
aput-object v7, v0, v6
const/16 v6, 0xca
const-string v7, "SM"
aput-object v7, v0, v6
const/16 v6, 0xcb
const-string v7, "SN"
aput-object v7, v0, v6
const/16 v6, 0xcc
const-string v7, "SO"
aput-object v7, v0, v6
const/16 v6, 0xcd
const-string v7, "SR"
aput-object v7, v0, v6
const/16 v6, 0xce
const-string v7, "ST"
aput-object v7, v0, v6
const/16 v6, 0xcf
const-string v7, "SV"
aput-object v7, v0, v6
const/16 v6, 0xd0
const-string v7, "SY"
aput-object v7, v0, v6
const/16 v6, 0xd1
const-string v7, "SZ"
aput-object v7, v0, v6
const/16 v6, 0xd2
const-string v7, "TC"
aput-object v7, v0, v6
const/16 v6, 0xd3
const-string v7, "TD"
aput-object v7, v0, v6
const/16 v6, 0xd4
const-string v7, "TF"
aput-object v7, v0, v6
const/16 v6, 0xd5
const-string v7, "TG"
aput-object v7, v0, v6
const/16 v6, 0xd6
const-string v7, "TH"
aput-object v7, v0, v6
const/16 v6, 0xd7
const-string v7, "TJ"
aput-object v7, v0, v6
const/16 v6, 0xd8
const-string v7, "TK"
aput-object v7, v0, v6
const/16 v6, 0xd9
const-string v7, "TL"
aput-object v7, v0, v6
const/16 v6, 0xda
const-string v7, "TM"
aput-object v7, v0, v6
const/16 v6, 0xdb
const-string v7, "TN"
aput-object v7, v0, v6
const/16 v6, 0xdc
const-string v7, "TO"
aput-object v7, v0, v6
const/16 v6, 0xdd
const-string v7, "TR"
aput-object v7, v0, v6
const/16 v6, 0xde
const-string v7, "TT"
aput-object v7, v0, v6
const/16 v6, 0xdf
const-string v7, "TV"
aput-object v7, v0, v6
const/16 v6, 0xe0
const-string v7, "TW"
aput-object v7, v0, v6
const/16 v6, 0xe1
const-string v7, "TZ"
aput-object v7, v0, v6
const/16 v6, 0xe2
const-string v7, "UA"
aput-object v7, v0, v6
const/16 v6, 0xe3
const-string v7, "UG"
aput-object v7, v0, v6
const/16 v6, 0xe4
const-string v7, "UM"
aput-object v7, v0, v6
const/16 v6, 0xe5
const-string v7, "US"
aput-object v7, v0, v6
const/16 v6, 0xe6
const-string v7, "UY"
aput-object v7, v0, v6
const/16 v6, 0xe7
const-string v7, "UZ"
aput-object v7, v0, v6
const/16 v6, 0xe8
const-string v7, "VA"
aput-object v7, v0, v6
const/16 v6, 0xe9
const-string v7, "VC"
aput-object v7, v0, v6
const/16 v6, 0xea
const-string v7, "VE"
aput-object v7, v0, v6
const/16 v6, 0xeb
const-string v7, "VG"
aput-object v7, v0, v6
const/16 v6, 0xec
const-string v7, "VI"
aput-object v7, v0, v6
const/16 v6, 0xed
const-string v7, "VN"
aput-object v7, v0, v6
const/16 v6, 0xee
const-string v7, "VU"
aput-object v7, v0, v6
const/16 v6, 0xef
const-string v7, "WF"
aput-object v7, v0, v6
const/16 v6, 0xf0
const-string v7, "WS"
aput-object v7, v0, v6
const/16 v6, 0xf1
const-string v7, "YE"
aput-object v7, v0, v6
const/16 v6, 0xf2
const-string v7, "YT"
aput-object v7, v0, v6
const/16 v6, 0xf3
const-string v7, "ZA"
aput-object v7, v0, v6
const/16 v6, 0xf4
const-string v7, "ZM"
aput-object v7, v0, v6
const/16 v6, 0xf5
const-string v7, "ZW"
aput-object v7, v0, v6
const/4 v6, 0x6
new-array v3, v6, [Ljava/lang/String;
const-string v6, "FX"
aput-object v6, v3, v8
const-string v6, "CS"
aput-object v6, v3, v9
const-string v6, "RO"
aput-object v6, v3, v10
const-string v6, "TP"
aput-object v6, v3, v11
const-string v6, "YU"
aput-object v6, v3, v12
const/4 v6, 0x5
const-string v7, "ZR"
aput-object v7, v3, v6
const/16 v6, 0xa
new-array v2, v6, [Ljava/lang/String;
const-string v6, "BU"
aput-object v6, v2, v8
const-string v6, "CS"
aput-object v6, v2, v9
const-string v6, "DY"
aput-object v6, v2, v10
const-string v6, "FX"
aput-object v6, v2, v11
const-string v6, "HV"
aput-object v6, v2, v12
const/4 v6, 0x5
const-string v7, "NH"
aput-object v7, v2, v6
const/4 v6, 0x6
const-string v7, "RH"
aput-object v7, v2, v6
const/4 v6, 0x7
const-string v7, "TP"
aput-object v7, v2, v6
const/16 v6, 0x8
const-string v7, "YU"
aput-object v7, v2, v6
const/16 v6, 0x9
const-string v7, "ZR"
aput-object v7, v2, v6
const/16 v6, 0xa
new-array v5, v6, [Ljava/lang/String;
const-string v6, "MM"
aput-object v6, v5, v8
const-string v6, "RS"
aput-object v6, v5, v9
const-string v6, "BJ"
aput-object v6, v5, v10
const-string v6, "FR"
aput-object v6, v5, v11
const-string v6, "BF"
aput-object v6, v5, v12
const/4 v6, 0x5
const-string v7, "VU"
aput-object v7, v5, v6
const/4 v6, 0x6
const-string v7, "ZW"
aput-object v7, v5, v6
const/4 v6, 0x7
const-string v7, "TL"
aput-object v7, v5, v6
const/16 v6, 0x8
const-string v7, "RS"
aput-object v7, v5, v6
const/16 v6, 0x9
const-string v7, "CD"
aput-object v7, v5, v6
const/16 v6, 0xf6
new-array v1, v6, [Ljava/lang/String;
const-string v6, "AND"
aput-object v6, v1, v8
const-string v6, "ARE"
aput-object v6, v1, v9
const-string v6, "AFG"
aput-object v6, v1, v10
const-string v6, "ATG"
aput-object v6, v1, v11
const-string v6, "AIA"
aput-object v6, v1, v12
const/4 v6, 0x5
const-string v7, "ALB"
aput-object v7, v1, v6
const/4 v6, 0x6
const-string v7, "ARM"
aput-object v7, v1, v6
const/4 v6, 0x7
const-string v7, "ANT"
aput-object v7, v1, v6
const/16 v6, 0x8
const-string v7, "AGO"
aput-object v7, v1, v6
const/16 v6, 0x9
const-string v7, "ATA"
aput-object v7, v1, v6
const/16 v6, 0xa
const-string v7, "ARG"
aput-object v7, v1, v6
const/16 v6, 0xb
const-string v7, "ASM"
aput-object v7, v1, v6
const/16 v6, 0xc
const-string v7, "AUT"
aput-object v7, v1, v6
const/16 v6, 0xd
const-string v7, "AUS"
aput-object v7, v1, v6
const/16 v6, 0xe
const-string v7, "ABW"
aput-object v7, v1, v6
const/16 v6, 0xf
const-string v7, "ALA"
aput-object v7, v1, v6
const/16 v6, 0x10
const-string v7, "AZE"
aput-object v7, v1, v6
const/16 v6, 0x11
const-string v7, "BIH"
aput-object v7, v1, v6
const/16 v6, 0x12
const-string v7, "BRB"
aput-object v7, v1, v6
const/16 v6, 0x13
const-string v7, "BGD"
aput-object v7, v1, v6
const/16 v6, 0x14
const-string v7, "BEL"
aput-object v7, v1, v6
const/16 v6, 0x15
const-string v7, "BFA"
aput-object v7, v1, v6
const/16 v6, 0x16
const-string v7, "BGR"
aput-object v7, v1, v6
const/16 v6, 0x17
const-string v7, "BHR"
aput-object v7, v1, v6
const/16 v6, 0x18
const-string v7, "BDI"
aput-object v7, v1, v6
const/16 v6, 0x19
const-string v7, "BEN"
aput-object v7, v1, v6
const/16 v6, 0x1a
const-string v7, "BLM"
aput-object v7, v1, v6
const/16 v6, 0x1b
const-string v7, "BMU"
aput-object v7, v1, v6
const/16 v6, 0x1c
const-string v7, "BRN"
aput-object v7, v1, v6
const/16 v6, 0x1d
const-string v7, "BOL"
aput-object v7, v1, v6
const/16 v6, 0x1e
const-string v7, "BRA"
aput-object v7, v1, v6
const/16 v6, 0x1f
const-string v7, "BHS"
aput-object v7, v1, v6
const/16 v6, 0x20
const-string v7, "BTN"
aput-object v7, v1, v6
const/16 v6, 0x21
const-string v7, "BVT"
aput-object v7, v1, v6
const/16 v6, 0x22
const-string v7, "BWA"
aput-object v7, v1, v6
const/16 v6, 0x23
const-string v7, "BLR"
aput-object v7, v1, v6
const/16 v6, 0x24
const-string v7, "BLZ"
aput-object v7, v1, v6
const/16 v6, 0x25
const-string v7, "CAN"
aput-object v7, v1, v6
const/16 v6, 0x26
const-string v7, "CCK"
aput-object v7, v1, v6
const/16 v6, 0x27
const-string v7, "COD"
aput-object v7, v1, v6
const/16 v6, 0x28
const-string v7, "CAF"
aput-object v7, v1, v6
const/16 v6, 0x29
const-string v7, "COG"
aput-object v7, v1, v6
const/16 v6, 0x2a
const-string v7, "CHE"
aput-object v7, v1, v6
const/16 v6, 0x2b
const-string v7, "CIV"
aput-object v7, v1, v6
const/16 v6, 0x2c
const-string v7, "COK"
aput-object v7, v1, v6
const/16 v6, 0x2d
const-string v7, "CHL"
aput-object v7, v1, v6
const/16 v6, 0x2e
const-string v7, "CMR"
aput-object v7, v1, v6
const/16 v6, 0x2f
const-string v7, "CHN"
aput-object v7, v1, v6
const/16 v6, 0x30
const-string v7, "COL"
aput-object v7, v1, v6
const/16 v6, 0x31
const-string v7, "CRI"
aput-object v7, v1, v6
const/16 v6, 0x32
const-string v7, "CUB"
aput-object v7, v1, v6
const/16 v6, 0x33
const-string v7, "CPV"
aput-object v7, v1, v6
const/16 v6, 0x34
const-string v7, "CXR"
aput-object v7, v1, v6
const/16 v6, 0x35
const-string v7, "CYP"
aput-object v7, v1, v6
const/16 v6, 0x36
const-string v7, "CZE"
aput-object v7, v1, v6
const/16 v6, 0x37
const-string v7, "DEU"
aput-object v7, v1, v6
const/16 v6, 0x38
const-string v7, "DJI"
aput-object v7, v1, v6
const/16 v6, 0x39
const-string v7, "DNK"
aput-object v7, v1, v6
const/16 v6, 0x3a
const-string v7, "DMA"
aput-object v7, v1, v6
const/16 v6, 0x3b
const-string v7, "DOM"
aput-object v7, v1, v6
const/16 v6, 0x3c
const-string v7, "DZA"
aput-object v7, v1, v6
const/16 v6, 0x3d
const-string v7, "ECU"
aput-object v7, v1, v6
const/16 v6, 0x3e
const-string v7, "EST"
aput-object v7, v1, v6
const/16 v6, 0x3f
const-string v7, "EGY"
aput-object v7, v1, v6
const/16 v6, 0x40
const-string v7, "ESH"
aput-object v7, v1, v6
const/16 v6, 0x41
const-string v7, "ERI"
aput-object v7, v1, v6
const/16 v6, 0x42
const-string v7, "ESP"
aput-object v7, v1, v6
const/16 v6, 0x43
const-string v7, "ETH"
aput-object v7, v1, v6
const/16 v6, 0x44
const-string v7, "FIN"
aput-object v7, v1, v6
const/16 v6, 0x45
const-string v7, "FJI"
aput-object v7, v1, v6
const/16 v6, 0x46
const-string v7, "FLK"
aput-object v7, v1, v6
const/16 v6, 0x47
const-string v7, "FSM"
aput-object v7, v1, v6
const/16 v6, 0x48
const-string v7, "FRO"
aput-object v7, v1, v6
const/16 v6, 0x49
const-string v7, "FRA"
aput-object v7, v1, v6
const/16 v6, 0x4a
const-string v7, "GAB"
aput-object v7, v1, v6
const/16 v6, 0x4b
const-string v7, "GBR"
aput-object v7, v1, v6
const/16 v6, 0x4c
const-string v7, "GRD"
aput-object v7, v1, v6
const/16 v6, 0x4d
const-string v7, "GEO"
aput-object v7, v1, v6
const/16 v6, 0x4e
const-string v7, "GUF"
aput-object v7, v1, v6
const/16 v6, 0x4f
const-string v7, "GGY"
aput-object v7, v1, v6
const/16 v6, 0x50
const-string v7, "GHA"
aput-object v7, v1, v6
const/16 v6, 0x51
const-string v7, "GIB"
aput-object v7, v1, v6
const/16 v6, 0x52
const-string v7, "GRL"
aput-object v7, v1, v6
const/16 v6, 0x53
const-string v7, "GMB"
aput-object v7, v1, v6
const/16 v6, 0x54
const-string v7, "GIN"
aput-object v7, v1, v6
const/16 v6, 0x55
const-string v7, "GLP"
aput-object v7, v1, v6
const/16 v6, 0x56
const-string v7, "GNQ"
aput-object v7, v1, v6
const/16 v6, 0x57
const-string v7, "GRC"
aput-object v7, v1, v6
const/16 v6, 0x58
const-string v7, "SGS"
aput-object v7, v1, v6
const/16 v6, 0x59
const-string v7, "GTM"
aput-object v7, v1, v6
const/16 v6, 0x5a
const-string v7, "GUM"
aput-object v7, v1, v6
const/16 v6, 0x5b
const-string v7, "GNB"
aput-object v7, v1, v6
const/16 v6, 0x5c
const-string v7, "GUY"
aput-object v7, v1, v6
const/16 v6, 0x5d
const-string v7, "HKG"
aput-object v7, v1, v6
const/16 v6, 0x5e
const-string v7, "HMD"
aput-object v7, v1, v6
const/16 v6, 0x5f
const-string v7, "HND"
aput-object v7, v1, v6
const/16 v6, 0x60
const-string v7, "HRV"
aput-object v7, v1, v6
const/16 v6, 0x61
const-string v7, "HTI"
aput-object v7, v1, v6
const/16 v6, 0x62
const-string v7, "HUN"
aput-object v7, v1, v6
const/16 v6, 0x63
const-string v7, "IDN"
aput-object v7, v1, v6
const/16 v6, 0x64
const-string v7, "IRL"
aput-object v7, v1, v6
const/16 v6, 0x65
const-string v7, "ISR"
aput-object v7, v1, v6
const/16 v6, 0x66
const-string v7, "IMN"
aput-object v7, v1, v6
const/16 v6, 0x67
const-string v7, "IND"
aput-object v7, v1, v6
const/16 v6, 0x68
const-string v7, "IOT"
aput-object v7, v1, v6
const/16 v6, 0x69
const-string v7, "IRQ"
aput-object v7, v1, v6
const/16 v6, 0x6a
const-string v7, "IRN"
aput-object v7, v1, v6
const/16 v6, 0x6b
const-string v7, "ISL"
aput-object v7, v1, v6
const/16 v6, 0x6c
const-string v7, "ITA"
aput-object v7, v1, v6
const/16 v6, 0x6d
const-string v7, "JEY"
aput-object v7, v1, v6
const/16 v6, 0x6e
const-string v7, "JAM"
aput-object v7, v1, v6
const/16 v6, 0x6f
const-string v7, "JOR"
aput-object v7, v1, v6
const/16 v6, 0x70
const-string v7, "JPN"
aput-object v7, v1, v6
const/16 v6, 0x71
const-string v7, "KEN"
aput-object v7, v1, v6
const/16 v6, 0x72
const-string v7, "KGZ"
aput-object v7, v1, v6
const/16 v6, 0x73
const-string v7, "KHM"
aput-object v7, v1, v6
const/16 v6, 0x74
const-string v7, "KIR"
aput-object v7, v1, v6
const/16 v6, 0x75
const-string v7, "COM"
aput-object v7, v1, v6
const/16 v6, 0x76
const-string v7, "KNA"
aput-object v7, v1, v6
const/16 v6, 0x77
const-string v7, "PRK"
aput-object v7, v1, v6
const/16 v6, 0x78
const-string v7, "KOR"
aput-object v7, v1, v6
const/16 v6, 0x79
const-string v7, "KWT"
aput-object v7, v1, v6
const/16 v6, 0x7a
const-string v7, "CYM"
aput-object v7, v1, v6
const/16 v6, 0x7b
const-string v7, "KAZ"
aput-object v7, v1, v6
const/16 v6, 0x7c
const-string v7, "LAO"
aput-object v7, v1, v6
const/16 v6, 0x7d
const-string v7, "LBN"
aput-object v7, v1, v6
const/16 v6, 0x7e
const-string v7, "LCA"
aput-object v7, v1, v6
const/16 v6, 0x7f
const-string v7, "LIE"
aput-object v7, v1, v6
const/16 v6, 0x80
const-string v7, "LKA"
aput-object v7, v1, v6
const/16 v6, 0x81
const-string v7, "LBR"
aput-object v7, v1, v6
const/16 v6, 0x82
const-string v7, "LSO"
aput-object v7, v1, v6
const/16 v6, 0x83
const-string v7, "LTU"
aput-object v7, v1, v6
const/16 v6, 0x84
const-string v7, "LUX"
aput-object v7, v1, v6
const/16 v6, 0x85
const-string v7, "LVA"
aput-object v7, v1, v6
const/16 v6, 0x86
const-string v7, "LBY"
aput-object v7, v1, v6
const/16 v6, 0x87
const-string v7, "MAR"
aput-object v7, v1, v6
const/16 v6, 0x88
const-string v7, "MCO"
aput-object v7, v1, v6
const/16 v6, 0x89
const-string v7, "MDA"
aput-object v7, v1, v6
const/16 v6, 0x8a
const-string v7, "MNE"
aput-object v7, v1, v6
const/16 v6, 0x8b
const-string v7, "MAF"
aput-object v7, v1, v6
const/16 v6, 0x8c
const-string v7, "MDG"
aput-object v7, v1, v6
const/16 v6, 0x8d
const-string v7, "MHL"
aput-object v7, v1, v6
const/16 v6, 0x8e
const-string v7, "MKD"
aput-object v7, v1, v6
const/16 v6, 0x8f
const-string v7, "MLI"
aput-object v7, v1, v6
const/16 v6, 0x90
const-string v7, "MMR"
aput-object v7, v1, v6
const/16 v6, 0x91
const-string v7, "MNG"
aput-object v7, v1, v6
const/16 v6, 0x92
const-string v7, "MAC"
aput-object v7, v1, v6
const/16 v6, 0x93
const-string v7, "MNP"
aput-object v7, v1, v6
const/16 v6, 0x94
const-string v7, "MTQ"
aput-object v7, v1, v6
const/16 v6, 0x95
const-string v7, "MRT"
aput-object v7, v1, v6
const/16 v6, 0x96
const-string v7, "MSR"
aput-object v7, v1, v6
const/16 v6, 0x97
const-string v7, "MLT"
aput-object v7, v1, v6
const/16 v6, 0x98
const-string v7, "MUS"
aput-object v7, v1, v6
const/16 v6, 0x99
const-string v7, "MDV"
aput-object v7, v1, v6
const/16 v6, 0x9a
const-string v7, "MWI"
aput-object v7, v1, v6
const/16 v6, 0x9b
const-string v7, "MEX"
aput-object v7, v1, v6
const/16 v6, 0x9c
const-string v7, "MYS"
aput-object v7, v1, v6
const/16 v6, 0x9d
const-string v7, "MOZ"
aput-object v7, v1, v6
const/16 v6, 0x9e
const-string v7, "NAM"
aput-object v7, v1, v6
const/16 v6, 0x9f
const-string v7, "NCL"
aput-object v7, v1, v6
const/16 v6, 0xa0
const-string v7, "NER"
aput-object v7, v1, v6
const/16 v6, 0xa1
const-string v7, "NFK"
aput-object v7, v1, v6
const/16 v6, 0xa2
const-string v7, "NGA"
aput-object v7, v1, v6
const/16 v6, 0xa3
const-string v7, "NIC"
aput-object v7, v1, v6
const/16 v6, 0xa4
const-string v7, "NLD"
aput-object v7, v1, v6
const/16 v6, 0xa5
const-string v7, "NOR"
aput-object v7, v1, v6
const/16 v6, 0xa6
const-string v7, "NPL"
aput-object v7, v1, v6
const/16 v6, 0xa7
const-string v7, "NRU"
aput-object v7, v1, v6
const/16 v6, 0xa8
const-string v7, "NIU"
aput-object v7, v1, v6
const/16 v6, 0xa9
const-string v7, "NZL"
aput-object v7, v1, v6
const/16 v6, 0xaa
const-string v7, "OMN"
aput-object v7, v1, v6
const/16 v6, 0xab
const-string v7, "PAN"
aput-object v7, v1, v6
const/16 v6, 0xac
const-string v7, "PER"
aput-object v7, v1, v6
const/16 v6, 0xad
const-string v7, "PYF"
aput-object v7, v1, v6
const/16 v6, 0xae
const-string v7, "PNG"
aput-object v7, v1, v6
const/16 v6, 0xaf
const-string v7, "PHL"
aput-object v7, v1, v6
const/16 v6, 0xb0
const-string v7, "PAK"
aput-object v7, v1, v6
const/16 v6, 0xb1
const-string v7, "POL"
aput-object v7, v1, v6
const/16 v6, 0xb2
const-string v7, "SPM"
aput-object v7, v1, v6
const/16 v6, 0xb3
const-string v7, "PCN"
aput-object v7, v1, v6
const/16 v6, 0xb4
const-string v7, "PRI"
aput-object v7, v1, v6
const/16 v6, 0xb5
const-string v7, "PSE"
aput-object v7, v1, v6
const/16 v6, 0xb6
const-string v7, "PRT"
aput-object v7, v1, v6
const/16 v6, 0xb7
const-string v7, "PLW"
aput-object v7, v1, v6
const/16 v6, 0xb8
const-string v7, "PRY"
aput-object v7, v1, v6
const/16 v6, 0xb9
const-string v7, "QAT"
aput-object v7, v1, v6
const/16 v6, 0xba
const-string v7, "REU"
aput-object v7, v1, v6
const/16 v6, 0xbb
const-string v7, "ROU"
aput-object v7, v1, v6
const/16 v6, 0xbc
const-string v7, "SRB"
aput-object v7, v1, v6
const/16 v6, 0xbd
const-string v7, "RUS"
aput-object v7, v1, v6
const/16 v6, 0xbe
const-string v7, "RWA"
aput-object v7, v1, v6
const/16 v6, 0xbf
const-string v7, "SAU"
aput-object v7, v1, v6
const/16 v6, 0xc0
const-string v7, "SLB"
aput-object v7, v1, v6
const/16 v6, 0xc1
const-string v7, "SYC"
aput-object v7, v1, v6
const/16 v6, 0xc2
const-string v7, "SDN"
aput-object v7, v1, v6
const/16 v6, 0xc3
const-string v7, "SWE"
aput-object v7, v1, v6
const/16 v6, 0xc4
const-string v7, "SGP"
aput-object v7, v1, v6
const/16 v6, 0xc5
const-string v7, "SHN"
aput-object v7, v1, v6
const/16 v6, 0xc6
const-string v7, "SVN"
aput-object v7, v1, v6
const/16 v6, 0xc7
const-string v7, "SJM"
aput-object v7, v1, v6
const/16 v6, 0xc8
const-string v7, "SVK"
aput-object v7, v1, v6
const/16 v6, 0xc9
const-string v7, "SLE"
aput-object v7, v1, v6
const/16 v6, 0xca
const-string v7, "SMR"
aput-object v7, v1, v6
const/16 v6, 0xcb
const-string v7, "SEN"
aput-object v7, v1, v6
const/16 v6, 0xcc
const-string v7, "SOM"
aput-object v7, v1, v6
const/16 v6, 0xcd
const-string v7, "SUR"
aput-object v7, v1, v6
const/16 v6, 0xce
const-string v7, "STP"
aput-object v7, v1, v6
const/16 v6, 0xcf
const-string v7, "SLV"
aput-object v7, v1, v6
const/16 v6, 0xd0
const-string v7, "SYR"
aput-object v7, v1, v6
const/16 v6, 0xd1
const-string v7, "SWZ"
aput-object v7, v1, v6
const/16 v6, 0xd2
const-string v7, "TCA"
aput-object v7, v1, v6
const/16 v6, 0xd3
const-string v7, "TCD"
aput-object v7, v1, v6
const/16 v6, 0xd4
const-string v7, "ATF"
aput-object v7, v1, v6
const/16 v6, 0xd5
const-string v7, "TGO"
aput-object v7, v1, v6
const/16 v6, 0xd6
const-string v7, "THA"
aput-object v7, v1, v6
const/16 v6, 0xd7
const-string v7, "TJK"
aput-object v7, v1, v6
const/16 v6, 0xd8
const-string v7, "TKL"
aput-object v7, v1, v6
const/16 v6, 0xd9
const-string v7, "TLS"
aput-object v7, v1, v6
const/16 v6, 0xda
const-string v7, "TKM"
aput-object v7, v1, v6
const/16 v6, 0xdb
const-string v7, "TUN"
aput-object v7, v1, v6
const/16 v6, 0xdc
const-string v7, "TON"
aput-object v7, v1, v6
const/16 v6, 0xdd
const-string v7, "TUR"
aput-object v7, v1, v6
const/16 v6, 0xde
const-string v7, "TTO"
aput-object v7, v1, v6
const/16 v6, 0xdf
const-string v7, "TUV"
aput-object v7, v1, v6
const/16 v6, 0xe0
const-string v7, "TWN"
aput-object v7, v1, v6
const/16 v6, 0xe1
const-string v7, "TZA"
aput-object v7, v1, v6
const/16 v6, 0xe2
const-string v7, "UKR"
aput-object v7, v1, v6
const/16 v6, 0xe3
const-string v7, "UGA"
aput-object v7, v1, v6
const/16 v6, 0xe4
const-string v7, "UMI"
aput-object v7, v1, v6
const/16 v6, 0xe5
const-string v7, "USA"
aput-object v7, v1, v6
const/16 v6, 0xe6
const-string v7, "URY"
aput-object v7, v1, v6
const/16 v6, 0xe7
const-string v7, "UZB"
aput-object v7, v1, v6
const/16 v6, 0xe8
const-string v7, "VAT"
aput-object v7, v1, v6
const/16 v6, 0xe9
const-string v7, "VCT"
aput-object v7, v1, v6
const/16 v6, 0xea
const-string v7, "VEN"
aput-object v7, v1, v6
const/16 v6, 0xeb
const-string v7, "VGB"
aput-object v7, v1, v6
const/16 v6, 0xec
const-string v7, "VIR"
aput-object v7, v1, v6
const/16 v6, 0xed
const-string v7, "VNM"
aput-object v7, v1, v6
const/16 v6, 0xee
const-string v7, "VUT"
aput-object v7, v1, v6
const/16 v6, 0xef
const-string v7, "WLF"
aput-object v7, v1, v6
const/16 v6, 0xf0
const-string v7, "WSM"
aput-object v7, v1, v6
const/16 v6, 0xf1
const-string v7, "YEM"
aput-object v7, v1, v6
const/16 v6, 0xf2
const-string v7, "MYT"
aput-object v7, v1, v6
const/16 v6, 0xf3
const-string v7, "ZAF"
aput-object v7, v1, v6
const/16 v6, 0xf4
const-string v7, "ZMB"
aput-object v7, v1, v6
const/16 v6, 0xf5
const-string v7, "ZWE"
aput-object v7, v1, v6
const/4 v6, 0x6
new-array v4, v6, [Ljava/lang/String;
const-string v6, "FXX"
aput-object v6, v4, v8
const-string v6, "SCG"
aput-object v6, v4, v9
const-string v6, "ROM"
aput-object v6, v4, v10
const-string v6, "TMP"
aput-object v6, v4, v11
const-string v6, "YUG"
aput-object v6, v4, v12
const/4 v6, 0x5
const-string v7, "ZAR"
aput-object v7, v4, v6
const-class v6, Lcom/ibm/icu/util/ULocale;
monitor-enter v6
:try_start_c20
sget-object v7, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
if-nez v7, :cond_c30
sput-object v0, Lcom/ibm/icu/util/ULocale;->_countries:[Ljava/lang/String;
sput-object v2, Lcom/ibm/icu/util/ULocale;->_deprecatedCountries:[Ljava/lang/String;
sput-object v5, Lcom/ibm/icu/util/ULocale;->_replacementCountries:[Ljava/lang/String;
sput-object v3, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries:[Ljava/lang/String;
sput-object v1, Lcom/ibm/icu/util/ULocale;->_countries3:[Ljava/lang/String;
sput-object v4, Lcom/ibm/icu/util/ULocale;->_obsoleteCountries3:[Ljava/lang/String;
:cond_c30
monitor-exit v6
:cond_c31
return-void
:catchall_c32
move-exception v7
monitor-exit v6
:try_end_c34
.catchall {:try_start_c20 .. :try_end_c34} :catchall_c32
throw v7
.end method
.method private static initLanguageTables()V
.registers 12
const/4 v11, 0x4
const/4 v10, 0x3
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
sget-object v5, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
if-nez v5, :cond_1654
const/16 v5, 0x1d5
new-array v0, v5, [Ljava/lang/String;
const-string v5, "aa"
aput-object v5, v0, v7
const-string v5, "ab"
aput-object v5, v0, v8
const-string v5, "ace"
aput-object v5, v0, v9
const-string v5, "ach"
aput-object v5, v0, v10
const-string v5, "ada"
aput-object v5, v0, v11
const/4 v5, 0x5
const-string v6, "ady"
aput-object v6, v0, v5
const/4 v5, 0x6
const-string v6, "ae"
aput-object v6, v0, v5
const/4 v5, 0x7
const-string v6, "af"
aput-object v6, v0, v5
const/16 v5, 0x8
const-string v6, "afa"
aput-object v6, v0, v5
const/16 v5, 0x9
const-string v6, "afh"
aput-object v6, v0, v5
const/16 v5, 0xa
const-string v6, "ak"
aput-object v6, v0, v5
const/16 v5, 0xb
const-string v6, "akk"
aput-object v6, v0, v5
const/16 v5, 0xc
const-string v6, "ale"
aput-object v6, v0, v5
const/16 v5, 0xd
const-string v6, "alg"
aput-object v6, v0, v5
const/16 v5, 0xe
const-string v6, "am"
aput-object v6, v0, v5
const/16 v5, 0xf
const-string v6, "an"
aput-object v6, v0, v5
const/16 v5, 0x10
const-string v6, "ang"
aput-object v6, v0, v5
const/16 v5, 0x11
const-string v6, "apa"
aput-object v6, v0, v5
const/16 v5, 0x12
const-string v6, "ar"
aput-object v6, v0, v5
const/16 v5, 0x13
const-string v6, "arc"
aput-object v6, v0, v5
const/16 v5, 0x14
const-string v6, "arn"
aput-object v6, v0, v5
const/16 v5, 0x15
const-string v6, "arp"
aput-object v6, v0, v5
const/16 v5, 0x16
const-string v6, "art"
aput-object v6, v0, v5
const/16 v5, 0x17
const-string v6, "arw"
aput-object v6, v0, v5
const/16 v5, 0x18
const-string v6, "as"
aput-object v6, v0, v5
const/16 v5, 0x19
const-string v6, "ast"
aput-object v6, v0, v5
const/16 v5, 0x1a
const-string v6, "ath"
aput-object v6, v0, v5
const/16 v5, 0x1b
const-string v6, "aus"
aput-object v6, v0, v5
const/16 v5, 0x1c
const-string v6, "av"
aput-object v6, v0, v5
const/16 v5, 0x1d
const-string v6, "awa"
aput-object v6, v0, v5
const/16 v5, 0x1e
const-string v6, "ay"
aput-object v6, v0, v5
const/16 v5, 0x1f
const-string v6, "az"
aput-object v6, v0, v5
const/16 v5, 0x20
const-string v6, "ba"
aput-object v6, v0, v5
const/16 v5, 0x21
const-string v6, "bad"
aput-object v6, v0, v5
const/16 v5, 0x22
const-string v6, "bai"
aput-object v6, v0, v5
const/16 v5, 0x23
const-string v6, "bal"
aput-object v6, v0, v5
const/16 v5, 0x24
const-string v6, "ban"
aput-object v6, v0, v5
const/16 v5, 0x25
const-string v6, "bas"
aput-object v6, v0, v5
const/16 v5, 0x26
const-string v6, "bat"
aput-object v6, v0, v5
const/16 v5, 0x27
const-string v6, "be"
aput-object v6, v0, v5
const/16 v5, 0x28
const-string v6, "bej"
aput-object v6, v0, v5
const/16 v5, 0x29
const-string v6, "bem"
aput-object v6, v0, v5
const/16 v5, 0x2a
const-string v6, "ber"
aput-object v6, v0, v5
const/16 v5, 0x2b
const-string v6, "bg"
aput-object v6, v0, v5
const/16 v5, 0x2c
const-string v6, "bh"
aput-object v6, v0, v5
const/16 v5, 0x2d
const-string v6, "bho"
aput-object v6, v0, v5
const/16 v5, 0x2e
const-string v6, "bi"
aput-object v6, v0, v5
const/16 v5, 0x2f
const-string v6, "bik"
aput-object v6, v0, v5
const/16 v5, 0x30
const-string v6, "bin"
aput-object v6, v0, v5
const/16 v5, 0x31
const-string v6, "bla"
aput-object v6, v0, v5
const/16 v5, 0x32
const-string v6, "bm"
aput-object v6, v0, v5
const/16 v5, 0x33
const-string v6, "bn"
aput-object v6, v0, v5
const/16 v5, 0x34
const-string v6, "bnt"
aput-object v6, v0, v5
const/16 v5, 0x35
const-string v6, "bo"
aput-object v6, v0, v5
const/16 v5, 0x36
const-string v6, "br"
aput-object v6, v0, v5
const/16 v5, 0x37
const-string v6, "bra"
aput-object v6, v0, v5
const/16 v5, 0x38
const-string v6, "bs"
aput-object v6, v0, v5
const/16 v5, 0x39
const-string v6, "btk"
aput-object v6, v0, v5
const/16 v5, 0x3a
const-string v6, "bua"
aput-object v6, v0, v5
const/16 v5, 0x3b
const-string v6, "bug"
aput-object v6, v0, v5
const/16 v5, 0x3c
const-string v6, "byn"
aput-object v6, v0, v5
const/16 v5, 0x3d
const-string v6, "ca"
aput-object v6, v0, v5
const/16 v5, 0x3e
const-string v6, "cad"
aput-object v6, v0, v5
const/16 v5, 0x3f
const-string v6, "cai"
aput-object v6, v0, v5
const/16 v5, 0x40
const-string v6, "car"
aput-object v6, v0, v5
const/16 v5, 0x41
const-string v6, "cau"
aput-object v6, v0, v5
const/16 v5, 0x42
const-string v6, "ce"
aput-object v6, v0, v5
const/16 v5, 0x43
const-string v6, "ceb"
aput-object v6, v0, v5
const/16 v5, 0x44
const-string v6, "cel"
aput-object v6, v0, v5
const/16 v5, 0x45
const-string v6, "ch"
aput-object v6, v0, v5
const/16 v5, 0x46
const-string v6, "chb"
aput-object v6, v0, v5
const/16 v5, 0x47
const-string v6, "chg"
aput-object v6, v0, v5
const/16 v5, 0x48
const-string v6, "chk"
aput-object v6, v0, v5
const/16 v5, 0x49
const-string v6, "chm"
aput-object v6, v0, v5
const/16 v5, 0x4a
const-string v6, "chn"
aput-object v6, v0, v5
const/16 v5, 0x4b
const-string v6, "cho"
aput-object v6, v0, v5
const/16 v5, 0x4c
const-string v6, "chp"
aput-object v6, v0, v5
const/16 v5, 0x4d
const-string v6, "chr"
aput-object v6, v0, v5
const/16 v5, 0x4e
const-string v6, "chy"
aput-object v6, v0, v5
const/16 v5, 0x4f
const-string v6, "cmc"
aput-object v6, v0, v5
const/16 v5, 0x50
const-string v6, "co"
aput-object v6, v0, v5
const/16 v5, 0x51
const-string v6, "cop"
aput-object v6, v0, v5
const/16 v5, 0x52
const-string v6, "cpe"
aput-object v6, v0, v5
const/16 v5, 0x53
const-string v6, "cpf"
aput-object v6, v0, v5
const/16 v5, 0x54
const-string v6, "cpp"
aput-object v6, v0, v5
const/16 v5, 0x55
const-string v6, "cr"
aput-object v6, v0, v5
const/16 v5, 0x56
const-string v6, "crh"
aput-object v6, v0, v5
const/16 v5, 0x57
const-string v6, "crp"
aput-object v6, v0, v5
const/16 v5, 0x58
const-string v6, "cs"
aput-object v6, v0, v5
const/16 v5, 0x59
const-string v6, "csb"
aput-object v6, v0, v5
const/16 v5, 0x5a
const-string v6, "cu"
aput-object v6, v0, v5
const/16 v5, 0x5b
const-string v6, "cus"
aput-object v6, v0, v5
const/16 v5, 0x5c
const-string v6, "cv"
aput-object v6, v0, v5
const/16 v5, 0x5d
const-string v6, "cy"
aput-object v6, v0, v5
const/16 v5, 0x5e
const-string v6, "da"
aput-object v6, v0, v5
const/16 v5, 0x5f
const-string v6, "dak"
aput-object v6, v0, v5
const/16 v5, 0x60
const-string v6, "dar"
aput-object v6, v0, v5
const/16 v5, 0x61
const-string v6, "day"
aput-object v6, v0, v5
const/16 v5, 0x62
const-string v6, "de"
aput-object v6, v0, v5
const/16 v5, 0x63
const-string v6, "del"
aput-object v6, v0, v5
const/16 v5, 0x64
const-string v6, "den"
aput-object v6, v0, v5
const/16 v5, 0x65
const-string v6, "dgr"
aput-object v6, v0, v5
const/16 v5, 0x66
const-string v6, "din"
aput-object v6, v0, v5
const/16 v5, 0x67
const-string v6, "doi"
aput-object v6, v0, v5
const/16 v5, 0x68
const-string v6, "dra"
aput-object v6, v0, v5
const/16 v5, 0x69
const-string v6, "dsb"
aput-object v6, v0, v5
const/16 v5, 0x6a
const-string v6, "dua"
aput-object v6, v0, v5
const/16 v5, 0x6b
const-string v6, "dum"
aput-object v6, v0, v5
const/16 v5, 0x6c
const-string v6, "dv"
aput-object v6, v0, v5
const/16 v5, 0x6d
const-string v6, "dyu"
aput-object v6, v0, v5
const/16 v5, 0x6e
const-string v6, "dz"
aput-object v6, v0, v5
const/16 v5, 0x6f
const-string v6, "ee"
aput-object v6, v0, v5
const/16 v5, 0x70
const-string v6, "efi"
aput-object v6, v0, v5
const/16 v5, 0x71
const-string v6, "egy"
aput-object v6, v0, v5
const/16 v5, 0x72
const-string v6, "eka"
aput-object v6, v0, v5
const/16 v5, 0x73
const-string v6, "el"
aput-object v6, v0, v5
const/16 v5, 0x74
const-string v6, "elx"
aput-object v6, v0, v5
const/16 v5, 0x75
const-string v6, "en"
aput-object v6, v0, v5
const/16 v5, 0x76
const-string v6, "enm"
aput-object v6, v0, v5
const/16 v5, 0x77
const-string v6, "eo"
aput-object v6, v0, v5
const/16 v5, 0x78
const-string v6, "es"
aput-object v6, v0, v5
const/16 v5, 0x79
const-string v6, "et"
aput-object v6, v0, v5
const/16 v5, 0x7a
const-string v6, "eu"
aput-object v6, v0, v5
const/16 v5, 0x7b
const-string v6, "ewo"
aput-object v6, v0, v5
const/16 v5, 0x7c
const-string v6, "fa"
aput-object v6, v0, v5
const/16 v5, 0x7d
const-string v6, "fan"
aput-object v6, v0, v5
const/16 v5, 0x7e
const-string v6, "fat"
aput-object v6, v0, v5
const/16 v5, 0x7f
const-string v6, "ff"
aput-object v6, v0, v5
const/16 v5, 0x80
const-string v6, "fi"
aput-object v6, v0, v5
const/16 v5, 0x81
const-string v6, "fiu"
aput-object v6, v0, v5
const/16 v5, 0x82
const-string v6, "fj"
aput-object v6, v0, v5
const/16 v5, 0x83
const-string v6, "fo"
aput-object v6, v0, v5
const/16 v5, 0x84
const-string v6, "fon"
aput-object v6, v0, v5
const/16 v5, 0x85
const-string v6, "fr"
aput-object v6, v0, v5
const/16 v5, 0x86
const-string v6, "frm"
aput-object v6, v0, v5
const/16 v5, 0x87
const-string v6, "fro"
aput-object v6, v0, v5
const/16 v5, 0x88
const-string v6, "fur"
aput-object v6, v0, v5
const/16 v5, 0x89
const-string v6, "fy"
aput-object v6, v0, v5
const/16 v5, 0x8a
const-string v6, "ga"
aput-object v6, v0, v5
const/16 v5, 0x8b
const-string v6, "gaa"
aput-object v6, v0, v5
const/16 v5, 0x8c
const-string v6, "gay"
aput-object v6, v0, v5
const/16 v5, 0x8d
const-string v6, "gba"
aput-object v6, v0, v5
const/16 v5, 0x8e
const-string v6, "gd"
aput-object v6, v0, v5
const/16 v5, 0x8f
const-string v6, "gem"
aput-object v6, v0, v5
const/16 v5, 0x90
const-string v6, "gez"
aput-object v6, v0, v5
const/16 v5, 0x91
const-string v6, "gil"
aput-object v6, v0, v5
const/16 v5, 0x92
const-string v6, "gl"
aput-object v6, v0, v5
const/16 v5, 0x93
const-string v6, "gmh"
aput-object v6, v0, v5
const/16 v5, 0x94
const-string v6, "gn"
aput-object v6, v0, v5
const/16 v5, 0x95
const-string v6, "goh"
aput-object v6, v0, v5
const/16 v5, 0x96
const-string v6, "gon"
aput-object v6, v0, v5
const/16 v5, 0x97
const-string v6, "gor"
aput-object v6, v0, v5
const/16 v5, 0x98
const-string v6, "got"
aput-object v6, v0, v5
const/16 v5, 0x99
const-string v6, "grb"
aput-object v6, v0, v5
const/16 v5, 0x9a
const-string v6, "grc"
aput-object v6, v0, v5
const/16 v5, 0x9b
const-string v6, "gu"
aput-object v6, v0, v5
const/16 v5, 0x9c
const-string v6, "gv"
aput-object v6, v0, v5
const/16 v5, 0x9d
const-string v6, "gwi"
aput-object v6, v0, v5
const/16 v5, 0x9e
const-string v6, "ha"
aput-object v6, v0, v5
const/16 v5, 0x9f
const-string v6, "hai"
aput-object v6, v0, v5
const/16 v5, 0xa0
const-string v6, "haw"
aput-object v6, v0, v5
const/16 v5, 0xa1
const-string v6, "he"
aput-object v6, v0, v5
const/16 v5, 0xa2
const-string v6, "hi"
aput-object v6, v0, v5
const/16 v5, 0xa3
const-string v6, "hil"
aput-object v6, v0, v5
const/16 v5, 0xa4
const-string v6, "him"
aput-object v6, v0, v5
const/16 v5, 0xa5
const-string v6, "hit"
aput-object v6, v0, v5
const/16 v5, 0xa6
const-string v6, "hmn"
aput-object v6, v0, v5
const/16 v5, 0xa7
const-string v6, "ho"
aput-object v6, v0, v5
const/16 v5, 0xa8
const-string v6, "hr"
aput-object v6, v0, v5
const/16 v5, 0xa9
const-string v6, "hsb"
aput-object v6, v0, v5
const/16 v5, 0xaa
const-string v6, "ht"
aput-object v6, v0, v5
const/16 v5, 0xab
const-string v6, "hu"
aput-object v6, v0, v5
const/16 v5, 0xac
const-string v6, "hup"
aput-object v6, v0, v5
const/16 v5, 0xad
const-string v6, "hy"
aput-object v6, v0, v5
const/16 v5, 0xae
const-string v6, "hz"
aput-object v6, v0, v5
const/16 v5, 0xaf
const-string v6, "ia"
aput-object v6, v0, v5
const/16 v5, 0xb0
const-string v6, "iba"
aput-object v6, v0, v5
const/16 v5, 0xb1
const-string v6, "id"
aput-object v6, v0, v5
const/16 v5, 0xb2
const-string v6, "ie"
aput-object v6, v0, v5
const/16 v5, 0xb3
const-string v6, "ig"
aput-object v6, v0, v5
const/16 v5, 0xb4
const-string v6, "ii"
aput-object v6, v0, v5
const/16 v5, 0xb5
const-string v6, "ijo"
aput-object v6, v0, v5
const/16 v5, 0xb6
const-string v6, "ik"
aput-object v6, v0, v5
const/16 v5, 0xb7
const-string v6, "ilo"
aput-object v6, v0, v5
const/16 v5, 0xb8
const-string v6, "inc"
aput-object v6, v0, v5
const/16 v5, 0xb9
const-string v6, "ine"
aput-object v6, v0, v5
const/16 v5, 0xba
const-string v6, "inh"
aput-object v6, v0, v5
const/16 v5, 0xbb
const-string v6, "io"
aput-object v6, v0, v5
const/16 v5, 0xbc
const-string v6, "ira"
aput-object v6, v0, v5
const/16 v5, 0xbd
const-string v6, "iro"
aput-object v6, v0, v5
const/16 v5, 0xbe
const-string v6, "is"
aput-object v6, v0, v5
const/16 v5, 0xbf
const-string v6, "it"
aput-object v6, v0, v5
const/16 v5, 0xc0
const-string v6, "iu"
aput-object v6, v0, v5
const/16 v5, 0xc1
const-string v6, "ja"
aput-object v6, v0, v5
const/16 v5, 0xc2
const-string v6, "jbo"
aput-object v6, v0, v5
const/16 v5, 0xc3
const-string v6, "jpr"
aput-object v6, v0, v5
const/16 v5, 0xc4
const-string v6, "jrb"
aput-object v6, v0, v5
const/16 v5, 0xc5
const-string v6, "jv"
aput-object v6, v0, v5
const/16 v5, 0xc6
const-string v6, "ka"
aput-object v6, v0, v5
const/16 v5, 0xc7
const-string v6, "kaa"
aput-object v6, v0, v5
const/16 v5, 0xc8
const-string v6, "kab"
aput-object v6, v0, v5
const/16 v5, 0xc9
const-string v6, "kac"
aput-object v6, v0, v5
const/16 v5, 0xca
const-string v6, "kam"
aput-object v6, v0, v5
const/16 v5, 0xcb
const-string v6, "kar"
aput-object v6, v0, v5
const/16 v5, 0xcc
const-string v6, "kaw"
aput-object v6, v0, v5
const/16 v5, 0xcd
const-string v6, "kbd"
aput-object v6, v0, v5
const/16 v5, 0xce
const-string v6, "kg"
aput-object v6, v0, v5
const/16 v5, 0xcf
const-string v6, "kha"
aput-object v6, v0, v5
const/16 v5, 0xd0
const-string v6, "khi"
aput-object v6, v0, v5
const/16 v5, 0xd1
const-string v6, "kho"
aput-object v6, v0, v5
const/16 v5, 0xd2
const-string v6, "ki"
aput-object v6, v0, v5
const/16 v5, 0xd3
const-string v6, "kj"
aput-object v6, v0, v5
const/16 v5, 0xd4
const-string v6, "kk"
aput-object v6, v0, v5
const/16 v5, 0xd5
const-string v6, "kl"
aput-object v6, v0, v5
const/16 v5, 0xd6
const-string v6, "km"
aput-object v6, v0, v5
const/16 v5, 0xd7
const-string v6, "kmb"
aput-object v6, v0, v5
const/16 v5, 0xd8
const-string v6, "kn"
aput-object v6, v0, v5
const/16 v5, 0xd9
const-string v6, "ko"
aput-object v6, v0, v5
const/16 v5, 0xda
const-string v6, "kok"
aput-object v6, v0, v5
const/16 v5, 0xdb
const-string v6, "kos"
aput-object v6, v0, v5
const/16 v5, 0xdc
const-string v6, "kpe"
aput-object v6, v0, v5
const/16 v5, 0xdd
const-string v6, "kr"
aput-object v6, v0, v5
const/16 v5, 0xde
const-string v6, "krc"
aput-object v6, v0, v5
const/16 v5, 0xdf
const-string v6, "kro"
aput-object v6, v0, v5
const/16 v5, 0xe0
const-string v6, "kru"
aput-object v6, v0, v5
const/16 v5, 0xe1
const-string v6, "ks"
aput-object v6, v0, v5
const/16 v5, 0xe2
const-string v6, "ku"
aput-object v6, v0, v5
const/16 v5, 0xe3
const-string v6, "kum"
aput-object v6, v0, v5
const/16 v5, 0xe4
const-string v6, "kut"
aput-object v6, v0, v5
const/16 v5, 0xe5
const-string v6, "kv"
aput-object v6, v0, v5
const/16 v5, 0xe6
const-string v6, "kw"
aput-object v6, v0, v5
const/16 v5, 0xe7
const-string v6, "ky"
aput-object v6, v0, v5
const/16 v5, 0xe8
const-string v6, "la"
aput-object v6, v0, v5
const/16 v5, 0xe9
const-string v6, "lad"
aput-object v6, v0, v5
const/16 v5, 0xea
const-string v6, "lah"
aput-object v6, v0, v5
const/16 v5, 0xeb
const-string v6, "lam"
aput-object v6, v0, v5
const/16 v5, 0xec
const-string v6, "lb"
aput-object v6, v0, v5
const/16 v5, 0xed
const-string v6, "lez"
aput-object v6, v0, v5
const/16 v5, 0xee
const-string v6, "lg"
aput-object v6, v0, v5
const/16 v5, 0xef
const-string v6, "li"
aput-object v6, v0, v5
const/16 v5, 0xf0
const-string v6, "ln"
aput-object v6, v0, v5
const/16 v5, 0xf1
const-string v6, "lo"
aput-object v6, v0, v5
const/16 v5, 0xf2
const-string v6, "lol"
aput-object v6, v0, v5
const/16 v5, 0xf3
const-string v6, "loz"
aput-object v6, v0, v5
const/16 v5, 0xf4
const-string v6, "lt"
aput-object v6, v0, v5
const/16 v5, 0xf5
const-string v6, "lu"
aput-object v6, v0, v5
const/16 v5, 0xf6
const-string v6, "lua"
aput-object v6, v0, v5
const/16 v5, 0xf7
const-string v6, "lui"
aput-object v6, v0, v5
const/16 v5, 0xf8
const-string v6, "lun"
aput-object v6, v0, v5
const/16 v5, 0xf9
const-string v6, "luo"
aput-object v6, v0, v5
const/16 v5, 0xfa
const-string v6, "lus"
aput-object v6, v0, v5
const/16 v5, 0xfb
const-string v6, "lv"
aput-object v6, v0, v5
const/16 v5, 0xfc
const-string v6, "mad"
aput-object v6, v0, v5
const/16 v5, 0xfd
const-string v6, "mag"
aput-object v6, v0, v5
const/16 v5, 0xfe
const-string v6, "mai"
aput-object v6, v0, v5
const/16 v5, 0xff
const-string v6, "mak"
aput-object v6, v0, v5
const/16 v5, 0x100
const-string v6, "man"
aput-object v6, v0, v5
const/16 v5, 0x101
const-string v6, "map"
aput-object v6, v0, v5
const/16 v5, 0x102
const-string v6, "mas"
aput-object v6, v0, v5
const/16 v5, 0x103
const-string v6, "mdf"
aput-object v6, v0, v5
const/16 v5, 0x104
const-string v6, "mdr"
aput-object v6, v0, v5
const/16 v5, 0x105
const-string v6, "men"
aput-object v6, v0, v5
const/16 v5, 0x106
const-string v6, "mg"
aput-object v6, v0, v5
const/16 v5, 0x107
const-string v6, "mga"
aput-object v6, v0, v5
const/16 v5, 0x108
const-string v6, "mh"
aput-object v6, v0, v5
const/16 v5, 0x109
const-string v6, "mi"
aput-object v6, v0, v5
const/16 v5, 0x10a
const-string v6, "mic"
aput-object v6, v0, v5
const/16 v5, 0x10b
const-string v6, "min"
aput-object v6, v0, v5
const/16 v5, 0x10c
const-string v6, "mis"
aput-object v6, v0, v5
const/16 v5, 0x10d
const-string v6, "mk"
aput-object v6, v0, v5
const/16 v5, 0x10e
const-string v6, "mkh"
aput-object v6, v0, v5
const/16 v5, 0x10f
const-string v6, "ml"
aput-object v6, v0, v5
const/16 v5, 0x110
const-string v6, "mn"
aput-object v6, v0, v5
const/16 v5, 0x111
const-string v6, "mnc"
aput-object v6, v0, v5
const/16 v5, 0x112
const-string v6, "mni"
aput-object v6, v0, v5
const/16 v5, 0x113
const-string v6, "mno"
aput-object v6, v0, v5
const/16 v5, 0x114
const-string v6, "mo"
aput-object v6, v0, v5
const/16 v5, 0x115
const-string v6, "moh"
aput-object v6, v0, v5
const/16 v5, 0x116
const-string v6, "mos"
aput-object v6, v0, v5
const/16 v5, 0x117
const-string v6, "mr"
aput-object v6, v0, v5
const/16 v5, 0x118
const-string v6, "ms"
aput-object v6, v0, v5
const/16 v5, 0x119
const-string v6, "mt"
aput-object v6, v0, v5
const/16 v5, 0x11a
const-string v6, "mul"
aput-object v6, v0, v5
const/16 v5, 0x11b
const-string v6, "mun"
aput-object v6, v0, v5
const/16 v5, 0x11c
const-string v6, "mus"
aput-object v6, v0, v5
const/16 v5, 0x11d
const-string v6, "mwr"
aput-object v6, v0, v5
const/16 v5, 0x11e
const-string v6, "my"
aput-object v6, v0, v5
const/16 v5, 0x11f
const-string v6, "myn"
aput-object v6, v0, v5
const/16 v5, 0x120
const-string v6, "myv"
aput-object v6, v0, v5
const/16 v5, 0x121
const-string v6, "na"
aput-object v6, v0, v5
const/16 v5, 0x122
const-string v6, "nah"
aput-object v6, v0, v5
const/16 v5, 0x123
const-string v6, "nai"
aput-object v6, v0, v5
const/16 v5, 0x124
const-string v6, "nap"
aput-object v6, v0, v5
const/16 v5, 0x125
const-string v6, "nb"
aput-object v6, v0, v5
const/16 v5, 0x126
const-string v6, "nd"
aput-object v6, v0, v5
const/16 v5, 0x127
const-string v6, "nds"
aput-object v6, v0, v5
const/16 v5, 0x128
const-string v6, "ne"
aput-object v6, v0, v5
const/16 v5, 0x129
const-string v6, "new"
aput-object v6, v0, v5
const/16 v5, 0x12a
const-string v6, "ng"
aput-object v6, v0, v5
const/16 v5, 0x12b
const-string v6, "nia"
aput-object v6, v0, v5
const/16 v5, 0x12c
const-string v6, "nic"
aput-object v6, v0, v5
const/16 v5, 0x12d
const-string v6, "niu"
aput-object v6, v0, v5
const/16 v5, 0x12e
const-string v6, "nl"
aput-object v6, v0, v5
const/16 v5, 0x12f
const-string v6, "nn"
aput-object v6, v0, v5
const/16 v5, 0x130
const-string v6, "no"
aput-object v6, v0, v5
const/16 v5, 0x131
const-string v6, "nog"
aput-object v6, v0, v5
const/16 v5, 0x132
const-string v6, "non"
aput-object v6, v0, v5
const/16 v5, 0x133
const-string v6, "nr"
aput-object v6, v0, v5
const/16 v5, 0x134
const-string v6, "nso"
aput-object v6, v0, v5
const/16 v5, 0x135
const-string v6, "nub"
aput-object v6, v0, v5
const/16 v5, 0x136
const-string v6, "nv"
aput-object v6, v0, v5
const/16 v5, 0x137
const-string v6, "nwc"
aput-object v6, v0, v5
const/16 v5, 0x138
const-string v6, "ny"
aput-object v6, v0, v5
const/16 v5, 0x139
const-string v6, "nym"
aput-object v6, v0, v5
const/16 v5, 0x13a
const-string v6, "nyn"
aput-object v6, v0, v5
const/16 v5, 0x13b
const-string v6, "nyo"
aput-object v6, v0, v5
const/16 v5, 0x13c
const-string v6, "nzi"
aput-object v6, v0, v5
const/16 v5, 0x13d
const-string v6, "oc"
aput-object v6, v0, v5
const/16 v5, 0x13e
const-string v6, "oj"
aput-object v6, v0, v5
const/16 v5, 0x13f
const-string v6, "om"
aput-object v6, v0, v5
const/16 v5, 0x140
const-string v6, "or"
aput-object v6, v0, v5
const/16 v5, 0x141
const-string v6, "os"
aput-object v6, v0, v5
const/16 v5, 0x142
const-string v6, "osa"
aput-object v6, v0, v5
const/16 v5, 0x143
const-string v6, "ota"
aput-object v6, v0, v5
const/16 v5, 0x144
const-string v6, "oto"
aput-object v6, v0, v5
const/16 v5, 0x145
const-string v6, "pa"
aput-object v6, v0, v5
const/16 v5, 0x146
const-string v6, "paa"
aput-object v6, v0, v5
const/16 v5, 0x147
const-string v6, "pag"
aput-object v6, v0, v5
const/16 v5, 0x148
const-string v6, "pal"
aput-object v6, v0, v5
const/16 v5, 0x149
const-string v6, "pam"
aput-object v6, v0, v5
const/16 v5, 0x14a
const-string v6, "pap"
aput-object v6, v0, v5
const/16 v5, 0x14b
const-string v6, "pau"
aput-object v6, v0, v5
const/16 v5, 0x14c
const-string v6, "peo"
aput-object v6, v0, v5
const/16 v5, 0x14d
const-string v6, "phi"
aput-object v6, v0, v5
const/16 v5, 0x14e
const-string v6, "phn"
aput-object v6, v0, v5
const/16 v5, 0x14f
const-string v6, "pi"
aput-object v6, v0, v5
const/16 v5, 0x150
const-string v6, "pl"
aput-object v6, v0, v5
const/16 v5, 0x151
const-string v6, "pon"
aput-object v6, v0, v5
const/16 v5, 0x152
const-string v6, "pra"
aput-object v6, v0, v5
const/16 v5, 0x153
const-string v6, "pro"
aput-object v6, v0, v5
const/16 v5, 0x154
const-string v6, "ps"
aput-object v6, v0, v5
const/16 v5, 0x155
const-string v6, "pt"
aput-object v6, v0, v5
const/16 v5, 0x156
const-string v6, "qu"
aput-object v6, v0, v5
const/16 v5, 0x157
const-string v6, "raj"
aput-object v6, v0, v5
const/16 v5, 0x158
const-string v6, "rap"
aput-object v6, v0, v5
const/16 v5, 0x159
const-string v6, "rar"
aput-object v6, v0, v5
const/16 v5, 0x15a
const-string v6, "rm"
aput-object v6, v0, v5
const/16 v5, 0x15b
const-string v6, "rn"
aput-object v6, v0, v5
const/16 v5, 0x15c
const-string v6, "ro"
aput-object v6, v0, v5
const/16 v5, 0x15d
const-string v6, "roa"
aput-object v6, v0, v5
const/16 v5, 0x15e
const-string v6, "rom"
aput-object v6, v0, v5
const/16 v5, 0x15f
const-string v6, "ru"
aput-object v6, v0, v5
const/16 v5, 0x160
const-string v6, "rup"
aput-object v6, v0, v5
const/16 v5, 0x161
const-string v6, "rw"
aput-object v6, v0, v5
const/16 v5, 0x162
const-string v6, "sa"
aput-object v6, v0, v5
const/16 v5, 0x163
const-string v6, "sad"
aput-object v6, v0, v5
const/16 v5, 0x164
const-string v6, "sah"
aput-object v6, v0, v5
const/16 v5, 0x165
const-string v6, "sai"
aput-object v6, v0, v5
const/16 v5, 0x166
const-string v6, "sal"
aput-object v6, v0, v5
const/16 v5, 0x167
const-string v6, "sam"
aput-object v6, v0, v5
const/16 v5, 0x168
const-string v6, "sas"
aput-object v6, v0, v5
const/16 v5, 0x169
const-string v6, "sat"
aput-object v6, v0, v5
const/16 v5, 0x16a
const-string v6, "sc"
aput-object v6, v0, v5
const/16 v5, 0x16b
const-string v6, "sco"
aput-object v6, v0, v5
const/16 v5, 0x16c
const-string v6, "sd"
aput-object v6, v0, v5
const/16 v5, 0x16d
const-string v6, "se"
aput-object v6, v0, v5
const/16 v5, 0x16e
const-string v6, "sel"
aput-object v6, v0, v5
const/16 v5, 0x16f
const-string v6, "sem"
aput-object v6, v0, v5
const/16 v5, 0x170
const-string v6, "sg"
aput-object v6, v0, v5
const/16 v5, 0x171
const-string v6, "sga"
aput-object v6, v0, v5
const/16 v5, 0x172
const-string v6, "sgn"
aput-object v6, v0, v5
const/16 v5, 0x173
const-string v6, "shn"
aput-object v6, v0, v5
const/16 v5, 0x174
const-string v6, "si"
aput-object v6, v0, v5
const/16 v5, 0x175
const-string v6, "sid"
aput-object v6, v0, v5
const/16 v5, 0x176
const-string v6, "sio"
aput-object v6, v0, v5
const/16 v5, 0x177
const-string v6, "sit"
aput-object v6, v0, v5
const/16 v5, 0x178
const-string v6, "sk"
aput-object v6, v0, v5
const/16 v5, 0x179
const-string v6, "sl"
aput-object v6, v0, v5
const/16 v5, 0x17a
const-string v6, "sla"
aput-object v6, v0, v5
const/16 v5, 0x17b
const-string v6, "sm"
aput-object v6, v0, v5
const/16 v5, 0x17c
const-string v6, "sma"
aput-object v6, v0, v5
const/16 v5, 0x17d
const-string v6, "smi"
aput-object v6, v0, v5
const/16 v5, 0x17e
const-string v6, "smj"
aput-object v6, v0, v5
const/16 v5, 0x17f
const-string v6, "smn"
aput-object v6, v0, v5
const/16 v5, 0x180
const-string v6, "sms"
aput-object v6, v0, v5
const/16 v5, 0x181
const-string v6, "sn"
aput-object v6, v0, v5
const/16 v5, 0x182
const-string v6, "snk"
aput-object v6, v0, v5
const/16 v5, 0x183
const-string v6, "so"
aput-object v6, v0, v5
const/16 v5, 0x184
const-string v6, "sog"
aput-object v6, v0, v5
const/16 v5, 0x185
const-string v6, "son"
aput-object v6, v0, v5
const/16 v5, 0x186
const-string v6, "sq"
aput-object v6, v0, v5
const/16 v5, 0x187
const-string v6, "sr"
aput-object v6, v0, v5
const/16 v5, 0x188
const-string v6, "srr"
aput-object v6, v0, v5
const/16 v5, 0x189
const-string v6, "ss"
aput-object v6, v0, v5
const/16 v5, 0x18a
const-string v6, "ssa"
aput-object v6, v0, v5
const/16 v5, 0x18b
const-string v6, "st"
aput-object v6, v0, v5
const/16 v5, 0x18c
const-string v6, "su"
aput-object v6, v0, v5
const/16 v5, 0x18d
const-string v6, "suk"
aput-object v6, v0, v5
const/16 v5, 0x18e
const-string v6, "sus"
aput-object v6, v0, v5
const/16 v5, 0x18f
const-string v6, "sux"
aput-object v6, v0, v5
const/16 v5, 0x190
const-string v6, "sv"
aput-object v6, v0, v5
const/16 v5, 0x191
const-string v6, "sw"
aput-object v6, v0, v5
const/16 v5, 0x192
const-string v6, "syr"
aput-object v6, v0, v5
const/16 v5, 0x193
const-string v6, "ta"
aput-object v6, v0, v5
const/16 v5, 0x194
const-string v6, "tai"
aput-object v6, v0, v5
const/16 v5, 0x195
const-string v6, "te"
aput-object v6, v0, v5
const/16 v5, 0x196
const-string v6, "tem"
aput-object v6, v0, v5
const/16 v5, 0x197
const-string v6, "ter"
aput-object v6, v0, v5
const/16 v5, 0x198
const-string v6, "tet"
aput-object v6, v0, v5
const/16 v5, 0x199
const-string v6, "tg"
aput-object v6, v0, v5
const/16 v5, 0x19a
const-string v6, "th"
aput-object v6, v0, v5
const/16 v5, 0x19b
const-string v6, "ti"
aput-object v6, v0, v5
const/16 v5, 0x19c
const-string v6, "tig"
aput-object v6, v0, v5
const/16 v5, 0x19d
const-string v6, "tiv"
aput-object v6, v0, v5
const/16 v5, 0x19e
const-string v6, "tk"
aput-object v6, v0, v5
const/16 v5, 0x19f
const-string v6, "tkl"
aput-object v6, v0, v5
const/16 v5, 0x1a0
const-string v6, "tl"
aput-object v6, v0, v5
const/16 v5, 0x1a1
const-string v6, "tlh"
aput-object v6, v0, v5
const/16 v5, 0x1a2
const-string v6, "tli"
aput-object v6, v0, v5
const/16 v5, 0x1a3
const-string v6, "tmh"
aput-object v6, v0, v5
const/16 v5, 0x1a4
const-string v6, "tn"
aput-object v6, v0, v5
const/16 v5, 0x1a5
const-string v6, "to"
aput-object v6, v0, v5
const/16 v5, 0x1a6
const-string v6, "tog"
aput-object v6, v0, v5
const/16 v5, 0x1a7
const-string v6, "tpi"
aput-object v6, v0, v5
const/16 v5, 0x1a8
const-string v6, "tr"
aput-object v6, v0, v5
const/16 v5, 0x1a9
const-string v6, "ts"
aput-object v6, v0, v5
const/16 v5, 0x1aa
const-string v6, "tsi"
aput-object v6, v0, v5
const/16 v5, 0x1ab
const-string v6, "tt"
aput-object v6, v0, v5
const/16 v5, 0x1ac
const-string v6, "tum"
aput-object v6, v0, v5
const/16 v5, 0x1ad
const-string v6, "tup"
aput-object v6, v0, v5
const/16 v5, 0x1ae
const-string v6, "tut"
aput-object v6, v0, v5
const/16 v5, 0x1af
const-string v6, "tvl"
aput-object v6, v0, v5
const/16 v5, 0x1b0
const-string v6, "tw"
aput-object v6, v0, v5
const/16 v5, 0x1b1
const-string v6, "ty"
aput-object v6, v0, v5
const/16 v5, 0x1b2
const-string v6, "tyv"
aput-object v6, v0, v5
const/16 v5, 0x1b3
const-string v6, "udm"
aput-object v6, v0, v5
const/16 v5, 0x1b4
const-string v6, "ug"
aput-object v6, v0, v5
const/16 v5, 0x1b5
const-string v6, "uga"
aput-object v6, v0, v5
const/16 v5, 0x1b6
const-string v6, "uk"
aput-object v6, v0, v5
const/16 v5, 0x1b7
const-string v6, "umb"
aput-object v6, v0, v5
const/16 v5, 0x1b8
const-string v6, "und"
aput-object v6, v0, v5
const/16 v5, 0x1b9
const-string v6, "ur"
aput-object v6, v0, v5
const/16 v5, 0x1ba
const-string v6, "uz"
aput-object v6, v0, v5
const/16 v5, 0x1bb
const-string v6, "vai"
aput-object v6, v0, v5
const/16 v5, 0x1bc
const-string v6, "ve"
aput-object v6, v0, v5
const/16 v5, 0x1bd
const-string v6, "vi"
aput-object v6, v0, v5
const/16 v5, 0x1be
const-string v6, "vo"
aput-object v6, v0, v5
const/16 v5, 0x1bf
const-string v6, "vot"
aput-object v6, v0, v5
const/16 v5, 0x1c0
const-string v6, "wa"
aput-object v6, v0, v5
const/16 v5, 0x1c1
const-string v6, "wak"
aput-object v6, v0, v5
const/16 v5, 0x1c2
const-string v6, "wal"
aput-object v6, v0, v5
const/16 v5, 0x1c3
const-string v6, "war"
aput-object v6, v0, v5
const/16 v5, 0x1c4
const-string v6, "was"
aput-object v6, v0, v5
const/16 v5, 0x1c5
const-string v6, "wen"
aput-object v6, v0, v5
const/16 v5, 0x1c6
const-string v6, "wo"
aput-object v6, v0, v5
const/16 v5, 0x1c7
const-string v6, "xal"
aput-object v6, v0, v5
const/16 v5, 0x1c8
const-string v6, "xh"
aput-object v6, v0, v5
const/16 v5, 0x1c9
const-string v6, "yao"
aput-object v6, v0, v5
const/16 v5, 0x1ca
const-string v6, "yap"
aput-object v6, v0, v5
const/16 v5, 0x1cb
const-string v6, "yi"
aput-object v6, v0, v5
const/16 v5, 0x1cc
const-string v6, "yo"
aput-object v6, v0, v5
const/16 v5, 0x1cd
const-string v6, "ypk"
aput-object v6, v0, v5
const/16 v5, 0x1ce
const-string v6, "za"
aput-object v6, v0, v5
const/16 v5, 0x1cf
const-string v6, "zap"
aput-object v6, v0, v5
const/16 v5, 0x1d0
const-string v6, "zen"
aput-object v6, v0, v5
const/16 v5, 0x1d1
const-string v6, "zh"
aput-object v6, v0, v5
const/16 v5, 0x1d2
const-string v6, "znd"
aput-object v6, v0, v5
const/16 v5, 0x1d3
const-string v6, "zu"
aput-object v6, v0, v5
const/16 v5, 0x1d4
const-string v6, "zun"
aput-object v6, v0, v5
const/4 v5, 0x6
new-array v4, v5, [Ljava/lang/String;
const-string v5, "id"
aput-object v5, v4, v7
const-string v5, "he"
aput-object v5, v4, v8
const-string v5, "yi"
aput-object v5, v4, v9
const-string v5, "jv"
aput-object v5, v4, v10
const-string v5, "sr"
aput-object v5, v4, v11
const/4 v5, 0x5
const-string v6, "nb"
aput-object v6, v4, v5
const/4 v5, 0x6
new-array v2, v5, [Ljava/lang/String;
const-string v5, "in"
aput-object v5, v2, v7
const-string v5, "iw"
aput-object v5, v2, v8
const-string v5, "ji"
aput-object v5, v2, v9
const-string v5, "jw"
aput-object v5, v2, v10
const-string v5, "sh"
aput-object v5, v2, v11
const/4 v5, 0x5
const-string v6, "no"
aput-object v6, v2, v5
const/16 v5, 0x1d5
new-array v1, v5, [Ljava/lang/String;
const-string v5, "aar"
aput-object v5, v1, v7
const-string v5, "abk"
aput-object v5, v1, v8
const-string v5, "ace"
aput-object v5, v1, v9
const-string v5, "ach"
aput-object v5, v1, v10
const-string v5, "ada"
aput-object v5, v1, v11
const/4 v5, 0x5
const-string v6, "ady"
aput-object v6, v1, v5
const/4 v5, 0x6
const-string v6, "ave"
aput-object v6, v1, v5
const/4 v5, 0x7
const-string v6, "afr"
aput-object v6, v1, v5
const/16 v5, 0x8
const-string v6, "afa"
aput-object v6, v1, v5
const/16 v5, 0x9
const-string v6, "afh"
aput-object v6, v1, v5
const/16 v5, 0xa
const-string v6, "aka"
aput-object v6, v1, v5
const/16 v5, 0xb
const-string v6, "akk"
aput-object v6, v1, v5
const/16 v5, 0xc
const-string v6, "ale"
aput-object v6, v1, v5
const/16 v5, 0xd
const-string v6, "alg"
aput-object v6, v1, v5
const/16 v5, 0xe
const-string v6, "amh"
aput-object v6, v1, v5
const/16 v5, 0xf
const-string v6, "arg"
aput-object v6, v1, v5
const/16 v5, 0x10
const-string v6, "ang"
aput-object v6, v1, v5
const/16 v5, 0x11
const-string v6, "apa"
aput-object v6, v1, v5
const/16 v5, 0x12
const-string v6, "ara"
aput-object v6, v1, v5
const/16 v5, 0x13
const-string v6, "arc"
aput-object v6, v1, v5
const/16 v5, 0x14
const-string v6, "arn"
aput-object v6, v1, v5
const/16 v5, 0x15
const-string v6, "arp"
aput-object v6, v1, v5
const/16 v5, 0x16
const-string v6, "art"
aput-object v6, v1, v5
const/16 v5, 0x17
const-string v6, "arw"
aput-object v6, v1, v5
const/16 v5, 0x18
const-string v6, "asm"
aput-object v6, v1, v5
const/16 v5, 0x19
const-string v6, "ast"
aput-object v6, v1, v5
const/16 v5, 0x1a
const-string v6, "ath"
aput-object v6, v1, v5
const/16 v5, 0x1b
const-string v6, "aus"
aput-object v6, v1, v5
const/16 v5, 0x1c
const-string v6, "ava"
aput-object v6, v1, v5
const/16 v5, 0x1d
const-string v6, "awa"
aput-object v6, v1, v5
const/16 v5, 0x1e
const-string v6, "aym"
aput-object v6, v1, v5
const/16 v5, 0x1f
const-string v6, "aze"
aput-object v6, v1, v5
const/16 v5, 0x20
const-string v6, "bak"
aput-object v6, v1, v5
const/16 v5, 0x21
const-string v6, "bad"
aput-object v6, v1, v5
const/16 v5, 0x22
const-string v6, "bai"
aput-object v6, v1, v5
const/16 v5, 0x23
const-string v6, "bal"
aput-object v6, v1, v5
const/16 v5, 0x24
const-string v6, "ban"
aput-object v6, v1, v5
const/16 v5, 0x25
const-string v6, "bas"
aput-object v6, v1, v5
const/16 v5, 0x26
const-string v6, "bat"
aput-object v6, v1, v5
const/16 v5, 0x27
const-string v6, "bel"
aput-object v6, v1, v5
const/16 v5, 0x28
const-string v6, "bej"
aput-object v6, v1, v5
const/16 v5, 0x29
const-string v6, "bem"
aput-object v6, v1, v5
const/16 v5, 0x2a
const-string v6, "ber"
aput-object v6, v1, v5
const/16 v5, 0x2b
const-string v6, "bul"
aput-object v6, v1, v5
const/16 v5, 0x2c
const-string v6, "bih"
aput-object v6, v1, v5
const/16 v5, 0x2d
const-string v6, "bho"
aput-object v6, v1, v5
const/16 v5, 0x2e
const-string v6, "bis"
aput-object v6, v1, v5
const/16 v5, 0x2f
const-string v6, "bik"
aput-object v6, v1, v5
const/16 v5, 0x30
const-string v6, "bin"
aput-object v6, v1, v5
const/16 v5, 0x31
const-string v6, "bla"
aput-object v6, v1, v5
const/16 v5, 0x32
const-string v6, "bam"
aput-object v6, v1, v5
const/16 v5, 0x33
const-string v6, "ben"
aput-object v6, v1, v5
const/16 v5, 0x34
const-string v6, "bnt"
aput-object v6, v1, v5
const/16 v5, 0x35
const-string v6, "bod"
aput-object v6, v1, v5
const/16 v5, 0x36
const-string v6, "bre"
aput-object v6, v1, v5
const/16 v5, 0x37
const-string v6, "bra"
aput-object v6, v1, v5
const/16 v5, 0x38
const-string v6, "bos"
aput-object v6, v1, v5
const/16 v5, 0x39
const-string v6, "btk"
aput-object v6, v1, v5
const/16 v5, 0x3a
const-string v6, "bua"
aput-object v6, v1, v5
const/16 v5, 0x3b
const-string v6, "bug"
aput-object v6, v1, v5
const/16 v5, 0x3c
const-string v6, "byn"
aput-object v6, v1, v5
const/16 v5, 0x3d
const-string v6, "cat"
aput-object v6, v1, v5
const/16 v5, 0x3e
const-string v6, "cad"
aput-object v6, v1, v5
const/16 v5, 0x3f
const-string v6, "cai"
aput-object v6, v1, v5
const/16 v5, 0x40
const-string v6, "car"
aput-object v6, v1, v5
const/16 v5, 0x41
const-string v6, "cau"
aput-object v6, v1, v5
const/16 v5, 0x42
const-string v6, "che"
aput-object v6, v1, v5
const/16 v5, 0x43
const-string v6, "ceb"
aput-object v6, v1, v5
const/16 v5, 0x44
const-string v6, "cel"
aput-object v6, v1, v5
const/16 v5, 0x45
const-string v6, "cha"
aput-object v6, v1, v5
const/16 v5, 0x46
const-string v6, "chb"
aput-object v6, v1, v5
const/16 v5, 0x47
const-string v6, "chg"
aput-object v6, v1, v5
const/16 v5, 0x48
const-string v6, "chk"
aput-object v6, v1, v5
const/16 v5, 0x49
const-string v6, "chm"
aput-object v6, v1, v5
const/16 v5, 0x4a
const-string v6, "chn"
aput-object v6, v1, v5
const/16 v5, 0x4b
const-string v6, "cho"
aput-object v6, v1, v5
const/16 v5, 0x4c
const-string v6, "chp"
aput-object v6, v1, v5
const/16 v5, 0x4d
const-string v6, "chr"
aput-object v6, v1, v5
const/16 v5, 0x4e
const-string v6, "chy"
aput-object v6, v1, v5
const/16 v5, 0x4f
const-string v6, "cmc"
aput-object v6, v1, v5
const/16 v5, 0x50
const-string v6, "cos"
aput-object v6, v1, v5
const/16 v5, 0x51
const-string v6, "cop"
aput-object v6, v1, v5
const/16 v5, 0x52
const-string v6, "cpe"
aput-object v6, v1, v5
const/16 v5, 0x53
const-string v6, "cpf"
aput-object v6, v1, v5
const/16 v5, 0x54
const-string v6, "cpp"
aput-object v6, v1, v5
const/16 v5, 0x55
const-string v6, "cre"
aput-object v6, v1, v5
const/16 v5, 0x56
const-string v6, "crh"
aput-object v6, v1, v5
const/16 v5, 0x57
const-string v6, "crp"
aput-object v6, v1, v5
const/16 v5, 0x58
const-string v6, "ces"
aput-object v6, v1, v5
const/16 v5, 0x59
const-string v6, "csb"
aput-object v6, v1, v5
const/16 v5, 0x5a
const-string v6, "chu"
aput-object v6, v1, v5
const/16 v5, 0x5b
const-string v6, "cus"
aput-object v6, v1, v5
const/16 v5, 0x5c
const-string v6, "chv"
aput-object v6, v1, v5
const/16 v5, 0x5d
const-string v6, "cym"
aput-object v6, v1, v5
const/16 v5, 0x5e
const-string v6, "dan"
aput-object v6, v1, v5
const/16 v5, 0x5f
const-string v6, "dak"
aput-object v6, v1, v5
const/16 v5, 0x60
const-string v6, "dar"
aput-object v6, v1, v5
const/16 v5, 0x61
const-string v6, "day"
aput-object v6, v1, v5
const/16 v5, 0x62
const-string v6, "deu"
aput-object v6, v1, v5
const/16 v5, 0x63
const-string v6, "del"
aput-object v6, v1, v5
const/16 v5, 0x64
const-string v6, "den"
aput-object v6, v1, v5
const/16 v5, 0x65
const-string v6, "dgr"
aput-object v6, v1, v5
const/16 v5, 0x66
const-string v6, "din"
aput-object v6, v1, v5
const/16 v5, 0x67
const-string v6, "doi"
aput-object v6, v1, v5
const/16 v5, 0x68
const-string v6, "dra"
aput-object v6, v1, v5
const/16 v5, 0x69
const-string v6, "dsb"
aput-object v6, v1, v5
const/16 v5, 0x6a
const-string v6, "dua"
aput-object v6, v1, v5
const/16 v5, 0x6b
const-string v6, "dum"
aput-object v6, v1, v5
const/16 v5, 0x6c
const-string v6, "div"
aput-object v6, v1, v5
const/16 v5, 0x6d
const-string v6, "dyu"
aput-object v6, v1, v5
const/16 v5, 0x6e
const-string v6, "dzo"
aput-object v6, v1, v5
const/16 v5, 0x6f
const-string v6, "ewe"
aput-object v6, v1, v5
const/16 v5, 0x70
const-string v6, "efi"
aput-object v6, v1, v5
const/16 v5, 0x71
const-string v6, "egy"
aput-object v6, v1, v5
const/16 v5, 0x72
const-string v6, "eka"
aput-object v6, v1, v5
const/16 v5, 0x73
const-string v6, "ell"
aput-object v6, v1, v5
const/16 v5, 0x74
const-string v6, "elx"
aput-object v6, v1, v5
const/16 v5, 0x75
const-string v6, "eng"
aput-object v6, v1, v5
const/16 v5, 0x76
const-string v6, "enm"
aput-object v6, v1, v5
const/16 v5, 0x77
const-string v6, "epo"
aput-object v6, v1, v5
const/16 v5, 0x78
const-string v6, "spa"
aput-object v6, v1, v5
const/16 v5, 0x79
const-string v6, "est"
aput-object v6, v1, v5
const/16 v5, 0x7a
const-string v6, "eus"
aput-object v6, v1, v5
const/16 v5, 0x7b
const-string v6, "ewo"
aput-object v6, v1, v5
const/16 v5, 0x7c
const-string v6, "fas"
aput-object v6, v1, v5
const/16 v5, 0x7d
const-string v6, "fan"
aput-object v6, v1, v5
const/16 v5, 0x7e
const-string v6, "fat"
aput-object v6, v1, v5
const/16 v5, 0x7f
const-string v6, "ful"
aput-object v6, v1, v5
const/16 v5, 0x80
const-string v6, "fin"
aput-object v6, v1, v5
const/16 v5, 0x81
const-string v6, "fiu"
aput-object v6, v1, v5
const/16 v5, 0x82
const-string v6, "fij"
aput-object v6, v1, v5
const/16 v5, 0x83
const-string v6, "fao"
aput-object v6, v1, v5
const/16 v5, 0x84
const-string v6, "fon"
aput-object v6, v1, v5
const/16 v5, 0x85
const-string v6, "fra"
aput-object v6, v1, v5
const/16 v5, 0x86
const-string v6, "frm"
aput-object v6, v1, v5
const/16 v5, 0x87
const-string v6, "fro"
aput-object v6, v1, v5
const/16 v5, 0x88
const-string v6, "fur"
aput-object v6, v1, v5
const/16 v5, 0x89
const-string v6, "fry"
aput-object v6, v1, v5
const/16 v5, 0x8a
const-string v6, "gle"
aput-object v6, v1, v5
const/16 v5, 0x8b
const-string v6, "gaa"
aput-object v6, v1, v5
const/16 v5, 0x8c
const-string v6, "gay"
aput-object v6, v1, v5
const/16 v5, 0x8d
const-string v6, "gba"
aput-object v6, v1, v5
const/16 v5, 0x8e
const-string v6, "gla"
aput-object v6, v1, v5
const/16 v5, 0x8f
const-string v6, "gem"
aput-object v6, v1, v5
const/16 v5, 0x90
const-string v6, "gez"
aput-object v6, v1, v5
const/16 v5, 0x91
const-string v6, "gil"
aput-object v6, v1, v5
const/16 v5, 0x92
const-string v6, "glg"
aput-object v6, v1, v5
const/16 v5, 0x93
const-string v6, "gmh"
aput-object v6, v1, v5
const/16 v5, 0x94
const-string v6, "grn"
aput-object v6, v1, v5
const/16 v5, 0x95
const-string v6, "goh"
aput-object v6, v1, v5
const/16 v5, 0x96
const-string v6, "gon"
aput-object v6, v1, v5
const/16 v5, 0x97
const-string v6, "gor"
aput-object v6, v1, v5
const/16 v5, 0x98
const-string v6, "got"
aput-object v6, v1, v5
const/16 v5, 0x99
const-string v6, "grb"
aput-object v6, v1, v5
const/16 v5, 0x9a
const-string v6, "grc"
aput-object v6, v1, v5
const/16 v5, 0x9b
const-string v6, "guj"
aput-object v6, v1, v5
const/16 v5, 0x9c
const-string v6, "glv"
aput-object v6, v1, v5
const/16 v5, 0x9d
const-string v6, "gwi"
aput-object v6, v1, v5
const/16 v5, 0x9e
const-string v6, "hau"
aput-object v6, v1, v5
const/16 v5, 0x9f
const-string v6, "hai"
aput-object v6, v1, v5
const/16 v5, 0xa0
const-string v6, "haw"
aput-object v6, v1, v5
const/16 v5, 0xa1
const-string v6, "heb"
aput-object v6, v1, v5
const/16 v5, 0xa2
const-string v6, "hin"
aput-object v6, v1, v5
const/16 v5, 0xa3
const-string v6, "hil"
aput-object v6, v1, v5
const/16 v5, 0xa4
const-string v6, "him"
aput-object v6, v1, v5
const/16 v5, 0xa5
const-string v6, "hit"
aput-object v6, v1, v5
const/16 v5, 0xa6
const-string v6, "hmn"
aput-object v6, v1, v5
const/16 v5, 0xa7
const-string v6, "hmo"
aput-object v6, v1, v5
const/16 v5, 0xa8
const-string v6, "hrv"
aput-object v6, v1, v5
const/16 v5, 0xa9
const-string v6, "hsb"
aput-object v6, v1, v5
const/16 v5, 0xaa
const-string v6, "hat"
aput-object v6, v1, v5
const/16 v5, 0xab
const-string v6, "hun"
aput-object v6, v1, v5
const/16 v5, 0xac
const-string v6, "hup"
aput-object v6, v1, v5
const/16 v5, 0xad
const-string v6, "hye"
aput-object v6, v1, v5
const/16 v5, 0xae
const-string v6, "her"
aput-object v6, v1, v5
const/16 v5, 0xaf
const-string v6, "ina"
aput-object v6, v1, v5
const/16 v5, 0xb0
const-string v6, "iba"
aput-object v6, v1, v5
const/16 v5, 0xb1
const-string v6, "ind"
aput-object v6, v1, v5
const/16 v5, 0xb2
const-string v6, "ile"
aput-object v6, v1, v5
const/16 v5, 0xb3
const-string v6, "ibo"
aput-object v6, v1, v5
const/16 v5, 0xb4
const-string v6, "iii"
aput-object v6, v1, v5
const/16 v5, 0xb5
const-string v6, "ijo"
aput-object v6, v1, v5
const/16 v5, 0xb6
const-string v6, "ipk"
aput-object v6, v1, v5
const/16 v5, 0xb7
const-string v6, "ilo"
aput-object v6, v1, v5
const/16 v5, 0xb8
const-string v6, "inc"
aput-object v6, v1, v5
const/16 v5, 0xb9
const-string v6, "ine"
aput-object v6, v1, v5
const/16 v5, 0xba
const-string v6, "inh"
aput-object v6, v1, v5
const/16 v5, 0xbb
const-string v6, "ido"
aput-object v6, v1, v5
const/16 v5, 0xbc
const-string v6, "ira"
aput-object v6, v1, v5
const/16 v5, 0xbd
const-string v6, "iro"
aput-object v6, v1, v5
const/16 v5, 0xbe
const-string v6, "isl"
aput-object v6, v1, v5
const/16 v5, 0xbf
const-string v6, "ita"
aput-object v6, v1, v5
const/16 v5, 0xc0
const-string v6, "iku"
aput-object v6, v1, v5
const/16 v5, 0xc1
const-string v6, "jpn"
aput-object v6, v1, v5
const/16 v5, 0xc2
const-string v6, "jbo"
aput-object v6, v1, v5
const/16 v5, 0xc3
const-string v6, "jpr"
aput-object v6, v1, v5
const/16 v5, 0xc4
const-string v6, "jrb"
aput-object v6, v1, v5
const/16 v5, 0xc5
const-string v6, "jaw"
aput-object v6, v1, v5
const/16 v5, 0xc6
const-string v6, "kat"
aput-object v6, v1, v5
const/16 v5, 0xc7
const-string v6, "kaa"
aput-object v6, v1, v5
const/16 v5, 0xc8
const-string v6, "kab"
aput-object v6, v1, v5
const/16 v5, 0xc9
const-string v6, "kac"
aput-object v6, v1, v5
const/16 v5, 0xca
const-string v6, "kam"
aput-object v6, v1, v5
const/16 v5, 0xcb
const-string v6, "kar"
aput-object v6, v1, v5
const/16 v5, 0xcc
const-string v6, "kaw"
aput-object v6, v1, v5
const/16 v5, 0xcd
const-string v6, "kbd"
aput-object v6, v1, v5
const/16 v5, 0xce
const-string v6, "kon"
aput-object v6, v1, v5
const/16 v5, 0xcf
const-string v6, "kha"
aput-object v6, v1, v5
const/16 v5, 0xd0
const-string v6, "khi"
aput-object v6, v1, v5
const/16 v5, 0xd1
const-string v6, "kho"
aput-object v6, v1, v5
const/16 v5, 0xd2
const-string v6, "kik"
aput-object v6, v1, v5
const/16 v5, 0xd3
const-string v6, "kua"
aput-object v6, v1, v5
const/16 v5, 0xd4
const-string v6, "kaz"
aput-object v6, v1, v5
const/16 v5, 0xd5
const-string v6, "kal"
aput-object v6, v1, v5
const/16 v5, 0xd6
const-string v6, "khm"
aput-object v6, v1, v5
const/16 v5, 0xd7
const-string v6, "kmb"
aput-object v6, v1, v5
const/16 v5, 0xd8
const-string v6, "kan"
aput-object v6, v1, v5
const/16 v5, 0xd9
const-string v6, "kor"
aput-object v6, v1, v5
const/16 v5, 0xda
const-string v6, "kok"
aput-object v6, v1, v5
const/16 v5, 0xdb
const-string v6, "kos"
aput-object v6, v1, v5
const/16 v5, 0xdc
const-string v6, "kpe"
aput-object v6, v1, v5
const/16 v5, 0xdd
const-string v6, "kau"
aput-object v6, v1, v5
const/16 v5, 0xde
const-string v6, "krc"
aput-object v6, v1, v5
const/16 v5, 0xdf
const-string v6, "kro"
aput-object v6, v1, v5
const/16 v5, 0xe0
const-string v6, "kru"
aput-object v6, v1, v5
const/16 v5, 0xe1
const-string v6, "kas"
aput-object v6, v1, v5
const/16 v5, 0xe2
const-string v6, "kur"
aput-object v6, v1, v5
const/16 v5, 0xe3
const-string v6, "kum"
aput-object v6, v1, v5
const/16 v5, 0xe4
const-string v6, "kut"
aput-object v6, v1, v5
const/16 v5, 0xe5
const-string v6, "kom"
aput-object v6, v1, v5
const/16 v5, 0xe6
const-string v6, "cor"
aput-object v6, v1, v5
const/16 v5, 0xe7
const-string v6, "kir"
aput-object v6, v1, v5
const/16 v5, 0xe8
const-string v6, "lat"
aput-object v6, v1, v5
const/16 v5, 0xe9
const-string v6, "lad"
aput-object v6, v1, v5
const/16 v5, 0xea
const-string v6, "lah"
aput-object v6, v1, v5
const/16 v5, 0xeb
const-string v6, "lam"
aput-object v6, v1, v5
const/16 v5, 0xec
const-string v6, "ltz"
aput-object v6, v1, v5
const/16 v5, 0xed
const-string v6, "lez"
aput-object v6, v1, v5
const/16 v5, 0xee
const-string v6, "lug"
aput-object v6, v1, v5
const/16 v5, 0xef
const-string v6, "lim"
aput-object v6, v1, v5
const/16 v5, 0xf0
const-string v6, "lin"
aput-object v6, v1, v5
const/16 v5, 0xf1
const-string v6, "lao"
aput-object v6, v1, v5
const/16 v5, 0xf2
const-string v6, "lol"
aput-object v6, v1, v5
const/16 v5, 0xf3
const-string v6, "loz"
aput-object v6, v1, v5
const/16 v5, 0xf4
const-string v6, "lit"
aput-object v6, v1, v5
const/16 v5, 0xf5
const-string v6, "lub"
aput-object v6, v1, v5
const/16 v5, 0xf6
const-string v6, "lua"
aput-object v6, v1, v5
const/16 v5, 0xf7
const-string v6, "lui"
aput-object v6, v1, v5
const/16 v5, 0xf8
const-string v6, "lun"
aput-object v6, v1, v5
const/16 v5, 0xf9
const-string v6, "luo"
aput-object v6, v1, v5
const/16 v5, 0xfa
const-string v6, "lus"
aput-object v6, v1, v5
const/16 v5, 0xfb
const-string v6, "lav"
aput-object v6, v1, v5
const/16 v5, 0xfc
const-string v6, "mad"
aput-object v6, v1, v5
const/16 v5, 0xfd
const-string v6, "mag"
aput-object v6, v1, v5
const/16 v5, 0xfe
const-string v6, "mai"
aput-object v6, v1, v5
const/16 v5, 0xff
const-string v6, "mak"
aput-object v6, v1, v5
const/16 v5, 0x100
const-string v6, "man"
aput-object v6, v1, v5
const/16 v5, 0x101
const-string v6, "map"
aput-object v6, v1, v5
const/16 v5, 0x102
const-string v6, "mas"
aput-object v6, v1, v5
const/16 v5, 0x103
const-string v6, "mdf"
aput-object v6, v1, v5
const/16 v5, 0x104
const-string v6, "mdr"
aput-object v6, v1, v5
const/16 v5, 0x105
const-string v6, "men"
aput-object v6, v1, v5
const/16 v5, 0x106
const-string v6, "mlg"
aput-object v6, v1, v5
const/16 v5, 0x107
const-string v6, "mga"
aput-object v6, v1, v5
const/16 v5, 0x108
const-string v6, "mah"
aput-object v6, v1, v5
const/16 v5, 0x109
const-string v6, "mri"
aput-object v6, v1, v5
const/16 v5, 0x10a
const-string v6, "mic"
aput-object v6, v1, v5
const/16 v5, 0x10b
const-string v6, "min"
aput-object v6, v1, v5
const/16 v5, 0x10c
const-string v6, "mis"
aput-object v6, v1, v5
const/16 v5, 0x10d
const-string v6, "mkd"
aput-object v6, v1, v5
const/16 v5, 0x10e
const-string v6, "mkh"
aput-object v6, v1, v5
const/16 v5, 0x10f
const-string v6, "mal"
aput-object v6, v1, v5
const/16 v5, 0x110
const-string v6, "mon"
aput-object v6, v1, v5
const/16 v5, 0x111
const-string v6, "mnc"
aput-object v6, v1, v5
const/16 v5, 0x112
const-string v6, "mni"
aput-object v6, v1, v5
const/16 v5, 0x113
const-string v6, "mno"
aput-object v6, v1, v5
const/16 v5, 0x114
const-string v6, "mol"
aput-object v6, v1, v5
const/16 v5, 0x115
const-string v6, "moh"
aput-object v6, v1, v5
const/16 v5, 0x116
const-string v6, "mos"
aput-object v6, v1, v5
const/16 v5, 0x117
const-string v6, "mar"
aput-object v6, v1, v5
const/16 v5, 0x118
const-string v6, "msa"
aput-object v6, v1, v5
const/16 v5, 0x119
const-string v6, "mlt"
aput-object v6, v1, v5
const/16 v5, 0x11a
const-string v6, "mul"
aput-object v6, v1, v5
const/16 v5, 0x11b
const-string v6, "mun"
aput-object v6, v1, v5
const/16 v5, 0x11c
const-string v6, "mus"
aput-object v6, v1, v5
const/16 v5, 0x11d
const-string v6, "mwr"
aput-object v6, v1, v5
const/16 v5, 0x11e
const-string v6, "mya"
aput-object v6, v1, v5
const/16 v5, 0x11f
const-string v6, "myn"
aput-object v6, v1, v5
const/16 v5, 0x120
const-string v6, "myv"
aput-object v6, v1, v5
const/16 v5, 0x121
const-string v6, "nau"
aput-object v6, v1, v5
const/16 v5, 0x122
const-string v6, "nah"
aput-object v6, v1, v5
const/16 v5, 0x123
const-string v6, "nai"
aput-object v6, v1, v5
const/16 v5, 0x124
const-string v6, "nap"
aput-object v6, v1, v5
const/16 v5, 0x125
const-string v6, "nob"
aput-object v6, v1, v5
const/16 v5, 0x126
const-string v6, "nde"
aput-object v6, v1, v5
const/16 v5, 0x127
const-string v6, "nds"
aput-object v6, v1, v5
const/16 v5, 0x128
const-string v6, "nep"
aput-object v6, v1, v5
const/16 v5, 0x129
const-string v6, "new"
aput-object v6, v1, v5
const/16 v5, 0x12a
const-string v6, "ndo"
aput-object v6, v1, v5
const/16 v5, 0x12b
const-string v6, "nia"
aput-object v6, v1, v5
const/16 v5, 0x12c
const-string v6, "nic"
aput-object v6, v1, v5
const/16 v5, 0x12d
const-string v6, "niu"
aput-object v6, v1, v5
const/16 v5, 0x12e
const-string v6, "nld"
aput-object v6, v1, v5
const/16 v5, 0x12f
const-string v6, "nno"
aput-object v6, v1, v5
const/16 v5, 0x130
const-string v6, "nor"
aput-object v6, v1, v5
const/16 v5, 0x131
const-string v6, "nog"
aput-object v6, v1, v5
const/16 v5, 0x132
const-string v6, "non"
aput-object v6, v1, v5
const/16 v5, 0x133
const-string v6, "nbl"
aput-object v6, v1, v5
const/16 v5, 0x134
const-string v6, "nso"
aput-object v6, v1, v5
const/16 v5, 0x135
const-string v6, "nub"
aput-object v6, v1, v5
const/16 v5, 0x136
const-string v6, "nav"
aput-object v6, v1, v5
const/16 v5, 0x137
const-string v6, "nwc"
aput-object v6, v1, v5
const/16 v5, 0x138
const-string v6, "nya"
aput-object v6, v1, v5
const/16 v5, 0x139
const-string v6, "nym"
aput-object v6, v1, v5
const/16 v5, 0x13a
const-string v6, "nyn"
aput-object v6, v1, v5
const/16 v5, 0x13b
const-string v6, "nyo"
aput-object v6, v1, v5
const/16 v5, 0x13c
const-string v6, "nzi"
aput-object v6, v1, v5
const/16 v5, 0x13d
const-string v6, "oci"
aput-object v6, v1, v5
const/16 v5, 0x13e
const-string v6, "oji"
aput-object v6, v1, v5
const/16 v5, 0x13f
const-string v6, "orm"
aput-object v6, v1, v5
const/16 v5, 0x140
const-string v6, "ori"
aput-object v6, v1, v5
const/16 v5, 0x141
const-string v6, "oss"
aput-object v6, v1, v5
const/16 v5, 0x142
const-string v6, "osa"
aput-object v6, v1, v5
const/16 v5, 0x143
const-string v6, "ota"
aput-object v6, v1, v5
const/16 v5, 0x144
const-string v6, "oto"
aput-object v6, v1, v5
const/16 v5, 0x145
const-string v6, "pan"
aput-object v6, v1, v5
const/16 v5, 0x146
const-string v6, "paa"
aput-object v6, v1, v5
const/16 v5, 0x147
const-string v6, "pag"
aput-object v6, v1, v5
const/16 v5, 0x148
const-string v6, "pal"
aput-object v6, v1, v5
const/16 v5, 0x149
const-string v6, "pam"
aput-object v6, v1, v5
const/16 v5, 0x14a
const-string v6, "pap"
aput-object v6, v1, v5
const/16 v5, 0x14b
const-string v6, "pau"
aput-object v6, v1, v5
const/16 v5, 0x14c
const-string v6, "peo"
aput-object v6, v1, v5
const/16 v5, 0x14d
const-string v6, "phi"
aput-object v6, v1, v5
const/16 v5, 0x14e
const-string v6, "phn"
aput-object v6, v1, v5
const/16 v5, 0x14f
const-string v6, "pli"
aput-object v6, v1, v5
const/16 v5, 0x150
const-string v6, "pol"
aput-object v6, v1, v5
const/16 v5, 0x151
const-string v6, "pon"
aput-object v6, v1, v5
const/16 v5, 0x152
const-string v6, "pra"
aput-object v6, v1, v5
const/16 v5, 0x153
const-string v6, "pro"
aput-object v6, v1, v5
const/16 v5, 0x154
const-string v6, "pus"
aput-object v6, v1, v5
const/16 v5, 0x155
const-string v6, "por"
aput-object v6, v1, v5
const/16 v5, 0x156
const-string v6, "que"
aput-object v6, v1, v5
const/16 v5, 0x157
const-string v6, "raj"
aput-object v6, v1, v5
const/16 v5, 0x158
const-string v6, "rap"
aput-object v6, v1, v5
const/16 v5, 0x159
const-string v6, "rar"
aput-object v6, v1, v5
const/16 v5, 0x15a
const-string v6, "roh"
aput-object v6, v1, v5
const/16 v5, 0x15b
const-string v6, "run"
aput-object v6, v1, v5
const/16 v5, 0x15c
const-string v6, "ron"
aput-object v6, v1, v5
const/16 v5, 0x15d
const-string v6, "roa"
aput-object v6, v1, v5
const/16 v5, 0x15e
const-string v6, "rom"
aput-object v6, v1, v5
const/16 v5, 0x15f
const-string v6, "rus"
aput-object v6, v1, v5
const/16 v5, 0x160
const-string v6, "rup"
aput-object v6, v1, v5
const/16 v5, 0x161
const-string v6, "kin"
aput-object v6, v1, v5
const/16 v5, 0x162
const-string v6, "san"
aput-object v6, v1, v5
const/16 v5, 0x163
const-string v6, "sad"
aput-object v6, v1, v5
const/16 v5, 0x164
const-string v6, "sah"
aput-object v6, v1, v5
const/16 v5, 0x165
const-string v6, "sai"
aput-object v6, v1, v5
const/16 v5, 0x166
const-string v6, "sal"
aput-object v6, v1, v5
const/16 v5, 0x167
const-string v6, "sam"
aput-object v6, v1, v5
const/16 v5, 0x168
const-string v6, "sas"
aput-object v6, v1, v5
const/16 v5, 0x169
const-string v6, "sat"
aput-object v6, v1, v5
const/16 v5, 0x16a
const-string v6, "srd"
aput-object v6, v1, v5
const/16 v5, 0x16b
const-string v6, "sco"
aput-object v6, v1, v5
const/16 v5, 0x16c
const-string v6, "snd"
aput-object v6, v1, v5
const/16 v5, 0x16d
const-string v6, "sme"
aput-object v6, v1, v5
const/16 v5, 0x16e
const-string v6, "sel"
aput-object v6, v1, v5
const/16 v5, 0x16f
const-string v6, "sem"
aput-object v6, v1, v5
const/16 v5, 0x170
const-string v6, "sag"
aput-object v6, v1, v5
const/16 v5, 0x171
const-string v6, "sga"
aput-object v6, v1, v5
const/16 v5, 0x172
const-string v6, "sgn"
aput-object v6, v1, v5
const/16 v5, 0x173
const-string v6, "shn"
aput-object v6, v1, v5
const/16 v5, 0x174
const-string v6, "sin"
aput-object v6, v1, v5
const/16 v5, 0x175
const-string v6, "sid"
aput-object v6, v1, v5
const/16 v5, 0x176
const-string v6, "sio"
aput-object v6, v1, v5
const/16 v5, 0x177
const-string v6, "sit"
aput-object v6, v1, v5
const/16 v5, 0x178
const-string v6, "slk"
aput-object v6, v1, v5
const/16 v5, 0x179
const-string v6, "slv"
aput-object v6, v1, v5
const/16 v5, 0x17a
const-string v6, "sla"
aput-object v6, v1, v5
const/16 v5, 0x17b
const-string v6, "smo"
aput-object v6, v1, v5
const/16 v5, 0x17c
const-string v6, "sma"
aput-object v6, v1, v5
const/16 v5, 0x17d
const-string v6, "smi"
aput-object v6, v1, v5
const/16 v5, 0x17e
const-string v6, "smj"
aput-object v6, v1, v5
const/16 v5, 0x17f
const-string v6, "smn"
aput-object v6, v1, v5
const/16 v5, 0x180
const-string v6, "sms"
aput-object v6, v1, v5
const/16 v5, 0x181
const-string v6, "sna"
aput-object v6, v1, v5
const/16 v5, 0x182
const-string v6, "snk"
aput-object v6, v1, v5
const/16 v5, 0x183
const-string v6, "som"
aput-object v6, v1, v5
const/16 v5, 0x184
const-string v6, "sog"
aput-object v6, v1, v5
const/16 v5, 0x185
const-string v6, "son"
aput-object v6, v1, v5
const/16 v5, 0x186
const-string v6, "sqi"
aput-object v6, v1, v5
const/16 v5, 0x187
const-string v6, "srp"
aput-object v6, v1, v5
const/16 v5, 0x188
const-string v6, "srr"
aput-object v6, v1, v5
const/16 v5, 0x189
const-string v6, "ssw"
aput-object v6, v1, v5
const/16 v5, 0x18a
const-string v6, "ssa"
aput-object v6, v1, v5
const/16 v5, 0x18b
const-string v6, "sot"
aput-object v6, v1, v5
const/16 v5, 0x18c
const-string v6, "sun"
aput-object v6, v1, v5
const/16 v5, 0x18d
const-string v6, "suk"
aput-object v6, v1, v5
const/16 v5, 0x18e
const-string v6, "sus"
aput-object v6, v1, v5
const/16 v5, 0x18f
const-string v6, "sux"
aput-object v6, v1, v5
const/16 v5, 0x190
const-string v6, "swe"
aput-object v6, v1, v5
const/16 v5, 0x191
const-string v6, "swa"
aput-object v6, v1, v5
const/16 v5, 0x192
const-string v6, "syr"
aput-object v6, v1, v5
const/16 v5, 0x193
const-string v6, "tam"
aput-object v6, v1, v5
const/16 v5, 0x194
const-string v6, "tai"
aput-object v6, v1, v5
const/16 v5, 0x195
const-string v6, "tel"
aput-object v6, v1, v5
const/16 v5, 0x196
const-string v6, "tem"
aput-object v6, v1, v5
const/16 v5, 0x197
const-string v6, "ter"
aput-object v6, v1, v5
const/16 v5, 0x198
const-string v6, "tet"
aput-object v6, v1, v5
const/16 v5, 0x199
const-string v6, "tgk"
aput-object v6, v1, v5
const/16 v5, 0x19a
const-string v6, "tha"
aput-object v6, v1, v5
const/16 v5, 0x19b
const-string v6, "tir"
aput-object v6, v1, v5
const/16 v5, 0x19c
const-string v6, "tig"
aput-object v6, v1, v5
const/16 v5, 0x19d
const-string v6, "tiv"
aput-object v6, v1, v5
const/16 v5, 0x19e
const-string v6, "tuk"
aput-object v6, v1, v5
const/16 v5, 0x19f
const-string v6, "tkl"
aput-object v6, v1, v5
const/16 v5, 0x1a0
const-string v6, "tgl"
aput-object v6, v1, v5
const/16 v5, 0x1a1
const-string v6, "tlh"
aput-object v6, v1, v5
const/16 v5, 0x1a2
const-string v6, "tli"
aput-object v6, v1, v5
const/16 v5, 0x1a3
const-string v6, "tmh"
aput-object v6, v1, v5
const/16 v5, 0x1a4
const-string v6, "tsn"
aput-object v6, v1, v5
const/16 v5, 0x1a5
const-string v6, "ton"
aput-object v6, v1, v5
const/16 v5, 0x1a6
const-string v6, "tog"
aput-object v6, v1, v5
const/16 v5, 0x1a7
const-string v6, "tpi"
aput-object v6, v1, v5
const/16 v5, 0x1a8
const-string v6, "tur"
aput-object v6, v1, v5
const/16 v5, 0x1a9
const-string v6, "tso"
aput-object v6, v1, v5
const/16 v5, 0x1aa
const-string v6, "tsi"
aput-object v6, v1, v5
const/16 v5, 0x1ab
const-string v6, "tat"
aput-object v6, v1, v5
const/16 v5, 0x1ac
const-string v6, "tum"
aput-object v6, v1, v5
const/16 v5, 0x1ad
const-string v6, "tup"
aput-object v6, v1, v5
const/16 v5, 0x1ae
const-string v6, "tut"
aput-object v6, v1, v5
const/16 v5, 0x1af
const-string v6, "tvl"
aput-object v6, v1, v5
const/16 v5, 0x1b0
const-string v6, "twi"
aput-object v6, v1, v5
const/16 v5, 0x1b1
const-string v6, "tah"
aput-object v6, v1, v5
const/16 v5, 0x1b2
const-string v6, "tyv"
aput-object v6, v1, v5
const/16 v5, 0x1b3
const-string v6, "udm"
aput-object v6, v1, v5
const/16 v5, 0x1b4
const-string v6, "uig"
aput-object v6, v1, v5
const/16 v5, 0x1b5
const-string v6, "uga"
aput-object v6, v1, v5
const/16 v5, 0x1b6
const-string v6, "ukr"
aput-object v6, v1, v5
const/16 v5, 0x1b7
const-string v6, "umb"
aput-object v6, v1, v5
const/16 v5, 0x1b8
const-string v6, "und"
aput-object v6, v1, v5
const/16 v5, 0x1b9
const-string v6, "urd"
aput-object v6, v1, v5
const/16 v5, 0x1ba
const-string v6, "uzb"
aput-object v6, v1, v5
const/16 v5, 0x1bb
const-string v6, "vai"
aput-object v6, v1, v5
const/16 v5, 0x1bc
const-string v6, "ven"
aput-object v6, v1, v5
const/16 v5, 0x1bd
const-string v6, "vie"
aput-object v6, v1, v5
const/16 v5, 0x1be
const-string v6, "vol"
aput-object v6, v1, v5
const/16 v5, 0x1bf
const-string v6, "vot"
aput-object v6, v1, v5
const/16 v5, 0x1c0
const-string v6, "wln"
aput-object v6, v1, v5
const/16 v5, 0x1c1
const-string v6, "wak"
aput-object v6, v1, v5
const/16 v5, 0x1c2
const-string v6, "wal"
aput-object v6, v1, v5
const/16 v5, 0x1c3
const-string v6, "war"
aput-object v6, v1, v5
const/16 v5, 0x1c4
const-string v6, "was"
aput-object v6, v1, v5
const/16 v5, 0x1c5
const-string v6, "wen"
aput-object v6, v1, v5
const/16 v5, 0x1c6
const-string v6, "wol"
aput-object v6, v1, v5
const/16 v5, 0x1c7
const-string v6, "xal"
aput-object v6, v1, v5
const/16 v5, 0x1c8
const-string v6, "xho"
aput-object v6, v1, v5
const/16 v5, 0x1c9
const-string v6, "yao"
aput-object v6, v1, v5
const/16 v5, 0x1ca
const-string v6, "yap"
aput-object v6, v1, v5
const/16 v5, 0x1cb
const-string v6, "yid"
aput-object v6, v1, v5
const/16 v5, 0x1cc
const-string v6, "yor"
aput-object v6, v1, v5
const/16 v5, 0x1cd
const-string v6, "ypk"
aput-object v6, v1, v5
const/16 v5, 0x1ce
const-string v6, "zha"
aput-object v6, v1, v5
const/16 v5, 0x1cf
const-string v6, "zap"
aput-object v6, v1, v5
const/16 v5, 0x1d0
const-string v6, "zen"
aput-object v6, v1, v5
const/16 v5, 0x1d1
const-string v6, "zho"
aput-object v6, v1, v5
const/16 v5, 0x1d2
const-string v6, "znd"
aput-object v6, v1, v5
const/16 v5, 0x1d3
const-string v6, "zul"
aput-object v6, v1, v5
const/16 v5, 0x1d4
const-string v6, "zun"
aput-object v6, v1, v5
const/4 v5, 0x5
new-array v3, v5, [Ljava/lang/String;
const-string v5, "ind"
aput-object v5, v3, v7
const-string v5, "heb"
aput-object v5, v3, v8
const-string v5, "yid"
aput-object v5, v3, v9
const-string v5, "jaw"
aput-object v5, v3, v10
const-string v5, "srp"
aput-object v5, v3, v11
const-class v5, Lcom/ibm/icu/util/ULocale;
monitor-enter v5
:try_start_1645
sget-object v6, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
if-nez v6, :cond_1653
sput-object v0, Lcom/ibm/icu/util/ULocale;->_languages:[Ljava/lang/String;
sput-object v4, Lcom/ibm/icu/util/ULocale;->_replacementLanguages:[Ljava/lang/String;
sput-object v2, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages:[Ljava/lang/String;
sput-object v1, Lcom/ibm/icu/util/ULocale;->_languages3:[Ljava/lang/String;
sput-object v3, Lcom/ibm/icu/util/ULocale;->_obsoleteLanguages3:[Ljava/lang/String;
:cond_1653
monitor-exit v5
:cond_1654
return-void
:catchall_1655
move-exception v6
monitor-exit v5
:try_end_1657
.catchall {:try_start_1645 .. :try_end_1657} :catchall_1655
throw v6
.end method
.method private static isEmptyString(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private static ldmlKeyToBCP47(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const-string v4, "com/ibm/icu/impl/data/icudt42b"
const-string v5, "supplementalData"
sget-object v6, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v4, v5, v6}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
const-string v4, "bcp47KeywordMappings"
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
const-string v4, "key"
invoke-virtual {v0, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
const/4 v1, 0x0
:try_start_1b
invoke-virtual {v2, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_1e
.catch Ljava/util/MissingResourceException; {:try_start_1b .. :try_end_1e} :catch_34
move-result-object v1
:goto_1f
if-nez v1, :cond_32
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
const/4 v5, 0x2
if-ne v4, v5, :cond_30
invoke-static {p0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_30
move-object v4, p0
:goto_2f
return-object v4
:cond_30
const/4 v4, 0x0
goto :goto_2f
:cond_32
move-object v4, v1
goto :goto_2f
:catch_34
move-exception v4
goto :goto_1f
.end method
.method private static ldmlTypeToBCP47(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const-string v6, "com/ibm/icu/impl/data/icudt42b"
const-string v7, "supplementalData"
sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v6, v7, v8}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
const-string v6, "bcp47KeywordMappings"
invoke-virtual {v2, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
const/4 v1, 0x0
:try_start_19
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
const-string v6, "timezone"
invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_47
const-string v6, "/"
const-string v7, ":"
invoke-static {p1, v6, v7}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object v3, v6
:goto_2e
invoke-virtual {v5, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_31
.catch Ljava/util/MissingResourceException; {:try_start_19 .. :try_end_31} :catch_4d
move-result-object v1
:goto_32
if-nez v1, :cond_4b
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
const/4 v6, 0x3
if-lt v4, v6, :cond_49
const/16 v6, 0x8
if-gt v4, v6, :cond_49
invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_49
move-object v6, p1
:goto_46
return-object v6
:cond_47
move-object v3, p1
goto :goto_2e
:cond_49
const/4 v6, 0x0
goto :goto_46
:cond_4b
move-object v6, v1
goto :goto_46
:catch_4d
move-exception v6
goto :goto_32
.end method
.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string v2, "com/ibm/icu/impl/data/icudt42b"
const-string v3, "likelySubtags"
invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
:try_start_8
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_b
.catch Ljava/util/MissingResourceException; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v2
:goto_c
return-object v2
:catch_d
move-exception v1
const/4 v2, 0x0
goto :goto_c
.end method
.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v2, 0x5f
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
if-eqz p0, :cond_12
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_12
invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_12
if-eqz p1, :cond_20
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_20
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_20
if-eqz p2, :cond_2e
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_2e
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_2e
if-eqz p3, :cond_47
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_47
if-eqz p2, :cond_3e
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_41
:cond_3e
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_41
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_47
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static minimizeSubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
.registers 12
const/4 v10, 0x0
const/4 v9, 0x3
new-array v7, v9, [Ljava/lang/String;
iget-object v9, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v9, v7}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
move-result v8
const/4 v9, 0x0
aget-object v2, v7, v9
const/4 v9, 0x1
aget-object v4, v7, v9
const/4 v9, 0x2
aget-object v3, v7, v9
const/4 v5, 0x0
iget-object v9, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
if-ge v8, v9, :cond_22
iget-object v9, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
:cond_22
invoke-static {v2, v4, v3, v10}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_2e
move-object v9, p0
:goto_2d
return-object v9
:cond_2e
invoke-static {v2, v10, v10, v10}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_42
invoke-static {v2, v10, v10, v5}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v9, Lcom/ibm/icu/util/ULocale;
invoke-direct {v9, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_2d
:cond_42
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_5c
invoke-static {v2, v10, v3, v10}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_5c
invoke-static {v2, v10, v3, v5}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v9, Lcom/ibm/icu/util/ULocale;
invoke-direct {v9, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_2d
:cond_5c
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_7c
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_7c
invoke-static {v2, v4, v10, v10}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_7c
invoke-static {v2, v4, v10, v5}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v9, Lcom/ibm/icu/util/ULocale;
invoke-direct {v9, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_2d
:cond_7c
move-object v9, p0
goto :goto_2d
.end method
.method static parseAcceptLanguage(Ljava/lang/String;Z)[Lcom/ibm/icu/util/ULocale;
.registers 13
new-instance v3, Ljava/util/TreeMap;
invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
new-instance v8, Ljava/lang/StringBuffer;
invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
const/4 v4, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
const-string v0, ","
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p0
invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
const/4 v5, 0x0
const/4 v1, 0x0
const/4 v0, 0x0
move v7, v5
move v6, v4
move v4, v0
move v5, v1
:goto_2a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge v4, v0, :cond_2e6
const/4 v1, 0x0
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v0
packed-switch v6, :pswitch_data_306
:cond_38
move v0, v1
move v9, v7
move v7, v5
move v1, v6
:goto_3c
const/4 v5, -0x1
if-ne v1, v5, :cond_293
new-instance p0, Ljava/text/ParseException;
const-string p1, "Invalid Accept-Language"
invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V
throw p0
:pswitch_47
const/16 v9, 0x41
if-gt v9, v0, :cond_4f
const/16 v9, 0x5a
if-le v0, v9, :cond_57
:cond_4f
const/16 v9, 0x61
if-gt v9, v0, :cond_62
const/16 v9, 0x7a
if-gt v0, v9, :cond_62
:cond_57
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v0, 0x1
const/4 v6, 0x0
move v7, v5
move v9, v6
move v10, v1
move v1, v0
move v0, v10
goto :goto_3c
:cond_62
const/16 v9, 0x2a
if-ne v0, v9, :cond_70
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v0, 0x2
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto :goto_3c
:cond_70
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto :goto_3c
:pswitch_7f
const/16 v9, 0x41
if-gt v9, v0, :cond_87
const/16 v9, 0x5a
if-le v0, v9, :cond_8f
:cond_87
const/16 v9, 0x61
if-gt v9, v0, :cond_97
const/16 v9, 0x7a
if-gt v0, v9, :cond_97
:cond_8f
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v9, v7
move v7, v5
move v1, v6
goto :goto_3c
:cond_97
const/16 v9, 0x2d
if-ne v0, v9, :cond_a4
const/4 v7, 0x1
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v9, v7
move v7, v5
move v1, v6
goto :goto_3c
:cond_a4
const/16 v9, 0x5f
if-ne v0, v9, :cond_ba
if-eqz p1, :cond_b3
const/4 v7, 0x1
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v9, v7
move v7, v5
move v1, v6
goto :goto_3c
:cond_b3
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto :goto_3c
:cond_ba
const/16 v9, 0x30
if-gt v9, v0, :cond_d5
const/16 v9, 0x39
if-gt v0, v9, :cond_d5
if-eqz v7, :cond_cd
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v9, v7
move v7, v5
move v1, v6
goto/16 :goto_3c
:cond_cd
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_d5
const/16 v9, 0x2c
if-ne v0, v9, :cond_df
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_df
const/16 v6, 0x20
if-eq v0, v6, :cond_e7
const/16 v6, 0x9
if-ne v0, v6, :cond_ef
:cond_e7
const/4 v0, 0x3
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_ef
const/16 v6, 0x3b
if-ne v0, v6, :cond_fb
const/4 v0, 0x4
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_fb
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_103
const/16 v9, 0x2c
if-ne v0, v9, :cond_10d
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_10d
const/16 v6, 0x20
if-eq v0, v6, :cond_115
const/16 v6, 0x9
if-ne v0, v6, :cond_11d
:cond_115
const/4 v0, 0x3
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_11d
const/16 v6, 0x3b
if-ne v0, v6, :cond_129
const/4 v0, 0x4
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_129
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_131
const/16 v9, 0x2c
if-ne v0, v9, :cond_13b
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_13b
const/16 v9, 0x3b
if-ne v0, v9, :cond_147
const/4 v0, 0x4
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_147
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_157
const/16 v9, 0x71
if-ne v0, v9, :cond_163
const/4 v0, 0x5
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_163
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_173
const/16 v9, 0x3d
if-ne v0, v9, :cond_17f
const/4 v0, 0x6
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_17f
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_18f
const/16 v9, 0x30
if-ne v0, v9, :cond_19f
const/4 v5, 0x0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v0, 0x7
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_19f
const/16 v9, 0x31
if-ne v0, v9, :cond_1ae
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v0, 0x7
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_1ae
const/16 v9, 0x2e
if-ne v0, v9, :cond_1c8
if-eqz p1, :cond_1c0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/16 v0, 0x8
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_1c0
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_1c8
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_1d8
const/16 v9, 0x2e
if-ne v0, v9, :cond_1e8
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/16 v0, 0x8
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_1e8
const/16 v9, 0x2c
if-ne v0, v9, :cond_1f2
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_1f2
const/16 v6, 0x20
if-eq v0, v6, :cond_1fa
const/16 v6, 0x9
if-ne v0, v6, :cond_203
:cond_1fa
const/16 v0, 0xa
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_203
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_20b
const/16 v6, 0x30
if-le v6, v0, :cond_213
const/16 v6, 0x39
if-gt v0, v6, :cond_22f
:cond_213
if-eqz v5, :cond_223
const/16 v6, 0x30
if-eq v0, v6, :cond_223
if-nez p1, :cond_223
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_223
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/16 v0, 0x9
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_22f
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_237
const/16 v9, 0x30
if-gt v9, v0, :cond_256
const/16 v9, 0x39
if-gt v0, v9, :cond_256
if-eqz v5, :cond_24d
const/16 v9, 0x30
if-eq v0, v9, :cond_24d
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_24d
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v9, v7
move v7, v5
move v1, v6
goto/16 :goto_3c
:cond_256
const/16 v9, 0x2c
if-ne v0, v9, :cond_260
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_260
const/16 v6, 0x20
if-eq v0, v6, :cond_268
const/16 v6, 0x9
if-ne v0, v6, :cond_271
:cond_268
const/16 v0, 0xa
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_271
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:pswitch_279
const/16 v9, 0x2c
if-ne v0, v9, :cond_283
const/4 v0, 0x1
move v9, v7
move v1, v6
move v7, v5
goto/16 :goto_3c
:cond_283
const/16 v9, 0x20
if-eq v0, v9, :cond_38
const/16 v9, 0x9
if-eq v0, v9, :cond_38
const/4 v0, -0x1
move v9, v7
move v7, v5
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_3c
:cond_293
if-eqz v0, :cond_2da
const-wide/high16 v0, 0x3ff0
invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I
move-result v5
if-eqz v5, :cond_303
:try_start_29d
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_2a4
.catch Ljava/lang/NumberFormatException; {:try_start_29d .. :try_end_2a4} :catch_2e2
move-result-wide v0
:goto_2a5
const-wide/high16 v5, 0x3ff0
cmpl-double v5, v0, v5
if-lez v5, :cond_303
const-wide/high16 v0, 0x3ff0
move-wide v5, v0
:goto_2ae
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v0
const/16 v1, 0x2a
if-eq v0, v1, :cond_2d0
invoke-virtual {v3}, Ljava/util/TreeMap;->size()I
move-result v1
new-instance v0, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;
invoke-direct {v0, v5, v6, v1}, Lcom/ibm/icu/util/ULocale$1ULocaleAcceptLanguageQ;-><init>(DI)V
new-instance v1, Lcom/ibm/icu/util/ULocale;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2d0
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V
const/4 v0, 0x0
invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->setLength(I)V
const/4 v0, 0x0
move v1, v0
:cond_2da
add-int/lit8 v0, v4, 0x1
move v5, v7
move v4, v0
move v6, v1
move v7, v9
goto/16 :goto_2a
:catch_2e2
move-exception v0
const-wide/high16 v0, 0x3ff0
goto :goto_2a5
:cond_2e6
if-eqz v6, :cond_2f0
new-instance p0, Ljava/text/ParseException;
const-string p1, "Invalid AcceptlLanguage"
invoke-direct {p0, p1, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V
throw p0
:cond_2f0
invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;
move-result-object p0
invoke-virtual {v3}, Ljava/util/TreeMap;->size()I
move-result p1
new-array p1, p1, [Lcom/ibm/icu/util/ULocale;
invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Lcom/ibm/icu/util/ULocale;
check-cast p0, [Lcom/ibm/icu/util/ULocale;
return-object p0
:cond_303
move-wide v5, v0
goto :goto_2ae
nop
:pswitch_data_306
.packed-switch 0x0
:pswitch_47
:pswitch_7f
:pswitch_103
:pswitch_131
:pswitch_157
:pswitch_173
:pswitch_18f
:pswitch_1d8
:pswitch_20b
:pswitch_237
:pswitch_279
.end packed-switch
.end method
.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
.registers 12
const/4 v9, 0x2
const/4 v8, 0x0
const/4 v7, 0x1
new-instance v2, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v6, 0x0
invoke-direct {v2, p0, v6}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getScript()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getCountry()Ljava/lang/String;
move-result-object v3
invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_4a
const-string v6, "und"
aput-object v6, p1, v8
:goto_1f
const-string v6, "Zzzz"
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_4d
const-string v6, ""
aput-object v6, p1, v7
:goto_2b
const-string v6, "ZZ"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_50
const-string v6, ""
aput-object v6, p1, v9
:goto_37
invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$IDParser;->getVariant()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_55
invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_53
sub-int v6, v0, v7
:goto_49
return v6
:cond_4a
aput-object v1, p1, v8
goto :goto_1f
:cond_4d
aput-object v4, p1, v7
goto :goto_2b
:cond_50
aput-object v3, p1, v9
goto :goto_37
:cond_53
move v6, v0
goto :goto_49
:cond_55
const/16 v6, 0x40
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v6, -0x1
if-ne v0, v6, :cond_63
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
goto :goto_49
:cond_63
move v6, v0
goto :goto_49
.end method
.method public static declared-synchronized setDefault(Lcom/ibm/icu/util/ULocale;)V
.registers 3
const-class v0, Lcom/ibm/icu/util/ULocale;
monitor-enter v0
:try_start_3
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;
move-result-object v1
invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V
sput-object p0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_e
monitor-exit v0
return-void
:catchall_e
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Lcom/ibm/icu/util/ULocale$IDParser;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/ULocale$IDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$IDParser;->getName()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public clone()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
check-cast p1, Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
:cond_11
instance-of v0, p1, Lcom/ibm/icu/util/ULocale;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
check-cast p1, Lcom/ibm/icu/util/ULocale;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
:cond_20
const/4 v0, 0x0
goto :goto_3
.end method
.method public getBaseName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCharacterOrientation()Ljava/lang/String;
.registers 5
const-string v0, "layout"
const/4 v1, 0x0
const-string v2, "characters"
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCountry()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayCountry()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayCountry(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, p1, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayKeywordValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p2, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, p1, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayLanguage()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayLanguage(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayName()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayScript()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayScript(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayVariant()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iget-object v1, v1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayVariant(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getExtension(C)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidExtensionKey(C)Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid extension key: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtensionValue(C)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getExtensionKeys()Ljava/util/Set;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtensionKeys()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public getFallback()Lcom/ibm/icu/util/ULocale;
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_14
iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x40
if-ne v2, v3, :cond_15
:goto_14
:cond_14
return-object v1
:cond_15
new-instance v2, Lcom/ibm/icu/util/ULocale;
iget-object v3, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object v0, v1
check-cast v0, Ljava/util/Locale;
move-object p0, v0
invoke-direct {v2, v3, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
move-object v1, v2
goto :goto_14
.end method
.method public getISO3Country()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getISO3Language()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getKeywords()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public getLDMLExtensionKeys()Ljava/util/Set;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getLDMLKeywordKeys()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public getLDMLExtensionValue(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidLDMLKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid LDML key: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getLDMLKeywordType(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLanguage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLineOrientation()Ljava/lang/String;
.registers 5
const-string v0, "layout"
const/4 v1, 0x0
const-string v2, "lines"
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->getTableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
return-object v0
.end method
.method public getScript()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getScript(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getVariant()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getVariant(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
.registers 5
new-instance v0, Lcom/ibm/icu/util/ULocale;
iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-static {v1, p1, p2}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 p0, 0x0
check-cast p0, Ljava/util/Locale;
invoke-direct {v0, v1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
return-object v0
.end method
.method public toLanguageTag()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;
move-result-object v0
invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
move-result-object v1
invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->toLanguageTag(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toLocale()Ljava/util/Locale;
.registers 12
const/4 v10, 0x3
const/4 v9, 0x0
const/4 v8, 0x2
const/4 v7, 0x0
iget-object v5, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
if-nez v5, :cond_6f
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
iget-object v5, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
invoke-direct {v3, v5, v9}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getBaseName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
:goto_14
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
array-length v5, v5
if-ge v1, v5, :cond_5e
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
const/4 v6, 0x1
aget-object v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_33
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
const/4 v6, 0x4
aget-object v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_7e
:cond_33
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
aget-object v5, v5, v8
if-eqz v5, :cond_72
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
aget-object v5, v5, v8
invoke-virtual {v3, v5}, Lcom/ibm/icu/util/ULocale$IDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_7e
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
aget-object v5, v5, v10
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_7e
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
aget-object v5, v5, v7
invoke-direct {v3, v5, v9}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
:goto_5e
:cond_5e
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$IDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;
move-result-object v2
new-instance v5, Ljava/util/Locale;
aget-object v6, v2, v7
aget-object v7, v2, v8
aget-object v8, v2, v10
invoke-direct {v5, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v5, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
:cond_6f
iget-object v5, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;
return-object v5
:cond_72
new-instance v3, Lcom/ibm/icu/util/ULocale$IDParser;
sget-object v5, Lcom/ibm/icu/util/ULocale;->_javaLocaleMap:[[Ljava/lang/String;
aget-object v5, v5, v1
aget-object v5, v5, v7
invoke-direct {v3, v5, v9}, Lcom/ibm/icu/util/ULocale$IDParser;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale$1;)V
goto :goto_5e
:cond_7e
add-int/lit8 v1, v1, 0x1
goto :goto_14
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;
return-object v0
.end method