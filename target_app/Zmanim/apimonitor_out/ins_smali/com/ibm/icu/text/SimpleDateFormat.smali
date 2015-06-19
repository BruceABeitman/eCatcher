.class public Lcom/ibm/icu/text/SimpleDateFormat;
.super Lcom/ibm/icu/text/DateFormat;
.source "SimpleDateFormat.java"
.field private static final CALENDAR_FIELD_TO_LEVEL:[I = null
.field private static final COLON:C = ':'
.field private static final FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"
.field private static final MINUS:C = '-'
.field private static final NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "MYyudehHmsSDFwWkK"
.field private static PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
.field private static final PATTERN_CHAR_BASE:I = 0x40
.field private static final PATTERN_CHAR_TO_INDEX:[I = null
.field private static final PATTERN_CHAR_TO_LEVEL:[I = null
.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I = null
.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field; = null
.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I = null
.field private static final PLUS:C = '+'
.field private static final STR_GMT:Ljava/lang/String; = "GMT"
.field private static final STR_GMT_LEN:I = 0x3
.field private static final STR_UT:Ljava/lang/String; = "UT"
.field private static final STR_UTC:Ljava/lang/String; = "UTC"
.field private static final STR_UTC_LEN:I = 0x3
.field private static final STR_UT_LEN:I = 0x2
.field private static final SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"
.field private static final TZTYPE_DST:I = 0x2
.field private static final TZTYPE_STD:I = 0x1
.field private static final TZTYPE_UNK:I = 0x0
.field private static cachedDefaultLocale:Lcom/ibm/icu/util/ULocale; = null
.field private static cachedDefaultPattern:Ljava/lang/String; = null
.field static final currentSerialVersion:I = 0x1
.field private static final millisPerHour:I = 0x36ee80
.field private static final millisPerMinute:I = 0xea60
.field private static final millisPerSecond:I = 0x3e8
.field private static final serialVersionUID:J = 0x4243c9da93943590L
.field private transient decimalBuf:[C
.field private transient defaultCenturyBase:J
.field private defaultCenturyStart:Ljava/util/Date;
.field private transient defaultCenturyStartYear:I
.field private formatData:Lcom/ibm/icu/text/DateFormatSymbols;
.field private transient gmtFormatHmsMinLen:[I
.field private transient gmtfmtCache:[Ljava/lang/ref/WeakReference;
.field private transient locale:Lcom/ibm/icu/util/ULocale;
.field private numberFormatters:Ljava/util/HashMap;
.field private override:Ljava/lang/String;
.field private overrideMap:Ljava/util/HashMap;
.field private pattern:Ljava/lang/String;
.field private transient patternItems:[Ljava/lang/Object;
.field private serialVersionOnStream:I
.field private transient tztype:I
.field private transient useFastFormat:Z
.field private transient useLocalZeroPaddingNumberFormat:Z
.field private transient zeroDigit:C
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x0
const/16 v2, 0x40
const/16 v3, 0x16
const/16 v1, 0x1e
new-array v0, v3, [I
fill-array-data v0, :array_e4
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I
new-array v0, v2, [I
fill-array-data v0, :array_114
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I
sput-object v4, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;
sput-object v4, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
new-array v0, v2, [I
fill-array-data v0, :array_198
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I
new-array v0, v1, [I
fill-array-data v0, :array_21c
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I
new-array v0, v1, [I
fill-array-data v0, :array_25c
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I
new-array v0, v1, [Lcom/ibm/icu/text/DateFormat$Field;
const/4 v1, 0x0
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->ERA:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->YEAR:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECOND:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xd
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xe
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->AM_PM:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0xf
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR1:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x10
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->HOUR0:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x11
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x12
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->YEAR_WOY:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x13
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DOW_LOCAL:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x14
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->EXTENDED_YEAR:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x15
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->JULIAN_DAY:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v1, v0, v3
const/16 v1, 0x17
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x18
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x19
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->DAY_OF_WEEK:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x1a
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->MONTH:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x1b
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x1c
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->QUARTER:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
const/16 v1, 0x1d
sget-object v2, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
return-void
:array_114
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x28t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x14t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x32t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x14t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x50t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x0t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x28t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x0t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x32t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x3ct 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x14t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x46t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
:array_198
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x16t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x10t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x1bt 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x8t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x1dt 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x12t 0x0t 0x0t 0x0t
0x17t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xet 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x19t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x15t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x6t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x1ct 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x7t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x14t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x11t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
:array_e4
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
0x46t 0x0t 0x0t 0x0t
0x50t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
.end array-data
:array_21c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0x11t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
.end array-data
:array_25c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0x11t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x16t 0x0t 0x0t 0x0t
0x17t 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
0x1bt 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 9
const/4 v2, 0x0
invoke-static {}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;
move-result-object v1
const/4 v6, 0x1
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v7, v2
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 10
const/4 v2, 0x0
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v7, v2
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;)V
.registers 11
const/4 v3, 0x0
invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
move-object v7, v3
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
.registers 9
invoke-direct {p0}, Lcom/ibm/icu/text/DateFormat;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I
const/4 v0, 0x0
iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
iput-object p2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iput-object p3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
iput-object p4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
iput-object p5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-boolean p6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z
iput-object p7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initialize()V
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;Z)V
.registers 14
const/4 v4, 0x0
invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {p3}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/util/Calendar;
move-object v0, p0
move-object v1, p1
move-object v5, p4
move v6, p5
move-object v7, v4
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
.registers 15
invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {p3}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/util/Calendar;
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v5, p4
move v6, p5
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/ULocale;)V
.registers 12
const/4 v3, 0x0
invoke-virtual {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/DateFormatSymbols;
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, p3
move-object v7, v3
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
.registers 11
const/4 v2, 0x0
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, p2
move-object v7, v2
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
.registers 12
const/4 v2, 0x0
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, p3
move-object v7, p2
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
.registers 11
const/4 v2, 0x0
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v5
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v7, v2
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-void
.end method
.method static synthetic access$000(CI)Z
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isNumeric(CI)Z
move-result v0
return v0
.end method
.method private appendGMT(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/Calendar;)V
.registers 13
const/4 v6, 0x1
const/4 v8, 0x0
const/16 v4, 0xf
invoke-virtual {p3, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v4
const/16 v5, 0x10
invoke-virtual {p3, v5}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v5
add-int v1, v4, v5
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->isDefaultGMTFormat()Z
move-result v4
if-eqz v4, :cond_1a
invoke-direct {p0, p1, p2, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->formatGMTDefault(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;I)V
:goto_19
return-void
:cond_1a
const/4 v2, 0x1
if-gez v1, :cond_1f
neg-int v1, v1
const/4 v2, 0x0
:cond_1f
const v4, 0xea60
rem-int v4, v1, v4
if-nez v4, :cond_3a
move v3, v6
:goto_27
invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v0
new-array v4, v6, [Ljava/lang/Object;
new-instance v5, Ljava/lang/Long;
int-to-long v6, v1
invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V
aput-object v5, v4, v8
const/4 v5, 0x0
invoke-virtual {v0, v4, p2, v5}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
goto :goto_19
:cond_3a
move v3, v8
goto :goto_27
.end method
.method private diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z
.registers 15
const/4 v8, 0x0
aget-object v6, p3, p4
instance-of v6, v6, Ljava/lang/String;
if-eqz v6, :cond_9
move v6, v8
:goto_8
return v6
:cond_9
aget-object v2, p3, p4
check-cast v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
iget-char v0, v2, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
const/4 v3, -0x1
const/16 v6, 0x41
if-gt v6, v0, :cond_20
const/16 v6, 0x7a
if-gt v0, v6, :cond_20
sget-object v6, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I
const/16 v7, 0x40
sub-int v7, v0, v7
aget v3, v6, v7
:cond_20
const/4 v6, -0x1
if-ne v3, v6, :cond_53
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Illegal pattern character \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' in \""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
new-instance v8, Ljava/lang/String;
iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const/16 v8, 0x22
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_53
sget-object v6, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I
aget v1, v6, v3
invoke-virtual {p1, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v4
invoke-virtual {p2, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v5
if-eq v4, v5, :cond_63
const/4 v6, 0x1
goto :goto_8
:cond_63
move v6, v8
goto :goto_8
.end method
.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
.registers 12
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
array-length v4, v4
if-ge v4, p4, :cond_2d
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
array-length v4, v4
move v2, v4
:goto_9
const/4 v4, 0x1
sub-int v0, v2, v4
:goto_c
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
rem-int/lit8 v5, p2, 0xa
iget-char v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->zeroDigit:C
add-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v4, v0
div-int/lit8 p2, p2, 0xa
if-eqz v0, :cond_1c
if-nez p2, :cond_2f
:cond_1c
sub-int v4, v2, v0
sub-int v3, p3, v4
:goto_20
if-lez v3, :cond_32
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
add-int/lit8 v0, v0, -0x1
iget-char v5, p0, Lcom/ibm/icu/text/SimpleDateFormat;->zeroDigit:C
aput-char v5, v4, v0
add-int/lit8 v3, v3, -0x1
goto :goto_20
:cond_2d
move v2, p4
goto :goto_9
:cond_2f
add-int/lit8 v0, v0, -0x1
goto :goto_c
:cond_32
sub-int v1, v2, v0
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
invoke-virtual {p1, v4, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
return-void
.end method
.method private format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
.registers 21
const/4 v2, 0x0
move-object/from16 v0, p3
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V
const/4 v2, 0x0
move-object/from16 v0, p3
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;
move-result-object v14
const/4 v12, 0x0
:goto_13
array-length v2, v14
if-ge v12, v2, :cond_91
aget-object v2, v14, v12
instance-of v2, v2, Ljava/lang/String;
if-eqz v2, :cond_29
aget-object v2, v14, v12
check-cast v2, Ljava/lang/String;
move-object/from16 v0, p2
move-object v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_26
:cond_26
add-int/lit8 v12, v12, 0x1
goto :goto_13
:cond_29
aget-object v13, v14, v12
check-cast v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
const/4 v15, 0x0
if-eqz p4, :cond_34
invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I
move-result v15
:cond_34
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z
move v2, v0
if-eqz v2, :cond_73
iget-char v4, v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
iget v5, v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I
move-result v6
move-object/from16 v2, p0
move-object/from16 v3, p2
move-object/from16 v7, p3
move-object/from16 v8, p1
invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIILjava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
:goto_4e
if-eqz p4, :cond_26
invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I
move-result v10
sub-int v2, v10, v15
if-lez v2, :cond_26
iget-char v2, v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move-object/from16 v0, p0
move v1, v2
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
move-result-object v9
new-instance v11, Ljava/text/FieldPosition;
invoke-direct {v11, v9}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V
invoke-virtual {v11, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V
invoke-virtual {v11, v10}, Ljava/text/FieldPosition;->setEndIndex(I)V
move-object/from16 v0, p4
move-object v1, v11
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_26
:cond_73
iget-char v3, v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
iget v4, v13, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I
move-result v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v7, v0
move-object/from16 v2, p0
move-object/from16 v6, p3
move-object/from16 v8, p1
invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIILjava/text/FieldPosition;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p2
move-object v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_4e
:cond_91
return-object p2
.end method
.method private formatGMTDefault(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;I)V
.registers 20
const-string v2, "GMT"
move-object/from16 v0, p2
move-object v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-ltz p3, :cond_54
const/16 v2, 0x2b
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_12
move/from16 v0, p3
div-int/lit16 v0, v0, 0x3e8
move/from16 p3, v0
rem-int/lit8 v13, p3, 0x3c
div-int/lit8 p3, p3, 0x3c
rem-int/lit8 v9, p3, 0x3c
div-int/lit8 v5, p3, 0x3c
const/4 v6, 0x2
const/4 v7, 0x2
move-object/from16 v2, p0
move-object/from16 v3, p1
move-object/from16 v4, p2
invoke-virtual/range {v2 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
const/16 v2, 0x3a
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v10, 0x2
const/4 v11, 0x2
move-object/from16 v6, p0
move-object/from16 v7, p1
move-object/from16 v8, p2
invoke-virtual/range {v6 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
if-eqz v13, :cond_53
const/16 v2, 0x3a
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v14, 0x2
const/4 v15, 0x2
move-object/from16 v10, p0
move-object/from16 v11, p1
move-object/from16 v12, p2
invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
:cond_53
return-void
:cond_54
const/16 v2, 0x2d
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move/from16 v0, p3
neg-int v0, v0
move/from16 p3, v0
goto :goto_12
.end method
.method private getDefaultCenturyStart()Ljava/util/Date;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
if-nez v0, :cond_9
iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V
:cond_9
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
return-object v0
.end method
.method private getDefaultCenturyStartYear()I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
if-nez v0, :cond_9
iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V
:cond_9
iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I
return v0
.end method
.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
.registers 11
const-class v6, Lcom/ibm/icu/text/SimpleDateFormat;
monitor-enter v6
:try_start_3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v3
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v3, v7}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_46
sput-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;
invoke-static {v7}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_51
move-result-object v0
:try_start_17
new-instance v1, Lcom/ibm/icu/impl/CalendarData;
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultLocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v8
invoke-direct {v1, v7, v8}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/ibm/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;
move-result-object v2
const/16 v5, 0x8
array-length v7, v2
const/16 v8, 0xd
if-lt v7, v8, :cond_2f
add-int/lit8 v5, v5, 0x4
:cond_2f
aget-object v7, v2, v5
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
const/4 v10, 0x3
aget-object v10, v2, v10
aput-object v10, v8, v9
const/4 v9, 0x1
const/4 v10, 0x7
aget-object v10, v2, v10
aput-object v10, v8, v9
invoke-static {v7, v8}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
sput-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
:try_end_46
.catchall {:try_start_17 .. :try_end_46} :catchall_51
.catch Ljava/util/MissingResourceException; {:try_start_17 .. :try_end_46} :catch_4a
:goto_46
:try_start_46
:cond_46
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
:try_end_48
.catchall {:try_start_46 .. :try_end_48} :catchall_51
monitor-exit v6
return-object v7
:catch_4a
move-exception v7
move-object v4, v7
:try_start_4c
const-string v7, "yy/MM/dd HH:mm"
sput-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
:try_end_50
.catchall {:try_start_4c .. :try_end_50} :catchall_51
goto :goto_46
:catchall_51
move-exception v7
monitor-exit v6
throw v7
.end method
.method private getGMTFormatMinHMSLen(I)I
.registers 11
const/4 v8, 0x0
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
if-nez v4, :cond_42
const/4 v4, 0x2
new-array v4, v4, [I
iput-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
new-instance v3, Ljava/lang/Long;
const-wide/32 v4, 0x36ee80
invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-direct {p0, v6, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v1
new-array v4, v7, [Ljava/lang/Object;
aput-object v3, v4, v6
invoke-virtual {v1, v4, v0, v8}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v5
aput v5, v4, v6
invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->setLength(I)V
invoke-direct {p0, v7, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v2
new-array v4, v7, [Ljava/lang/Object;
aput-object v3, v4, v6
invoke-virtual {v2, v4, v0, v8}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v5
aput v5, v4, v7
:cond_42
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtFormatHmsMinLen:[I
if-gez p1, :cond_4a
move v5, v6
:goto_47
aget v4, v4, v5
return v4
:cond_4a
move v5, v7
goto :goto_47
.end method
.method private getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
.registers 9
const/4 v1, 0x0
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
if-nez v4, :cond_a
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/ref/WeakReference;
iput-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
:cond_a
mul-int/lit8 v4, p1, 0x2
add-int v0, v4, p2
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
aget-object v4, v4, v0
if-eqz v4, :cond_1e
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
aget-object v4, v4, v0
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/text/MessageFormat;
:cond_1e
if-nez v1, :cond_53
new-instance v1, Lcom/ibm/icu/text/MessageFormat;
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v4, v4, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;
invoke-direct {v1, v4}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V
new-instance v2, Lcom/ibm/icu/util/GregorianCalendar;
const-string v4, "Etc/UTC"
invoke-static {v4}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v4
invoke-direct {v2, v4}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V
invoke-virtual {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/text/SimpleDateFormat;
invoke-virtual {v3, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v4, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols;->getGmtHourFormat(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-virtual {v1, v4, v3}, Lcom/ibm/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
new-instance v5, Ljava/lang/ref/WeakReference;
invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
aput-object v5, v4, v0
:cond_53
return-object v1
.end method
.method public static getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;
.registers 10
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_29
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_29
const/4 v0, 0x1
move v6, v0
:goto_e
new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
move-result-object v2
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getCalendar()Lcom/ibm/icu/util/Calendar;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getLocale()Lcom/ibm/icu/util/ULocale;
move-result-object v5
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;
move-result-object v7
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V
return-object v0
:cond_29
const/4 v0, 0x0
move v6, v0
goto :goto_e
.end method
.method private getPatternItems()[Ljava/lang/Object;
.registers 13
const/16 v11, 0x27
const/4 v10, 0x0
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
if-eqz v8, :cond_a
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
:goto_9
return-object v8
:cond_a
sget-object v8, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-interface {v8, v9}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, [Ljava/lang/Object;
check-cast v8, [Ljava/lang/Object;
iput-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
if-eqz v8, :cond_1f
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
goto :goto_9
:cond_1f
const/4 v3, 0x0
const/4 v2, 0x0
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
const/4 v5, 0x0
const/4 v4, 0x1
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_2e
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
if-ge v1, v8, :cond_a3
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ne v0, v11, :cond_5a
if-eqz v3, :cond_4b
invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v3, 0x0
:goto_44
:cond_44
if-nez v2, :cond_58
const/4 v8, 0x1
move v2, v8
:goto_48
add-int/lit8 v1, v1, 0x1
goto :goto_2e
:cond_4b
const/4 v3, 0x1
if-eqz v5, :cond_44
new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
invoke-direct {v8, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v5, 0x0
goto :goto_44
:cond_58
move v2, v10
goto :goto_48
:cond_5a
const/4 v3, 0x0
if-eqz v2, :cond_61
invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_48
:cond_61
const/16 v8, 0x61
if-lt v0, v8, :cond_69
const/16 v8, 0x7a
if-le v0, v8, :cond_71
:cond_69
const/16 v8, 0x41
if-lt v0, v8, :cond_94
const/16 v8, 0x5a
if-gt v0, v8, :cond_94
:cond_71
if-ne v0, v5, :cond_76
add-int/lit8 v4, v4, 0x1
goto :goto_48
:cond_76
if-nez v5, :cond_8b
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
if-lez v8, :cond_88
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V
:goto_88
:cond_88
move v5, v0
const/4 v4, 0x1
goto :goto_48
:cond_8b
new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
invoke-direct {v8, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_88
:cond_94
if-eqz v5, :cond_9f
new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
invoke-direct {v8, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v5, 0x0
:cond_9f
invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_48
:cond_a3
if-nez v5, :cond_cf
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
if-lez v8, :cond_b5
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V
:cond_b5
:goto_b5
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v8
new-array v8, v8, [Ljava/lang/Object;
iput-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
sget-object v8, Lcom/ibm/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
iget-object v10, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
invoke-interface {v8, v9, v10}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v8, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
goto/16 :goto_9
:cond_cf
new-instance v8, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
invoke-direct {v8, v5, v4}, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b5
.end method
.method private initLocalZeroPaddingNumberFormat()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
instance-of v0, v0, Lcom/ibm/icu/text/DecimalFormat;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
check-cast v0, Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getZeroDigit()C
move-result v0
iput-char v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->zeroDigit:C
iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
:goto_17
iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
if-eqz v0, :cond_21
const/16 v0, 0xa
new-array v0, v0, [C
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->decimalBuf:[C
:cond_21
return-void
:cond_22
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
instance-of v0, v0, Lcom/ibm/icu/impl/DateNumberFormat;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;
invoke-virtual {v0}, Lcom/ibm/icu/impl/DateNumberFormat;->getZeroDigit()C
move-result v0
iput-char v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->zeroDigit:C
iput-boolean v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
goto :goto_17
:cond_35
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
goto :goto_17
.end method
.method private initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
return-void
.end method
.method private initialize()V
.registers 6
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
if-nez v2, :cond_a
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
:cond_a
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
if-nez v2, :cond_17
new-instance v2, Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V
iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
:cond_17
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
if-nez v2, :cond_23
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
:cond_23
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
if-nez v2, :cond_3b
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v2}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z
move-result v2
if-eqz v2, :cond_61
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v2}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
:goto_3b
:cond_3b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
sget-object v3, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object v2
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
sget-object v4, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object v3
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->override:Ljava/lang/String;
if-eqz v2, :cond_60
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->initNumberFormatters(Lcom/ibm/icu/util/ULocale;)V
:cond_60
return-void
:cond_61
invoke-virtual {v1}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
new-instance v2, Lcom/ibm/icu/impl/DateNumberFormat;
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {v2, v3, v0}, Lcom/ibm/icu/impl/DateNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;C)V
iput-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
goto :goto_3b
.end method
.method private initializeDefaultCenturyStart(J)V
.registers 6
const/4 v2, 0x1
iput-wide p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar;
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
const/16 v1, -0x50
invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
invoke-virtual {v0, v2}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v1
iput v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I
return-void
.end method
.method private isDefaultGMTFormat()Z
.registers 7
const/4 v5, 0x2
const-string v3, "GMT{0}"
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v4}, Lcom/ibm/icu/text/DateFormatSymbols;->getGmtFormat()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_11
const/4 v3, 0x0
:goto_10
return v3
:cond_11
const/4 v0, 0x1
const/4 v1, 0x0
:goto_13
if-ge v1, v5, :cond_33
if-eqz v0, :cond_33
const/4 v2, 0x0
:goto_18
if-ge v2, v5, :cond_2d
sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->DEFAULT_GMT_HOUR_PATTERNS:[[Ljava/lang/String;
aget-object v3, v3, v1
aget-object v3, v3, v2
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v4, v1, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->getGmtHourFormat(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_30
const/4 v0, 0x0
:cond_2d
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_30
add-int/lit8 v2, v2, 0x1
goto :goto_18
:cond_33
move v3, v0
goto :goto_10
.end method
.method static isFieldUnitIgnored(Ljava/lang/String;I)Z
.registers 15
const/16 v12, 0x40
const/16 v11, 0x27
const/4 v10, 0x1
const/4 v9, 0x0
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I
aget v2, v7, p1
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v1, 0x0
const/4 v3, 0x0
:goto_e
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
if-ge v3, v7, :cond_5a
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
if-eq v0, v6, :cond_27
if-lez v1, :cond_27
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I
sub-int v8, v6, v12
aget v5, v7, v8
if-gt v2, v5, :cond_26
move v7, v9
:goto_25
return v7
:cond_26
const/4 v1, 0x0
:cond_27
if-ne v0, v11, :cond_44
add-int/lit8 v7, v3, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v8
if-ge v7, v8, :cond_3e
add-int/lit8 v7, v3, 0x1
invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C
move-result v7
if-ne v7, v11, :cond_3e
add-int/lit8 v3, v3, 0x1
:goto_3b
:cond_3b
add-int/lit8 v3, v3, 0x1
goto :goto_e
:cond_3e
if-nez v4, :cond_42
move v4, v10
:goto_41
goto :goto_3b
:cond_42
move v4, v9
goto :goto_41
:cond_44
if-nez v4, :cond_3b
const/16 v7, 0x61
if-lt v0, v7, :cond_4e
const/16 v7, 0x7a
if-le v0, v7, :cond_56
:cond_4e
const/16 v7, 0x41
if-lt v0, v7, :cond_3b
const/16 v7, 0x5a
if-gt v0, v7, :cond_3b
:cond_56
move v6, v0
add-int/lit8 v1, v1, 0x1
goto :goto_3b
:cond_5a
if-lez v1, :cond_66
sget-object v7, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I
sub-int v8, v6, v12
aget v5, v7, v8
if-gt v2, v5, :cond_66
move v7, v9
goto :goto_25
:cond_66
move v7, v10
goto :goto_25
.end method
.method private static final isNumeric(CI)Z
.registers 4
const-string v1, "MYyudehHmsSDFwWkK"
invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gtz v0, :cond_d
if-nez v0, :cond_f
const/4 v1, 0x3
if-ge p1, v1, :cond_f
:cond_d
const/4 v1, 0x1
:goto_e
return v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method private lowerLevel([Ljava/lang/Object;II)Z
.registers 11
const/4 v5, 0x0
aget-object v3, p1, p2
instance-of v3, v3, Ljava/lang/String;
if-eqz v3, :cond_9
move v3, v5
:goto_8
return v3
:cond_9
aget-object v1, p1, p2
check-cast v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
iget-char v0, v1, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
const/4 v2, -0x1
const/16 v3, 0x41
if-gt v3, v0, :cond_20
const/16 v3, 0x7a
if-gt v0, v3, :cond_20
sget-object v3, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I
const/16 v4, 0x40
sub-int v4, v0, v4
aget v2, v3, v4
:cond_20
const/4 v3, -0x1
if-ne v2, v3, :cond_53
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Illegal pattern character \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\' in \""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
new-instance v5, Ljava/lang/String;
iget-object v6, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const/16 v5, 0x22
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_53
if-lt v2, p3, :cond_57
const/4 v3, 0x1
goto :goto_8
:cond_57
move v3, v5
goto :goto_8
.end method
.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
.registers 4
iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I
return-void
.end method
.method private parseGMT(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NumberFormat;)Ljava/lang/Integer;
.registers 16
const/4 v11, -0x1
const/4 v10, 0x1
const/4 v9, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->isDefaultGMTFormat()Z
move-result v7
if-nez v7, :cond_cf
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
iget-object v7, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v1, v7, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;
const/4 v5, 0x0
const/16 v7, 0x7b
invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-lez v4, :cond_21
invoke-virtual {p1, v6, v1, v9, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z
move-result v7
if-eqz v7, :cond_21
const/4 v5, 0x1
:cond_21
if-eqz v5, :cond_cf
invoke-direct {p0, v9, v9}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_4e
aget-object v7, v3, v9
instance-of v7, v7, Ljava/util/Date;
if-eqz v7, :cond_4e
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
sub-int/2addr v7, v6
invoke-direct {p0, v9}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatMinHMSLen(I)I
move-result v8
if-lt v7, v8, :cond_4e
aget-object p0, v3, v9
check-cast p0, Ljava/util/Date;
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v7
long-to-int v2, v7
new-instance v7, Ljava/lang/Integer;
neg-int v8, v2
invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
:goto_4d
return-object v7
:cond_4e
invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual {p2, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V
invoke-direct {p0, v10, v9}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_7e
aget-object v7, v3, v9
instance-of v7, v7, Ljava/util/Date;
if-eqz v7, :cond_7e
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
sub-int/2addr v7, v6
invoke-direct {p0, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatMinHMSLen(I)I
move-result v8
if-lt v7, v8, :cond_7e
aget-object p0, v3, v9
check-cast p0, Ljava/util/Date;
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v7
long-to-int v2, v7
new-instance v7, Ljava/lang/Integer;
invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V
goto :goto_4d
:cond_7e
invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual {p2, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V
invoke-direct {p0, v9, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_a4
aget-object v7, v3, v9
instance-of v7, v7, Ljava/util/Date;
if-eqz v7, :cond_a4
aget-object p0, v3, v9
check-cast p0, Ljava/util/Date;
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v7
long-to-int v2, v7
new-instance v7, Ljava/lang/Integer;
neg-int v8, v2
invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
goto :goto_4d
:cond_a4
invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual {p2, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V
invoke-direct {p0, v10, v10}, Lcom/ibm/icu/text/SimpleDateFormat;->getGMTFormatter(II)Lcom/ibm/icu/text/MessageFormat;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_c9
aget-object v7, v3, v9
instance-of v7, v7, Ljava/util/Date;
if-eqz v7, :cond_c9
aget-object p0, v3, v9
check-cast p0, Ljava/util/Date;
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v7
long-to-int v2, v7
new-instance v7, Ljava/lang/Integer;
invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V
goto :goto_4d
:cond_c9
invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual {p2, v11}, Ljava/text/ParsePosition;->setErrorIndex(I)V
:cond_cf
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/SimpleDateFormat;->parseGMTDefault(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NumberFormat;)Ljava/lang/Integer;
move-result-object v7
goto/16 :goto_4d
.end method
.method private parseGMTDefault(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NumberFormat;)Ljava/lang/Integer;
.registers 24
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
add-int/lit8 v2, v4, 0x2
add-int/lit8 v2, v2, 0x1
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v3
if-lt v2, v3, :cond_16
move-object/from16 v0, p2
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
const/4 v2, 0x0
:goto_15
return-object v2
:cond_16
move v11, v4
const/4 v3, 0x1
const-string v5, "GMT"
const/4 v6, 0x0
const/4 v7, 0x3
move-object/from16 v2, p1
invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v2
if-eqz v2, :cond_67
add-int/lit8 v11, v11, 0x3
:goto_26
const/4 v15, 0x0
move-object/from16 v0, p1
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x2d
if-ne v2, v3, :cond_7f
const/4 v15, 0x1
:cond_33
add-int/lit8 v11, v11, 0x1
move-object/from16 v0, p2
move v1, v11
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v7, 0x6
const/4 v9, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v8, p2
move-object/from16 v10, p3
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v14
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
sub-int v16, v2, v11
if-eqz v14, :cond_59
if-lez v16, :cond_59
const/4 v2, 0x6
move/from16 v0, v16
move v1, v2
if-le v0, v1, :cond_92
:cond_59
move-object/from16 v0, p2
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p2
move v1, v11
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
const/4 v2, 0x0
goto :goto_15
:cond_67
const/4 v3, 0x1
const-string v5, "UT"
const/4 v6, 0x0
const/4 v7, 0x2
move-object/from16 v2, p1
invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v2
if-eqz v2, :cond_77
add-int/lit8 v11, v11, 0x2
goto :goto_26
:cond_77
move-object/from16 v0, p2
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
const/4 v2, 0x0
goto :goto_15
:cond_7f
move-object/from16 v0, p1
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x2b
if-eq v2, v3, :cond_33
move-object/from16 v0, p2
move v1, v11
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
const/4 v2, 0x0
goto :goto_15
:cond_92
invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
move-result v17
const/4 v12, 0x0
const/4 v13, 0x0
const/16 v19, 0x0
const/4 v2, 0x2
move/from16 v0, v16
move v1, v2
if-gt v0, v1, :cond_15b
move/from16 v12, v17
add-int v11, v11, v16
add-int/lit8 v2, v11, 0x2
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_11c
move-object/from16 v0, p1
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x3a
if-ne v2, v3, :cond_11c
add-int/lit8 v11, v11, 0x1
move-object/from16 v0, p2
move v1, v11
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v7, 0x2
const/4 v9, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v8, p2
move-object/from16 v10, p3
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v14
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
sub-int v16, v2, v11
if-eqz v14, :cond_14a
const/4 v2, 0x2
move/from16 v0, v16
move v1, v2
if-ne v0, v1, :cond_14a
invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
move-result v13
add-int v11, v11, v16
add-int/lit8 v2, v11, 0x2
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_11c
move-object/from16 v0, p1
move v1, v11
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v3, 0x3a
if-ne v2, v3, :cond_11c
add-int/lit8 v11, v11, 0x1
move-object/from16 v0, p2
move v1, v11
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v7, 0x2
const/4 v9, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v8, p2
move-object/from16 v10, p3
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v14
invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v2
sub-int v16, v2, v11
if-eqz v14, :cond_139
const/4 v2, 0x2
move/from16 v0, v16
move v1, v2
if-ne v0, v1, :cond_139
invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
move-result v19
:cond_11c
:goto_11c
mul-int/lit8 v2, v12, 0x3c
add-int/2addr v2, v13
mul-int/lit8 v2, v2, 0x3c
add-int v2, v2, v19
move v0, v2
mul-int/lit16 v0, v0, 0x3e8
move/from16 v18, v0
if-eqz v15, :cond_12f
move/from16 v0, v18
neg-int v0, v0
move/from16 v18, v0
:cond_12f
new-instance v2, Ljava/lang/Integer;
move-object v0, v2
move/from16 v1, v18
invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V
goto/16 :goto_15
:cond_139
const/4 v2, 0x1
sub-int v2, v11, v2
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v2, -0x1
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
goto :goto_11c
:cond_14a
const/4 v2, 0x1
sub-int v2, v11, v2
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v2, -0x1
move-object/from16 v0, p2
move v1, v2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
goto :goto_11c
:cond_15b
const/4 v2, 0x3
move/from16 v0, v16
move v1, v2
if-eq v0, v1, :cond_167
const/4 v2, 0x4
move/from16 v0, v16
move v1, v2
if-ne v0, v1, :cond_16c
:cond_167
div-int/lit8 v12, v17, 0x64
rem-int/lit8 v13, v17, 0x64
goto :goto_11c
:cond_16c
move/from16 v0, v17
div-int/lit16 v0, v0, 0x2710
move v12, v0
move/from16 v0, v17
rem-int/lit16 v0, v0, 0x2710
move v2, v0
div-int/lit8 v13, v2, 0x64
rem-int/lit8 v19, v17, 0x64
goto :goto_11c
.end method
.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
.registers 16
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-eqz p4, :cond_21
invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v3
:cond_a
:goto_a
if-lez p2, :cond_64
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v8
sub-int v2, v8, v4
if-le v2, p2, :cond_64
invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D
move-result-wide v6
sub-int/2addr v2, p2
:goto_19
if-lez v2, :cond_59
const-wide/high16 v8, 0x4024
div-double/2addr v6, v8
add-int/lit8 v2, v2, -0x1
goto :goto_19
:cond_21
instance-of v8, p5, Lcom/ibm/icu/text/DecimalFormat;
if-eqz v8, :cond_40
move-object v0, p5
check-cast v0, Lcom/ibm/icu/text/DecimalFormat;
move-object v8, v0
invoke-virtual {v8}, Lcom/ibm/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;
move-result-object v5
move-object v0, p5
check-cast v0, Lcom/ibm/icu/text/DecimalFormat;
move-object v8, v0
const-string v9, "\uab00"
invoke-virtual {v8, v9}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V
invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v3
check-cast p5, Lcom/ibm/icu/text/DecimalFormat;
invoke-virtual {p5, v5}, Lcom/ibm/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V
goto :goto_a
:cond_40
instance-of v1, p5, Lcom/ibm/icu/impl/DateNumberFormat;
if-eqz v1, :cond_4c
move-object v0, p5
check-cast v0, Lcom/ibm/icu/impl/DateNumberFormat;
move-object v8, v0
const/4 v9, 0x1
invoke-virtual {v8, v9}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V
:cond_4c
invoke-virtual {p5, p1, p3}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
move-result-object v3
if-eqz v1, :cond_a
check-cast p5, Lcom/ibm/icu/impl/DateNumberFormat;
const/4 v8, 0x0
invoke-virtual {p5, v8}, Lcom/ibm/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V
goto :goto_a
:cond_59
add-int v8, v4, p2
invoke-virtual {p3, v8}, Ljava/text/ParsePosition;->setIndex(I)V
new-instance v3, Ljava/lang/Integer;
double-to-int v8, v6
invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V
:cond_64
return-object v3
.end method
.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
.registers 11
const/4 v2, -0x1
move-object v0, p0
move-object v1, p1
move-object v3, p2
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method private processOverrideString(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
.registers 16
if-eqz p2, :cond_8
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v11
if-nez v11, :cond_9
:cond_8
return-void
:cond_9
const/4 v10, 0x0
const/4 v5, 0x1
:goto_b
if-eqz v5, :cond_8
const-string v11, ";"
invoke-virtual {p2, v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
const/4 v11, -0x1
if-ne v1, v11, :cond_64
const/4 v5, 0x0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
:goto_1b
invoke-virtual {p2, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string v11, "="
invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
const/4 v11, -0x1
if-ne v3, v11, :cond_66
move-object v7, v0
const/4 v4, 0x1
:goto_2a
new-instance v9, Lcom/ibm/icu/util/ULocale;
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string v12, "@numbers="
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v9, v11}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
const/4 v11, 0x0
invoke-static {v9, v11}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;
move-result-object v6
if-eqz v4, :cond_7d
invoke-virtual {p0, v6}, Lcom/ibm/icu/text/SimpleDateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
:goto_54
iget-object v11, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;
invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_61
iget-object v11, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;
invoke-virtual {v11, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_61
add-int/lit8 v10, v1, 0x1
goto :goto_b
:cond_64
move v2, v1
goto :goto_1b
:cond_66
add-int/lit8 v11, v3, 0x1
invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/Character;
const/4 v11, 0x0
invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C
move-result v11
invoke-direct {v8, v11}, Ljava/lang/Character;-><init>(C)V
iget-object v11, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;
invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v4, 0x0
goto :goto_2a
:cond_7d
const/4 v11, 0x0
iput-boolean v11, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
goto :goto_54
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 5
const/4 v2, 0x1
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
iget v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I
if-ge v0, v2, :cond_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
:goto_e
iput v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->serialVersionOnStream:I
sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V
return-void
:cond_1c
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
invoke-direct {p0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
goto :goto_e
.end method
.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
.registers 4
if-eqz p0, :cond_c
if-ltz p1, :cond_c
array-length v0, p0
if-ge p1, v0, :cond_c
aget-object v0, p0, p1
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_c
return-void
.end method
.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/16 v6, 0x27
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
const/4 v3, 0x0
const/4 v2, 0x0
:goto_9
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
if-ge v2, v5, :cond_3e
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-eqz v3, :cond_1e
if-ne v0, v6, :cond_18
const/4 v3, 0x0
:cond_18
:goto_18
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_1e
if-ne v0, v6, :cond_22
const/4 v3, 0x1
goto :goto_18
:cond_22
const/16 v5, 0x61
if-lt v0, v5, :cond_2a
const/16 v5, 0x7a
if-le v0, v5, :cond_32
:cond_2a
const/16 v5, 0x41
if-lt v0, v5, :cond_18
const/16 v5, 0x5a
if-gt v0, v5, :cond_18
:cond_32
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v5, -0x1
if-eq v1, v5, :cond_18
invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
goto :goto_18
:cond_3e
if-eqz v3, :cond_48
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string v6, "Unfinished quote in pattern"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_48
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;
if-nez v0, :cond_9
iget-wide v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->defaultCenturyBase:J
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V
:cond_9
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
return-void
.end method
.method public applyLocalizedPattern(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;
const-string v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqV"
invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public applyPattern(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/SimpleDateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 3
invoke-super {p0}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;
iget-object v1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/DateFormatSymbols;
iput-object p0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9
move v2, v4
:goto_8
return v2
:cond_9
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;
move-object v1, v0
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
iget-object v3, v1, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v3, v1, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
const/4 v2, 0x1
goto :goto_8
:cond_23
move v2, v4
goto :goto_8
.end method
.method public format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 9
const/4 v0, 0x0
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
if-eq p1, v2, :cond_2f
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v3}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2f
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
iget-object p1, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
:cond_2f
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
move-result-object v1
if-eqz v0, :cond_3b
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
invoke-virtual {v2, v0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
:cond_3b
return-object v1
.end method
.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
.registers 14
iget-object v4, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
instance-of v9, p1, Lcom/ibm/icu/util/Calendar;
if-eqz v9, :cond_45
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/Calendar;
move-object v4, v0
:goto_a
new-instance v8, Ljava/lang/StringBuffer;
invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
new-instance v7, Ljava/text/FieldPosition;
const/4 v9, 0x0
invoke-direct {v7, v9}, Ljava/text/FieldPosition;-><init>(I)V
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
invoke-direct {p0, v4, v8, v7, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/text/AttributedString;
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v1, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V
const/4 v6, 0x0
:goto_27
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v9
if-ge v6, v9, :cond_69
invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/text/FieldPosition;
invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;
move-result-object v2
invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I
move-result v9
invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I
move-result v10
invoke-virtual {v1, v2, v2, v9, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
add-int/lit8 v6, v6, 0x1
goto :goto_27
:cond_45
instance-of v9, p1, Ljava/util/Date;
if-eqz v9, :cond_51
iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
check-cast p1, Ljava/util/Date;
invoke-virtual {v9, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
goto :goto_a
:cond_51
instance-of v9, p1, Ljava/lang/Number;
if-eqz v9, :cond_61
iget-object v9, p0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
check-cast p1, Ljava/lang/Number;
invoke-virtual {p1}, Ljava/lang/Number;->longValue()J
move-result-wide v10
invoke-virtual {v9, v10, v11}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto :goto_a
:cond_61
new-instance v9, Ljava/lang/IllegalArgumentException;
const-string v10, "Cannot format given Object as a Date"
invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v9
:cond_69
invoke-virtual {v1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;
move-result-object v9
return-object v9
.end method
.method public get2DigitYearStart()Ljava/util/Date;
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getDateFormatSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/DateFormatSymbols;
return-object p0
.end method
.method  getLocale()Lcom/ibm/icu/util/ULocale;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->locale:Lcom/ibm/icu/util/ULocale;
return-object v0
.end method
.method protected getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
.registers 6
new-instance v2, Ljava/lang/Character;
invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;
if-eqz v3, :cond_25
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;
invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_25
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;
invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/NumberFormat;
move-object v3, v0
:goto_24
return-object v3
:cond_25
iget-object v3, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
goto :goto_24
.end method
.method protected getSymbols()Lcom/ibm/icu/text/DateFormatSymbols;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public final intervalFormatByAlgorithm(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 26
invoke-virtual/range {p1 .. p2}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
move-result v5
if-nez v5, :cond_e
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string v6, "can not format on two different calendars"
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_e
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;
move-result-object v19
const/4 v13, -0x1
const/4 v14, -0x1
const/16 v17, 0x0
:try_start_16
:goto_16
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
move/from16 v0, v17
move v1, v5
if-ge v0, v1, :cond_31
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, v19
move/from16 v4, v17
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z
move-result v5
if-eqz v5, :cond_41
move/from16 v13, v17
:cond_31
const/4 v5, -0x1
if-ne v13, v5, :cond_44
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v5
:goto_40
return-object v5
:cond_41
add-int/lit8 v17, v17, 0x1
goto :goto_16
:cond_44
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
const/4 v6, 0x1
sub-int v17, v5, v6
:goto_4b
move/from16 v0, v17
move v1, v13
if-lt v0, v1, :cond_62
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, v19
move/from16 v4, v17
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->diffCalFieldValue(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/Calendar;[Ljava/lang/Object;I)Z
:try_end_5d
.catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_5d} :catch_90
move-result v5
if-eqz v5, :cond_8d
move/from16 v14, v17
:cond_62
if-nez v13, :cond_9c
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
const/4 v6, 0x1
sub-int/2addr v5, v6
if-ne v14, v5, :cond_9c
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
const-string v5, " \u2013 "
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, p0
move-object/from16 v1, p2
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-object/from16 v5, p3
goto :goto_40
:cond_8d
add-int/lit8 v17, v17, -0x1
goto :goto_4b
:catch_90
move-exception v5
move-object v15, v5
new-instance v5, Ljava/lang/IllegalArgumentException;
invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_9c
const/16 v16, 0x3e8
move/from16 v17, v13
:goto_a0
move/from16 v0, v17
move v1, v14
if-gt v0, v1, :cond_10b
aget-object v5, v19, v17
instance-of v5, v5, Ljava/lang/String;
if-eqz v5, :cond_ae
:cond_ab
:goto_ab
add-int/lit8 v17, v17, 0x1
goto :goto_a0
:cond_ae
aget-object v18, v19, v17
check-cast v18, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
move-object/from16 v0, v18
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v12, v0
const/16 v20, -0x1
const/16 v5, 0x41
if-gt v5, v12, :cond_c9
const/16 v5, 0x7a
if-gt v12, v5, :cond_c9
sget-object v5, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I
const/16 v6, 0x40
sub-int v6, v12, v6
aget v20, v5, v6
:cond_c9
const/4 v5, -0x1
move/from16 v0, v20
move v1, v5
if-ne v0, v1, :cond_102
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Illegal pattern character \'"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\' in \""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
new-instance v7, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
move-object v8, v0
invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/16 v7, 0x22
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_102
move/from16 v0, v20
move/from16 v1, v16
if-ge v0, v1, :cond_ab
move/from16 v16, v20
goto :goto_ab
:cond_10b
const/16 v17, 0x0
:goto_10d
move/from16 v0, v17
move v1, v13
if-ge v0, v1, :cond_122
:try_start_112
move-object/from16 v0, p0
move-object/from16 v1, v19
move/from16 v2, v17
move/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z
move-result v5
if-eqz v5, :cond_16a
move/from16 v13, v17
:cond_122
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
const/4 v6, 0x1
sub-int v17, v5, v6
:goto_129
move/from16 v0, v17
move v1, v14
if-le v0, v1, :cond_13e
move-object/from16 v0, p0
move-object/from16 v1, v19
move/from16 v2, v17
move/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z
:try_end_139
.catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_139} :catch_170
move-result v5
if-eqz v5, :cond_16d
move/from16 v14, v17
:cond_13e
if-nez v13, :cond_17c
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
const/4 v6, 0x1
sub-int/2addr v5, v6
if-ne v14, v5, :cond_17c
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
const-string v5, " \u2013 "
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, p0
move-object/from16 v1, p2
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-object/from16 v5, p3
goto/16 :goto_40
:cond_16a
add-int/lit8 v17, v17, 0x1
goto :goto_10d
:cond_16d
add-int/lit8 v17, v17, -0x1
goto :goto_129
:catch_170
move-exception v5
move-object v15, v5
new-instance v5, Ljava/lang/IllegalArgumentException;
invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_17c
const/4 v5, 0x0
move-object/from16 v0, p4
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V
const/4 v5, 0x0
move-object/from16 v0, p4
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V
const/16 v17, 0x0
:goto_18c
move/from16 v0, v17
move v1, v14
if-gt v0, v1, :cond_1ed
aget-object v5, v19, v17
instance-of v5, v5, Ljava/lang/String;
if-eqz v5, :cond_1a4
aget-object v5, v19, v17
check-cast v5, Ljava/lang/String;
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_1a1
add-int/lit8 v17, v17, 0x1
goto :goto_18c
:cond_1a4
aget-object v18, v19, v17
check-cast v18, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z
move v5, v0
if-eqz v5, :cond_1c9
move-object/from16 v0, v18
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v7, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move v8, v0
invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I
move-result v9
move-object/from16 v5, p0
move-object/from16 v6, p3
move-object/from16 v10, p4
move-object/from16 v11, p1
invoke-virtual/range {v5 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIILjava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
goto :goto_1a1
:cond_1c9
move-object/from16 v0, v18
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v6, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move v7, v0
invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I
move-result v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v10, v0
move-object/from16 v5, p0
move-object/from16 v9, p4
move-object/from16 v11, p1
invoke-virtual/range {v5 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIILjava/text/FieldPosition;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1a1
:cond_1ed
const-string v5, " \u2013 "
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move/from16 v17, v13
:goto_1f7
move-object/from16 v0, v19
array-length v0, v0
move v5, v0
move/from16 v0, v17
move v1, v5
if-ge v0, v1, :cond_25d
aget-object v5, v19, v17
instance-of v5, v5, Ljava/lang/String;
if-eqz v5, :cond_214
aget-object p1, v19, v17
check-cast p1, Ljava/lang/String;
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_211
add-int/lit8 v17, v17, 0x1
goto :goto_1f7
:cond_214
aget-object v18, v19, v17
check-cast v18, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->useFastFormat:Z
move v5, v0
if-eqz v5, :cond_239
move-object/from16 v0, v18
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v7, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move v8, v0
invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I
move-result v9
move-object/from16 v5, p0
move-object/from16 v6, p3
move-object/from16 v10, p4
move-object/from16 v11, p2
invoke-virtual/range {v5 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIILjava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
goto :goto_211
:cond_239
move-object/from16 v0, v18
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v6, v0
move-object/from16 v0, v18
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move v7, v0
invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I
move-result v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v10, v0
move-object/from16 v5, p0
move-object/from16 v9, p4
move-object/from16 v11, p2
invoke-virtual/range {v5 .. v11}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(CIILjava/text/FieldPosition;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p3
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_211
:cond_25d
move-object/from16 v5, p3
goto/16 :goto_40
.end method
.method  isFieldUnitIgnored(I)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z
move-result v0
return v0
.end method
.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
.registers 16
const/4 v9, 0x0
array-length v8, p4
const/4 v7, 0x0
const/4 v6, -0x1
:goto_4
if-ge v9, v8, :cond_1f
aget-object v0, p4, v9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
if-le v5, v7, :cond_1c
const/4 v1, 0x1
aget-object v3, p4, v9
const/4 v4, 0x0
move-object v0, p1
move v2, p2
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v0
if-eqz v0, :cond_1c
move v6, v9
move v7, v5
:cond_1c
add-int/lit8 v9, v9, 0x1
goto :goto_4
:cond_1f
if-ltz v6, :cond_29
mul-int/lit8 v0, v6, 0x3
invoke-virtual {p5, p3, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V
add-int v0, p2, v7
:goto_28
return v0
:cond_29
neg-int v0, p2
goto :goto_28
.end method
.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
.registers 16
const/4 v9, 0x0
array-length v8, p4
const/4 v0, 0x7
if-ne p3, v0, :cond_6
const/4 v9, 0x1
:cond_6
const/4 v7, 0x0
const/4 v6, -0x1
:goto_8
if-ge v9, v8, :cond_23
aget-object v0, p4, v9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
if-le v5, v7, :cond_20
const/4 v1, 0x1
aget-object v3, p4, v9
const/4 v4, 0x0
move-object v0, p1
move v2, p2
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v0
if-eqz v0, :cond_20
move v6, v9
move v7, v5
:cond_20
add-int/lit8 v9, v9, 0x1
goto :goto_8
:cond_23
if-ltz v6, :cond_2b
invoke-virtual {p5, p3, v6}, Lcom/ibm/icu/util/Calendar;->set(II)V
add-int v0, p2, v7
:goto_2a
return v0
:cond_2b
neg-int v0, p2
goto :goto_2a
.end method
.method public parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
.registers 57
const/16 v26, 0x0
const/16 v46, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object/from16 v0, p2
move-object v1, v5
if-eq v0, v1, :cond_4a
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v6, v0
invoke-virtual {v6}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_4a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v26
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
move-object/from16 v46, p2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object/from16 p2, v0
:cond_4a
invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
move/from16 v48, v7
const/4 v5, 0x0
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
const/4 v5, 0x1
new-array v12, v5, [Z
const/4 v5, 0x0
const/4 v6, 0x0
aput-boolean v6, v12, v5
const/16 v39, -0x1
const/16 v38, 0x0
const/16 v40, 0x0
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;
move-result-object v37
const/16 v34, 0x0
:goto_69
move-object/from16 v0, v37
array-length v0, v0
move v5, v0
move/from16 v0, v34
move v1, v5
if-ge v0, v1, :cond_1d1
aget-object v5, v37, v34
instance-of v5, v5, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
if-eqz v5, :cond_137
aget-object v33, v37, v34
check-cast v33, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
move-object/from16 v0, v33
iget-boolean v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z
move v5, v0
if-eqz v5, :cond_ad
const/4 v5, -0x1
move/from16 v0, v39
move v1, v5
if-ne v0, v1, :cond_ad
add-int/lit8 v5, v34, 0x1
move-object/from16 v0, v37
array-length v0, v0
move v6, v0
if-ge v5, v6, :cond_ad
add-int/lit8 v5, v34, 0x1
aget-object v5, v37, v5
instance-of v5, v5, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
if-eqz v5, :cond_ad
add-int/lit8 v5, v34, 0x1
aget-object v5, v37, v5
check-cast v5, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;
iget-boolean v5, v5, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z
if-eqz v5, :cond_ad
move/from16 v39, v34
move-object/from16 v0, v33
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move/from16 v38, v0
move/from16 v40, v7
:cond_ad
const/4 v5, -0x1
move/from16 v0, v39
move v1, v5
if-eq v0, v1, :cond_f8
move-object/from16 v0, v33
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move v9, v0
move/from16 v0, v39
move/from16 v1, v34
if-ne v0, v1, :cond_c0
move/from16 v9, v38
:cond_c0
move-object/from16 v0, v33
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move v8, v0
const/4 v10, 0x1
const/4 v11, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
move-object/from16 v13, p2
invoke-virtual/range {v5 .. v13}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I
move-result v7
if-gez v7, :cond_1cd
add-int/lit8 v38, v38, -0x1
if-nez v38, :cond_f2
move-object/from16 v0, p3
move/from16 v1, v48
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p3
move v1, v7
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
if-eqz v26, :cond_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
:cond_f1
:goto_f1
return-void
:cond_f2
move/from16 v34, v39
move/from16 v7, v40
goto/16 :goto_69
:cond_f8
const/16 v39, -0x1
move/from16 v47, v7
move-object/from16 v0, v33
iget-char v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->type:C
move/from16 v16, v0
move-object/from16 v0, v33
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat$PatternItem;->length:I
move/from16 v17, v0
const/16 v18, 0x0
const/16 v19, 0x1
move-object/from16 v13, p0
move-object/from16 v14, p1
move v15, v7
move-object/from16 v20, v12
move-object/from16 v21, p2
invoke-virtual/range {v13 .. v21}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I
move-result v7
if-gez v7, :cond_1cd
move-object/from16 v0, p3
move/from16 v1, v48
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p3
move/from16 v1, v47
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
if-eqz v26, :cond_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
goto :goto_f1
:cond_137
const/16 v39, -0x1
aget-object v42, v37, v34
check-cast v42, Ljava/lang/String;
invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I
move-result v44
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v51
const/16 v36, 0x0
:goto_147
move/from16 v0, v36
move/from16 v1, v44
if-ge v0, v1, :cond_1a5
move v0, v7
move/from16 v1, v51
if-ge v0, v1, :cond_1a5
move-object/from16 v0, v42
move/from16 v1, v36
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v43
move-object/from16 v0, p1
move v1, v7
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v35
invoke-static/range {v43 .. v43}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v5
if-eqz v5, :cond_19f
invoke-static/range {v35 .. v35}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v5
if-eqz v5, :cond_19f
:goto_16d
add-int/lit8 v5, v36, 0x1
move v0, v5
move/from16 v1, v44
if-ge v0, v1, :cond_186
add-int/lit8 v5, v36, 0x1
move-object/from16 v0, v42
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v5
if-eqz v5, :cond_186
add-int/lit8 v36, v36, 0x1
goto :goto_16d
:cond_186
:goto_186
add-int/lit8 v5, v7, 0x1
move v0, v5
move/from16 v1, v51
if-ge v0, v1, :cond_1c7
add-int/lit8 v5, v7, 0x1
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v5
if-eqz v5, :cond_1c7
add-int/lit8 v7, v7, 0x1
goto :goto_186
:cond_19f
move/from16 v0, v43
move/from16 v1, v35
if-eq v0, v1, :cond_1c7
:cond_1a5
move/from16 v0, v36
move/from16 v1, v44
if-eq v0, v1, :cond_1cd
move-object/from16 v0, p3
move/from16 v1, v48
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p3
move v1, v7
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
if-eqz v26, :cond_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
goto/16 :goto_f1
:cond_1c7
add-int/lit8 v36, v36, 0x1
add-int/lit8 v7, v7, 0x1
goto/16 :goto_147
:cond_1cd
add-int/lit8 v34, v34, 0x1
goto/16 :goto_69
:cond_1d1
move-object/from16 v0, p3
move v1, v7
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v5, 0x0
:try_start_1d8
aget-boolean v5, v12, v5
if-nez v5, :cond_1e3
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
if-eqz v5, :cond_282
:cond_1e3
const/4 v5, 0x0
aget-boolean v5, v12, v5
if-eqz v5, :cond_20d
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v31
check-cast v31, Lcom/ibm/icu/util/Calendar;
invoke-virtual/range {v31 .. v31}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v41
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;
move-result-object v5
move-object/from16 v0, v41
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v5
if-eqz v5, :cond_20d
const/4 v5, 0x1
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I
move-result v6
add-int/lit8 v6, v6, 0x64
move-object/from16 v0, p2
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
:cond_20d
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
if-eqz v5, :cond_282
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v31
check-cast v31, Lcom/ibm/icu/util/Calendar;
invoke-virtual/range {v31 .. v31}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v52
const/4 v13, 0x0
move-object/from16 v0, v52
instance-of v0, v0, Lcom/ibm/icu/util/BasicTimeZone;
move v5, v0
if-eqz v5, :cond_22b
move-object/from16 v0, v52
check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;
move-object v13, v0
:cond_22b
const/16 v5, 0xf
const/4 v6, 0x0
move-object/from16 v0, v31
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v5, 0x10
const/4 v6, 0x0
move-object/from16 v0, v31
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual/range {v31 .. v31}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v14
const/4 v5, 0x2
move v0, v5
new-array v0, v0, [I
move-object/from16 v18, v0
if-eqz v13, :cond_2ce
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
const/4 v6, 0x1
if-ne v5, v6, :cond_2a7
const/16 v16, 0x1
const/16 v17, 0x1
invoke-virtual/range {v13 .. v18}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V
:cond_25a
:goto_25a
const/4 v5, 0x1
aget v45, v18, v5
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
const/4 v6, 0x1
if-ne v5, v6, :cond_303
const/4 v5, 0x1
aget v5, v18, v5
if-eqz v5, :cond_26c
const/16 v45, 0x0
:goto_26c
:cond_26c
const/16 v5, 0xf
const/4 v6, 0x0
aget v6, v18, v6
move-object/from16 v0, p2
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v5, 0x10
move-object/from16 v0, p2
move v1, v5
move/from16 v2, v45
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
:try_end_282
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d8 .. :try_end_282} :catch_2af
:cond_282
if-eqz v46, :cond_298
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v5
move-object/from16 v0, v46
move-object v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v5
move-object/from16 v0, v46
move-wide v1, v5
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
:cond_298
if-eqz v26, :cond_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
goto/16 :goto_f1
:cond_2a7
const/16 v16, 0x3
const/16 v17, 0x3
:try_start_2ab
invoke-virtual/range {v13 .. v18}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V
:try_end_2ae
.catch Ljava/lang/IllegalArgumentException; {:try_start_2ab .. :try_end_2ae} :catch_2af
goto :goto_25a
:catch_2af
move-exception v5
move-object/from16 v32, v5
move-object/from16 v0, p3
move v1, v7
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
move-object/from16 v0, p3
move/from16 v1, v48
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
if-eqz v26, :cond_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->calendar:Lcom/ibm/icu/util/Calendar;
move-object v5, v0
move-object v0, v5
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
goto/16 :goto_f1
:cond_2ce
const/4 v5, 0x1
:try_start_2cf
move-object/from16 v0, v52
move-wide v1, v14
move v3, v5
move-object/from16 v4, v18
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
const/4 v6, 0x1
if-ne v5, v6, :cond_2e5
const/4 v5, 0x1
aget v5, v18, v5
if-nez v5, :cond_2f2
:cond_2e5
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
move v5, v0
const/4 v6, 0x2
if-ne v5, v6, :cond_25a
const/4 v5, 0x1
aget v5, v18, v5
if-nez v5, :cond_25a
:cond_2f2
const-wide/32 v5, 0x5265c00
sub-long v5, v14, v5
const/4 v8, 0x1
move-object/from16 v0, v52
move-wide v1, v5
move v3, v8
move-object/from16 v4, v18
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
goto/16 :goto_25a
:cond_303
const/4 v5, 0x1
aget v5, v18, v5
if-nez v5, :cond_26c
if-eqz v13, :cond_37b
const/4 v5, 0x0
aget v5, v18, v5
int-to-long v5, v5
add-long v49, v14, v5
move-wide/from16 v28, v49
move-wide/from16 v23, v49
const/16 v27, 0x0
const/16 v22, 0x0
:cond_318
const/4 v5, 0x1
move-object v0, v13
move-wide/from16 v1, v28
move v3, v5
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
move-result-object v30
if-nez v30, :cond_343
:cond_323
:goto_323
const/4 v5, 0x0
move-object v0, v13
move-wide/from16 v1, v23
move v3, v5
invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
move-result-object v25
if-nez v25, :cond_356
:goto_32e
if-eqz v30, :cond_368
if-eqz v25, :cond_368
sub-long v5, v49, v28
sub-long v8, v23, v49
cmp-long v5, v5, v8
if-lez v5, :cond_365
move/from16 v45, v22
:goto_33c
if-nez v45, :cond_26c
const v45, 0x36ee80
goto/16 :goto_26c
:cond_343
invoke-virtual/range {v30 .. v30}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J
move-result-wide v5
const-wide/16 v8, 0x1
sub-long v28, v5, v8
invoke-virtual/range {v30 .. v30}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I
move-result v27
if-eqz v27, :cond_318
goto :goto_323
:cond_356
invoke-virtual/range {v25 .. v25}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J
move-result-wide v23
invoke-virtual/range {v25 .. v25}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I
move-result v22
if-eqz v22, :cond_323
goto :goto_32e
:cond_365
move/from16 v45, v27
goto :goto_33c
:cond_368
if-eqz v30, :cond_36f
if-eqz v27, :cond_36f
move/from16 v45, v27
goto :goto_33c
:cond_36f
if-eqz v25, :cond_376
if-eqz v22, :cond_376
move/from16 v45, v22
goto :goto_33c
:cond_376
invoke-virtual {v13}, Lcom/ibm/icu/util/BasicTimeZone;->getDSTSavings()I
move-result v45
goto :goto_33c
:cond_37b
invoke-virtual/range {v52 .. v52}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I
:try_end_37e
.catch Ljava/lang/IllegalArgumentException; {:try_start_2cf .. :try_end_37e} :catch_2af
move-result v45
goto :goto_33c
.end method
.method protected patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
.registers 5
const/4 v0, -0x1
const/16 v1, 0x41
if-gt v1, p1, :cond_11
const/16 v1, 0x7a
if-gt p1, v1, :cond_11
sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I
const/16 v2, 0x40
sub-int v2, p1, v2
aget v0, v1, v2
:cond_11
const/4 v1, -0x1
if-eq v0, v1, :cond_19
sget-object v1, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;
aget-object v1, v1, v0
:goto_18
return-object v1
:cond_19
const/4 v1, 0x0
goto :goto_18
.end method
.method public set2DigitYearStart(Ljava/util/Date;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
return-void
.end method
.method public setDateFormatSymbols(Lcom/ibm/icu/text/DateFormatSymbols;)V
.registers 3
invoke-virtual {p1}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->gmtfmtCache:[Ljava/lang/ref/WeakReference;
return-void
.end method
.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
.registers 2
invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormat;->setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
invoke-direct {p0}, Lcom/ibm/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V
return-void
.end method
.method protected subFormat(CIILjava/text/FieldPosition;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
.registers 14
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move-object v5, p4
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIILjava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected subFormat(Ljava/lang/StringBuffer;CIILjava/text/FieldPosition;Lcom/ibm/icu/util/Calendar;)V
.registers 36
const v19, 0x7fffffff
invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I
move-result v15
const/16 v25, -0x1
const/16 v5, 0x41
move v0, v5
move/from16 v1, p2
if-gt v0, v1, :cond_1f
const/16 v5, 0x7a
move/from16 v0, p2
move v1, v5
if-gt v0, v1, :cond_1f
sget-object v5, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I
const/16 v6, 0x40
sub-int v6, p2, v6
aget v25, v5, v6
:cond_1f
const/4 v5, -0x1
move/from16 v0, v25
move v1, v5
if-ne v0, v1, :cond_5b
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Illegal pattern character \'"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object v0, v6
move/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\' in \""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
new-instance v7, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
move-object v8, v0
invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/16 v7, 0x22
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_5b
sget-object v5, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I
aget v18, v5, v25
move-object/from16 v0, p6
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v8
const/16 v28, 0x0
move-object/from16 v0, p0
move/from16 v1, p2
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
move-result-object v6
packed-switch v25, :pswitch_data_538
:pswitch_74
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
move/from16 v9, p3
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
:goto_80
:cond_80
invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getBeginIndex()I
move-result v5
invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getEndIndex()I
move-result v6
if-ne v5, v6, :cond_a8
invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getField()I
move-result v5
sget-object v6, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I
aget v6, v6, v25
if-ne v5, v6, :cond_518
move-object/from16 v0, p5
move/from16 v1, p4
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V
invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I
move-result v5
add-int v5, v5, p4
sub-int/2addr v5, v15
move-object/from16 v0, p5
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V
:goto_a8
:cond_a8
return-void
:pswitch_a9
const/4 v5, 0x5
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_be
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto :goto_80
:cond_be
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_d3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto :goto_80
:cond_d3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto :goto_80
:pswitch_e2
const/4 v5, 0x2
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_f2
const/4 v9, 0x2
const/4 v10, 0x2
move-object/from16 v5, p0
move-object/from16 v7, p1
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto :goto_80
:cond_f2
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
move/from16 v9, p3
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto :goto_80
:pswitch_ff
const/4 v5, 0x5
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_115
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_115
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_12b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_12b
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_141
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_141
add-int/lit8 v12, v8, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_152
if-nez v8, :cond_16e
const/16 v5, 0xb
move-object/from16 v0, p6
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v5
add-int/lit8 v12, v5, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:cond_16e
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
move/from16 v9, p3
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_17c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
move-object v5, v0
const/4 v6, 0x3
move v0, v6
move/from16 v1, p3
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v6
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
move-object v5, v0
const v6, 0x7fffffff
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V
const/4 v5, 0x1
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_1dc
add-int/lit8 v5, v8, 0x32
div-int/lit8 v8, v5, 0x64
:cond_1a1
:goto_1a1
new-instance v24, Ljava/text/FieldPosition;
const/4 v5, -0x1
move-object/from16 v0, v24
move v1, v5
invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
move-object v5, v0
int-to-long v9, v8
move-object v0, v5
move-wide v1, v9
move-object/from16 v3, p1
move-object/from16 v4, v24
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-le v0, v1, :cond_80
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
move-object v5, v0
const/4 v6, 0x3
sub-int v6, p3, v6
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
move-object v5, v0
const-wide/16 v9, 0x0
move-object v0, v5
move-wide v1, v9
move-object/from16 v3, p1
move-object/from16 v4, v24
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
goto/16 :goto_80
:cond_1dc
const/4 v5, 0x2
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_1a1
add-int/lit8 v5, v8, 0x5
div-int/lit8 v8, v5, 0xa
goto :goto_1a1
:pswitch_1e7
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ge v0, v1, :cond_1fb
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
move/from16 v9, p3
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:cond_1fb
const/4 v5, 0x7
move-object/from16 v0, p6
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v8
:pswitch_203
const/4 v5, 0x5
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_219
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_219
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_22f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_22f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:pswitch_23f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:pswitch_24f
if-nez v8, :cond_26b
const/16 v5, 0xa
move-object/from16 v0, p6
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I
move-result v5
add-int/lit8 v12, v5, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:cond_26b
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
move/from16 v9, p3
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_279
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ge v0, v1, :cond_2a2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
const/4 v7, 0x1
move-object v0, v5
move-object/from16 v1, p6
move v2, v7
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getSpecificShortString(Lcom/ibm/icu/util/Calendar;Z)Ljava/lang/String;
move-result-object v28
:goto_291
if-eqz v28, :cond_2b3
invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
move-result v5
if-eqz v5, :cond_2b3
move-object/from16 v0, p1
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto/16 :goto_80
:cond_2a2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->getSpecificLongString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v28
goto :goto_291
:cond_2b3
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, p1
move-object/from16 v3, p6
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->appendGMT(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/Calendar;)V
goto/16 :goto_80
:pswitch_2bf
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ge v0, v1, :cond_344
const/16 v5, 0xf
move-object/from16 v0, p6
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v5
const/16 v6, 0x10
move-object/from16 v0, p6
move v1, v6
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v6
add-int v27, v5, v6
const/16 v26, 0x2b
if-gez v27, :cond_2e4
move/from16 v0, v27
neg-int v0, v0
move/from16 v27, v0
const/16 v26, 0x2d
:cond_2e4
move-object/from16 v0, p1
move/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const v5, 0x36ee80
div-int v21, v27, v5
const v5, 0x36ee80
rem-int v27, v27, v5
const v5, 0xea60
div-int v22, v27, v5
const v5, 0xea60
rem-int v27, v27, v5
move/from16 v0, v27
div-int/lit16 v0, v0, 0x3e8
move/from16 v23, v0
const/16 v20, 0x0
const/16 v16, 0x0
if-nez v23, :cond_331
mul-int/lit8 v5, v21, 0x64
add-int v27, v5, v22
move/from16 v0, v27
rem-int/lit16 v0, v0, 0x2710
move/from16 v20, v0
const/16 v16, 0x3e8
:goto_317
const/4 v5, 0x1
move/from16 v0, v16
move v1, v5
if-lt v0, v1, :cond_80
div-int v5, v20, v16
add-int/lit8 v5, v5, 0x30
move v0, v5
int-to-char v0, v0
move/from16 v17, v0
move-object/from16 v0, p1
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
rem-int v20, v20, v16
div-int/lit8 v16, v16, 0xa
goto :goto_317
:cond_331
move/from16 v0, v21
mul-int/lit16 v0, v0, 0x2710
move v5, v0
mul-int/lit8 v6, v22, 0x64
add-int/2addr v5, v6
add-int v27, v5, v23
const v5, 0xf4240
rem-int v20, v27, v5
const v16, 0x186a0
goto :goto_317
:cond_344
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, p1
move-object/from16 v3, p6
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->appendGMT(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/Calendar;)V
goto/16 :goto_80
:pswitch_350
const/4 v5, 0x1
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_379
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
const/4 v7, 0x1
move-object v0, v5
move-object/from16 v1, p6
move v2, v7
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericShortString(Lcom/ibm/icu/util/Calendar;Z)Ljava/lang/String;
move-result-object v28
:cond_368
:goto_368
if-eqz v28, :cond_390
invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
move-result v5
if-eqz v5, :cond_390
move-object/from16 v0, p1
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto/16 :goto_80
:cond_379
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_368
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericLongString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v28
goto :goto_368
:cond_390
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, p1
move-object/from16 v3, p6
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->appendGMT(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/Calendar;)V
goto/16 :goto_80
:pswitch_39c
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ge v0, v1, :cond_3af
const/4 v9, 0x1
const v10, 0x7fffffff
move-object/from16 v5, p0
move-object/from16 v7, p1
invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:cond_3af
const/4 v5, 0x7
move-object/from16 v0, p6
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v8
const/4 v5, 0x5
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_3cd
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_3cd
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_3e3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_3e3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:pswitch_3f3
const/4 v5, 0x5
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_409
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_409
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_41f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_41f
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_435
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;
move-object v0, v5
move v1, v8
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_435
add-int/lit8 v12, v8, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_446
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-lt v0, v1, :cond_45e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;
div-int/lit8 v6, v8, 0x3
move-object v0, v5
move v1, v6
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_45e
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_476
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;
div-int/lit8 v6, v8, 0x3
move-object v0, v5
move v1, v6
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_476
div-int/lit8 v5, v8, 0x3
add-int/lit8 v12, v5, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_489
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-lt v0, v1, :cond_4a1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;
div-int/lit8 v6, v8, 0x3
move-object v0, v5
move v1, v6
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_4a1
const/4 v5, 0x3
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_4b9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v5, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;
div-int/lit8 v6, v8, 0x3
move-object v0, v5
move v1, v6
move-object/from16 v2, p1
invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
goto/16 :goto_80
:cond_4b9
div-int/lit8 v5, v8, 0x3
add-int/lit8 v12, v5, 0x1
const v14, 0x7fffffff
move-object/from16 v9, p0
move-object v10, v6
move-object/from16 v11, p1
move/from16 v13, p3
invoke-virtual/range {v9 .. v14}, Lcom/ibm/icu/text/SimpleDateFormat;->zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
goto/16 :goto_80
:pswitch_4cc
const/4 v5, 0x1
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_4f5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
const/4 v7, 0x0
move-object v0, v5
move-object/from16 v1, p6
move v2, v7
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->getSpecificShortString(Lcom/ibm/icu/util/Calendar;Z)Ljava/lang/String;
move-result-object v28
:cond_4e4
:goto_4e4
if-eqz v28, :cond_50c
invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I
move-result v5
if-eqz v5, :cond_50c
move-object/from16 v0, p1
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto/16 :goto_80
:cond_4f5
const/4 v5, 0x4
move/from16 v0, p3
move v1, v5
if-ne v0, v1, :cond_4e4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p6
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;->getGenericLocationString(Lcom/ibm/icu/util/Calendar;)Ljava/lang/String;
move-result-object v28
goto :goto_4e4
:cond_50c
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, p1
move-object/from16 v3, p6
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->appendGMT(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;Lcom/ibm/icu/util/Calendar;)V
goto/16 :goto_80
:cond_518
invoke-virtual/range {p5 .. p5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;
move-result-object v5
sget-object v6, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Lcom/ibm/icu/text/DateFormat$Field;
aget-object v6, v6, v25
if-ne v5, v6, :cond_a8
move-object/from16 v0, p5
move/from16 v1, p4
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V
invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I
move-result v5
add-int v5, v5, p4
sub-int/2addr v5, v15
move-object/from16 v0, p5
move v1, v5
invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V
goto/16 :goto_a8
:pswitch_data_538
.packed-switch 0x0
:pswitch_a9
:pswitch_e2
:pswitch_ff
:pswitch_74
:pswitch_152
:pswitch_74
:pswitch_74
:pswitch_74
:pswitch_17c
:pswitch_203
:pswitch_74
:pswitch_74
:pswitch_74
:pswitch_74
:pswitch_23f
:pswitch_24f
:pswitch_74
:pswitch_279
:pswitch_74
:pswitch_1e7
:pswitch_74
:pswitch_74
:pswitch_74
:pswitch_2bf
:pswitch_350
:pswitch_39c
:pswitch_3f3
:pswitch_446
:pswitch_489
:pswitch_4cc
.end packed-switch
.end method
.method protected subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I
.registers 49
const/16 v28, 0x0
const/4 v10, 0x0
const/16 v38, 0x0
new-instance v8, Ljava/text/ParsePosition;
const/4 v5, 0x0
invoke-direct {v8, v5}, Ljava/text/ParsePosition;-><init>(I)V
const/16 v32, -0x1
const/16 v5, 0x41
move v0, v5
move/from16 v1, p3
if-gt v0, v1, :cond_23
const/16 v5, 0x7a
move/from16 v0, p3
move v1, v5
if-gt v0, v1, :cond_23
sget-object v5, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I
const/16 v6, 0x40
sub-int v6, p3, v6
aget v32, v5, v6
:cond_23
const/4 v5, -0x1
move/from16 v0, v32
move v1, v5
if-ne v0, v1, :cond_2e
move/from16 v0, p2
neg-int v0, v0
move v5, v0
:goto_2d
return v5
:cond_2e
move-object/from16 v0, p0
move/from16 v1, p3
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->getNumberFormat(C)Lcom/ibm/icu/text/NumberFormat;
move-result-object v10
sget-object v5, Lcom/ibm/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I
aget v20, v5, v32
:goto_3a
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v5
move/from16 v0, p2
move v1, v5
if-lt v0, v1, :cond_48
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto :goto_2d
:cond_48
invoke-static/range {p1 .. p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v19
invoke-static/range {v19 .. v19}, Lcom/ibm/icu/lang/UCharacter;->isUWhiteSpace(I)Z
move-result v5
if-nez v5, :cond_8d
move-object v0, v8
move/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v5, 0x4
move/from16 v0, v32
move v1, v5
if-eq v0, v1, :cond_7e
const/16 v5, 0xf
move/from16 v0, v32
move v1, v5
if-eq v0, v1, :cond_7e
const/4 v5, 0x2
move/from16 v0, v32
move v1, v5
if-ne v0, v1, :cond_71
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-le v0, v1, :cond_7e
:cond_71
const/4 v5, 0x1
move/from16 v0, v32
move v1, v5
if-eq v0, v1, :cond_7e
const/16 v5, 0x8
move/from16 v0, v32
move v1, v5
if-ne v0, v1, :cond_b8
:cond_7e
if-eqz p5, :cond_a7
add-int v5, p2, p4
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v6
if-le v5, v6, :cond_94
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto :goto_2d
:cond_8d
invoke-static/range {v19 .. v19}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v5
add-int p2, p2, v5
goto :goto_3a
:cond_94
move-object/from16 v5, p0
move-object/from16 v6, p1
move/from16 v7, p4
move/from16 v9, p6
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v28
:goto_a0
if-nez v28, :cond_b4
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto :goto_2d
:cond_a7
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object v2, v8
move/from16 v3, p6
move-object v4, v10
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v28
goto :goto_a0
:cond_b4
invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I
move-result v38
:cond_b8
packed-switch v32, :pswitch_data_576
:pswitch_bb
if-eqz p5, :cond_563
add-int v5, p2, p4
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v6
if-le v5, v6, :cond_543
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto/16 :goto_2d
:pswitch_cb
const/4 v5, 0x4
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_e7
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:cond_e7
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_fd
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_148
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
sub-int v5, v5, p2
const/4 v6, 0x2
if-ne v5, v6, :cond_148
invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v5
if-eqz v5, :cond_148
add-int/lit8 v5, p2, 0x1
move-object/from16 v0, p1
move v1, v5
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
invoke-static {v5}, Lcom/ibm/icu/lang/UCharacter;->isDigit(I)Z
move-result v5
if-eqz v5, :cond_148
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I
move-result v5
rem-int/lit8 v18, v5, 0x64
const/4 v5, 0x0
move/from16 v0, v38
move/from16 v1, v18
if-ne v0, v1, :cond_157
const/4 v6, 0x1
:goto_133
aput-boolean v6, p7, v5
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I
move-result v5
div-int/lit8 v5, v5, 0x64
mul-int/lit8 v5, v5, 0x64
move/from16 v0, v38
move/from16 v1, v18
if-ge v0, v1, :cond_159
const/16 v6, 0x64
:goto_145
add-int/2addr v5, v6
add-int v38, v38, v5
:cond_148
const/4 v5, 0x1
move-object/from16 v0, p8
move v1, v5
move/from16 v2, v38
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_157
const/4 v6, 0x0
goto :goto_133
:cond_159
const/4 v6, 0x0
goto :goto_145
:pswitch_15b
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-gt v0, v1, :cond_172
const/4 v5, 0x2
const/4 v6, 0x1
sub-int v6, v38, v6
move-object/from16 v0, p8
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_172
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_18c
move/from16 v5, v26
goto/16 :goto_2d
:cond_18c
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_1a2
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-gt v0, v1, :cond_1b9
const/4 v5, 0x2
const/4 v6, 0x1
sub-int v6, v38, v6
move-object/from16 v0, p8
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_1b9
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_1d3
move/from16 v5, v26
goto/16 :goto_2d
:cond_1d3
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_1e9
const/16 v5, 0xb
move-object/from16 v0, p8
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v5
add-int/lit8 v5, v5, 0x1
move/from16 v0, v38
move v1, v5
if-ne v0, v1, :cond_1fb
const/16 v38, 0x0
:cond_1fb
const/16 v5, 0xb
move-object/from16 v0, p8
move v1, v5
move/from16 v2, v38
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:pswitch_20b
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
sub-int v24, v5, p2
const/4 v5, 0x3
move/from16 v0, v24
move v1, v5
if-ge v0, v1, :cond_222
:goto_217
const/4 v5, 0x3
move/from16 v0, v24
move v1, v5
if-ge v0, v1, :cond_235
mul-int/lit8 v38, v38, 0xa
add-int/lit8 v24, v24, 0x1
goto :goto_217
:cond_222
const/16 v17, 0x1
:goto_224
const/4 v5, 0x3
move/from16 v0, v24
move v1, v5
if-le v0, v1, :cond_22f
mul-int/lit8 v17, v17, 0xa
add-int/lit8 v24, v24, -0x1
goto :goto_224
:cond_22f
shr-int/lit8 v5, v17, 0x1
add-int v5, v5, v38
div-int v38, v5, v17
:cond_235
const/16 v5, 0xe
move-object/from16 v0, p8
move v1, v5
move/from16 v2, v38
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:pswitch_245
const/4 v14, 0x7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_25f
move/from16 v5, v26
goto/16 :goto_2d
:cond_25f
const/4 v14, 0x7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_275
const/4 v14, 0x7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_28f
move/from16 v5, v26
goto/16 :goto_2d
:cond_28f
const/4 v14, 0x7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_2a5
const/16 v14, 0x9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_2bc
const/16 v5, 0xa
move-object/from16 v0, p8
move v1, v5
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I
move-result v5
add-int/lit8 v5, v5, 0x1
move/from16 v0, v38
move v1, v5
if-ne v0, v1, :cond_2ce
const/16 v38, 0x0
:cond_2ce
const/16 v5, 0xa
move-object/from16 v0, p8
move v1, v5
move/from16 v2, v38
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:pswitch_2de
const/16 v36, 0x0
const/16 v29, 0x0
const/16 v31, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object v2, v8
move-object v3, v10
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/SimpleDateFormat;->parseGMT(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NumberFormat;)Ljava/lang/Integer;
move-result-object v22
if-eqz v22, :cond_2f6
invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I
move-result v29
const/16 v31, 0x1
:cond_2f6
if-nez v31, :cond_329
const/16 v34, 0x0
invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C
move-result v35
const/16 v5, 0x2b
move/from16 v0, v35
move v1, v5
if-ne v0, v1, :cond_33c
const/16 v34, 0x1
:goto_307
add-int/lit8 v30, p2, 0x1
move-object v0, v8
move/from16 v1, v30
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
const/4 v7, 0x6
const/4 v9, 0x0
move-object/from16 v5, p0
move-object/from16 v6, p1
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v28
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
sub-int v27, v5, v30
if-gtz v27, :cond_346
:cond_321
:goto_321
if-nez v31, :cond_329
move-object v0, v8
move/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
:cond_329
if-eqz v31, :cond_38f
invoke-static/range {v29 .. v29}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(I)Lcom/ibm/icu/util/TimeZone;
move-result-object v36
move-object/from16 v0, p8
move-object/from16 v1, v36
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_33c
const/16 v5, 0x2d
move/from16 v0, v35
move v1, v5
if-ne v0, v1, :cond_321
const/16 v34, -0x1
goto :goto_307
:cond_346
invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I
move-result v37
const/16 v23, 0x0
const/16 v25, 0x0
const/16 v33, 0x0
packed-switch v27, :pswitch_data_5b6
:goto_353
const/16 v5, 0x17
move/from16 v0, v23
move v1, v5
if-gt v0, v1, :cond_321
const/16 v5, 0x3b
move/from16 v0, v25
move v1, v5
if-gt v0, v1, :cond_321
const/16 v5, 0x3b
move/from16 v0, v33
move v1, v5
if-gt v0, v1, :cond_321
mul-int/lit8 v5, v23, 0x3c
add-int v5, v5, v25
mul-int/lit8 v5, v5, 0x3c
add-int v5, v5, v33
mul-int/lit16 v5, v5, 0x3e8
mul-int v29, v5, v34
const/16 v31, 0x1
goto :goto_321
:pswitch_377
move/from16 v23, v37
goto :goto_353
:pswitch_37a
div-int/lit8 v23, v37, 0x64
rem-int/lit8 v25, v37, 0x64
goto :goto_353
:pswitch_37f
move/from16 v0, v37
div-int/lit16 v0, v0, 0x2710
move/from16 v23, v0
move/from16 v0, v37
rem-int/lit16 v0, v0, 0x2710
move v5, v0
div-int/lit8 v25, v5, 0x64
rem-int/lit8 v33, v37, 0x64
goto :goto_353
:cond_38f
const/16 v39, 0x0
sparse-switch v32, :sswitch_data_5c6
:goto_394
:cond_394
if-eqz v39, :cond_45e
invoke-virtual/range {v39 .. v39}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isStandard()Z
move-result v5
if-eqz v5, :cond_450
const/4 v5, 0x1
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
:cond_3a2
:goto_3a2
invoke-virtual/range {v39 .. v39}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getID()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v36
move-object/from16 v0, p8
move-object/from16 v1, v36
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
invoke-virtual/range {v39 .. v39}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->getString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
add-int v5, v5, p2
goto/16 :goto_2d
:sswitch_3bd
const/4 v5, 0x4
move/from16 v0, p4
move v1, v5
if-ge v0, v1, :cond_3d6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findSpecificShort(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto :goto_394
:cond_3d6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findSpecificLong(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto :goto_394
:sswitch_3e9
const/4 v5, 0x1
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_402
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findGenericShort(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto :goto_394
:cond_402
const/4 v5, 0x4
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_394
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findGenericLong(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto/16 :goto_394
:sswitch_41c
const/4 v5, 0x1
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_436
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findSpecificShort(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto/16 :goto_394
:cond_436
const/4 v5, 0x4
move/from16 v0, p4
move v1, v5
if-ne v0, v1, :cond_394
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
invoke-virtual {v5}, Lcom/ibm/icu/text/DateFormatSymbols;->getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
move-result-object v5
move-object v0, v5
move-object/from16 v1, p1
move/from16 v2, p2
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ZoneStringFormat;->findGenericLocation(Ljava/lang/String;I)Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;
move-result-object v39
goto/16 :goto_394
:cond_450
invoke-virtual/range {v39 .. v39}, Lcom/ibm/icu/impl/ZoneStringFormat$ZoneStringInfo;->isDaylight()Z
move-result v5
if-eqz v5, :cond_3a2
const/4 v5, 0x2
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/text/SimpleDateFormat;->tztype:I
goto/16 :goto_3a2
:cond_45e
const/16 v21, 0x0
const/4 v12, 0x1
const-string v14, "GMT"
const/4 v15, 0x0
const/16 v16, 0x3
move-object/from16 v11, p1
move/from16 v13, p2
invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v5
if-eqz v5, :cond_485
const/16 v21, 0x3
:cond_472
:goto_472
if-lez v21, :cond_4ab
const-string v5, "Etc/GMT"
invoke-static {v5}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
move-result-object v36
move-object/from16 v0, p8
move-object/from16 v1, v36
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
add-int v5, p2, v21
goto/16 :goto_2d
:cond_485
const/4 v12, 0x1
const-string v14, "UTC"
const/4 v15, 0x0
const/16 v16, 0x3
move-object/from16 v11, p1
move/from16 v13, p2
invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v5
if-eqz v5, :cond_498
const/16 v21, 0x3
goto :goto_472
:cond_498
const/4 v12, 0x1
const-string v14, "UT"
const/4 v15, 0x0
const/16 v16, 0x2
move-object/from16 v11, p1
move/from16 v13, p2
invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v5
if-eqz v5, :cond_472
const/16 v21, 0x2
goto :goto_472
:cond_4ab
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto/16 :goto_2d
:pswitch_4b1
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-gt v0, v1, :cond_4ca
const/4 v5, 0x2
const/4 v6, 0x1
sub-int v6, v38, v6
mul-int/lit8 v6, v6, 0x3
move-object/from16 v0, p8
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_4ca
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_4e4
move/from16 v5, v26
goto/16 :goto_2d
:cond_4e4
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:pswitch_4fa
const/4 v5, 0x2
move/from16 v0, p4
move v1, v5
if-gt v0, v1, :cond_513
const/4 v5, 0x2
const/4 v6, 0x1
sub-int v6, v38, v6
mul-int/lit8 v6, v6, 0x3
move-object/from16 v0, p8
move v1, v5
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_513
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v26
if-lez v26, :cond_52d
move/from16 v5, v26
goto/16 :goto_2d
:cond_52d
const/4 v14, 0x2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
move-object v5, v0
iget-object v15, v5, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;
move-object/from16 v11, p0
move-object/from16 v12, p1
move/from16 v13, p2
move-object/from16 v16, p8
invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Lcom/ibm/icu/util/Calendar;)I
move-result v5
goto/16 :goto_2d
:cond_543
move-object/from16 v5, p0
move-object/from16 v6, p1
move/from16 v7, p4
move/from16 v9, p6
invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v28
:goto_54f
if-eqz v28, :cond_570
invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->intValue()I
move-result v5
move-object/from16 v0, p8
move/from16 v1, v20
move v2, v5
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I
move-result v5
goto/16 :goto_2d
:cond_563
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object v2, v8
move/from16 v3, p6
move-object v4, v10
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/text/NumberFormat;)Ljava/lang/Number;
move-result-object v28
goto :goto_54f
:cond_570
move/from16 v0, p2
neg-int v0, v0
move v5, v0
goto/16 :goto_2d
:sswitch_data_5c6
.sparse-switch
0x11 -> :sswitch_3bd
0x18 -> :sswitch_3e9
0x1d -> :sswitch_41c
.end sparse-switch
:pswitch_data_576
.packed-switch 0x0
:pswitch_cb
:pswitch_fd
:pswitch_15b
:pswitch_bb
:pswitch_1e9
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_20b
:pswitch_245
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_2a5
:pswitch_2bc
:pswitch_bb
:pswitch_2de
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_bb
:pswitch_2de
:pswitch_2de
:pswitch_275
:pswitch_1a2
:pswitch_4b1
:pswitch_4fa
:pswitch_2de
.end packed-switch
:pswitch_data_5b6
.packed-switch 0x1
:pswitch_377
:pswitch_377
:pswitch_37a
:pswitch_37a
:pswitch_37f
:pswitch_37f
.end packed-switch
.end method
.method public toLocalizedPattern()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
const-string v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqV"
iget-object v2, p0, Lcom/ibm/icu/text/SimpleDateFormat;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
iget-object v2, v2, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;
invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toPattern()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;
return-object v0
.end method
.method protected zeroPaddingNumber(JII)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v0, p3}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v0, p4}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V
iget-object v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected zeroPaddingNumber(Lcom/ibm/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
.registers 10
iget-boolean v0, p0, Lcom/ibm/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z
if-eqz v0, :cond_8
invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
:goto_7
return-void
:cond_8
invoke-virtual {p1, p4}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V
invoke-virtual {p1, p5}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V
int-to-long v0, p3
new-instance v2, Ljava/text/FieldPosition;
const/4 v3, -0x1
invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V
invoke-virtual {p1, v0, v1, p2, v2}, Lcom/ibm/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
goto :goto_7
.end method