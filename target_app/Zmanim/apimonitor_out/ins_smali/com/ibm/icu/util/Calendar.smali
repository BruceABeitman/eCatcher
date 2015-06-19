.class public abstract Lcom/ibm/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.field public static final AM:I = 0x0
.field public static final AM_PM:I = 0x9
.field public static final APRIL:I = 0x3
.field public static final AUGUST:I = 0x7
.field protected static final BASE_FIELD_COUNT:I = 0x16
.field private static final CALTYPE_BUDDHIST:I = 0x2
.field private static final CALTYPE_CHINESE:I = 0x8
.field private static final CALTYPE_COPTIC:I = 0xa
.field private static final CALTYPE_ETHIOPIC:I = 0xb
.field private static final CALTYPE_ETHIOPIC_AMETE_ALEM:I = 0xc
.field private static final CALTYPE_GREGORIAN:I = 0x0
.field private static final CALTYPE_HEBREW:I = 0x7
.field private static final CALTYPE_INDIAN:I = 0x9
.field private static final CALTYPE_ISLAMIC:I = 0x6
.field private static final CALTYPE_ISLAMIC_CIVIL:I = 0x5
.field private static final CALTYPE_JAPANESE:I = 0x1
.field private static final CALTYPE_PERSIAN:I = 0x4
.field private static final CALTYPE_ROC:I = 0x3
.field private static final CALTYPE_UNKNOWN:I = -0x1
.field public static final DATE:I = 0x5
.field static final DATE_PRECEDENCE:[[[I = null
.field public static final DAY_OF_MONTH:I = 0x5
.field public static final DAY_OF_WEEK:I = 0x7
.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8
.field public static final DAY_OF_YEAR:I = 0x6
.field public static final DECEMBER:I = 0xb
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String; = null
.field public static final DOW_LOCAL:I = 0x12
.field static final DOW_PRECEDENCE:[[[I = null
.field public static final DST_OFFSET:I = 0x10
.field protected static final EPOCH_JULIAN_DAY:I = 0x253d8c
.field public static final ERA:I = 0x0
.field public static final EXTENDED_YEAR:I = 0x13
.field public static final FEBRUARY:I = 0x1
.field private static final FIELD_NAME:[Ljava/lang/String; = null
.field public static final FRIDAY:I = 0x6
.field protected static final GREATEST_MINIMUM:I = 0x1
.field private static final GREGORIAN_MONTH_COUNT:[[I = null
.field public static final HOUR:I = 0xa
.field public static final HOUR_OF_DAY:I = 0xb
.field protected static final INTERNALLY_SET:I = 0x1
.field public static final JANUARY:I = 0x0
.field protected static final JAN_1_1_JULIAN_DAY:I = 0x1a4452
.field public static final JULIAN_DAY:I = 0x14
.field public static final JULY:I = 0x6
.field public static final JUNE:I = 0x5
.field protected static final LEAST_MAXIMUM:I = 0x2
.field private static final LIMITS:[[I = null
.field public static final MARCH:I = 0x2
.field protected static final MAXIMUM:I = 0x3
.field protected static final MAX_DATE:Ljava/util/Date; = null
.field protected static final MAX_FIELD_COUNT:I = 0x20
.field protected static final MAX_JULIAN:I = 0x7f000000
.field protected static final MAX_MILLIS:J = 0x28d47dbbf19b000L
.field public static final MAY:I = 0x4
.field public static final MILLISECOND:I = 0xe
.field public static final MILLISECONDS_IN_DAY:I = 0x15
.field protected static final MINIMUM:I = 0x0
.field protected static final MINIMUM_USER_STAMP:I = 0x2
.field public static final MINUTE:I = 0xc
.field protected static final MIN_DATE:Ljava/util/Date; = null
.field protected static final MIN_JULIAN:I = -0x7f000000
.field protected static final MIN_MILLIS:J = -0x28ec76c40e65000L
.field public static final MONDAY:I = 0x2
.field public static final MONTH:I = 0x2
.field public static final NOVEMBER:I = 0xa
.field public static final OCTOBER:I = 0x9
.field protected static final ONE_DAY:J = 0x5265c00L
.field protected static final ONE_HOUR:I = 0x36ee80
.field protected static final ONE_MINUTE:I = 0xea60
.field protected static final ONE_SECOND:I = 0x3e8
.field protected static final ONE_WEEK:J = 0x240c8400L
.field private static final PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
.field public static final PM:I = 0x1
.field private static final QUOTE:C = '\''
.field protected static final RESOLVE_REMAP:I = 0x20
.field public static final SATURDAY:I = 0x7
.field public static final SECOND:I = 0xd
.field public static final SEPTEMBER:I = 0x8
.field public static final SUNDAY:I = 0x1
.field public static final THURSDAY:I = 0x5
.field public static final TUESDAY:I = 0x3
.field public static final UNDECIMBER:I = 0xc
.field protected static final UNSET:I = 0x0
.field public static final WEDNESDAY:I = 0x4
.field public static final WEEKDAY:I = 0x0
.field public static final WEEKEND:I = 0x1
.field public static final WEEKEND_CEASE:I = 0x3
.field public static final WEEKEND_ONSET:I = 0x2
.field public static final WEEK_OF_MONTH:I = 0x4
.field public static final WEEK_OF_YEAR:I = 0x3
.field public static final YEAR:I = 0x1
.field public static final YEAR_WOY:I = 0x11
.field public static final ZONE_OFFSET:I = 0xf
.field private static cachedLocaleData:Ljava/util/Hashtable; = null
.field private static final calTypes:[Ljava/lang/String; = null
.field private static final serialVersionUID:J = 0x565b47a9d4dd4fcdL
.field private static shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
.field private actualLocale:Lcom/ibm/icu/util/ULocale;
.field private transient areAllFieldsSet:Z
.field private transient areFieldsSet:Z
.field private transient areFieldsVirtuallySet:Z
.field private transient fields:[I
.field private firstDayOfWeek:I
.field private transient gregorianDayOfMonth:I
.field private transient gregorianDayOfYear:I
.field private transient gregorianMonth:I
.field private transient gregorianYear:I
.field private transient internalSetMask:I
.field private transient isTimeSet:Z
.field private lenient:Z
.field private minimalDaysInFirstWeek:I
.field private transient nextStamp:I
.field private transient stamp:[I
.field private time:J
.field private validLocale:Lcom/ibm/icu/util/ULocale;
.field private weekendCease:I
.field private weekendCeaseMillis:I
.field private weekendOnset:I
.field private weekendOnsetMillis:I
.field private zone:Lcom/ibm/icu/util/TimeZone;
.method static constructor <clinit>()V
.registers 10
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, 0x4
new-instance v0, Ljava/util/Date;
const-wide v1, -0x28ec76c40e65000L
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/ibm/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;
new-instance v0, Ljava/util/Date;
const-wide v1, 0x28d47dbbf19b000L
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
sput-object v0, Lcom/ibm/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0, v9}, Ljava/util/Hashtable;-><init>(I)V
sput-object v0, Lcom/ibm/icu/util/Calendar;->cachedLocaleData:Ljava/util/Hashtable;
const/16 v0, 0xd
new-array v0, v0, [Ljava/lang/String;
const-string v1, "gregorian"
aput-object v1, v0, v6
const-string v1, "japanese"
aput-object v1, v0, v7
const-string v1, "buddhist"
aput-object v1, v0, v8
const-string v1, "roc"
aput-object v1, v0, v9
const-string v1, "persian"
aput-object v1, v0, v5
const/4 v1, 0x5
const-string v2, "islamic-civil"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "islamic"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "hebrew"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "chinese"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "indian"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "coptic"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "ethiopic"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "ethiopic-amete-alem"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
const/16 v0, 0xd
new-array v0, v0, [Ljava/lang/String;
const-string v1, "HH:mm:ss z"
aput-object v1, v0, v6
const-string v1, "HH:mm:ss z"
aput-object v1, v0, v7
const-string v1, "HH:mm:ss"
aput-object v1, v0, v8
const-string v1, "HH:mm"
aput-object v1, v0, v9
const-string v1, "EEEE, yyyy MMMM dd"
aput-object v1, v0, v5
const/4 v1, 0x5
const-string v2, "yyyy MMMM d"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "yyyy MMM d"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "yy/MM/dd"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "{1} {0}"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "{1} {0}"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "{1} {0}"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "{1} {0}"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "{1} {0}"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;
const/16 v0, 0x16
new-array v0, v0, [[I
new-array v1, v6, [I
aput-object v1, v0, v6
new-array v1, v6, [I
aput-object v1, v0, v7
new-array v1, v6, [I
aput-object v1, v0, v8
new-array v1, v6, [I
aput-object v1, v0, v9
new-array v1, v6, [I
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v6, [I
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v6, [I
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v5, [I
fill-array-data v2, :array_2c0
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v6, [I
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v5, [I
fill-array-data v2, :array_2cc
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v5, [I
fill-array-data v2, :array_2d8
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v5, [I
fill-array-data v2, :array_2e4
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v5, [I
fill-array-data v2, :array_2f0
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v5, [I
fill-array-data v2, :array_2fc
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v5, [I
fill-array-data v2, :array_308
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v5, [I
fill-array-data v2, :array_314
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v5, [I
fill-array-data v2, :array_320
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v6, [I
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v5, [I
fill-array-data v2, :array_32c
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v6, [I
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v5, [I
fill-array-data v2, :array_338
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v5, [I
fill-array-data v2, :array_344
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I
new-array v0, v8, [[[I
const/16 v1, 0x8
new-array v1, v1, [[I
new-array v2, v7, [I
const/4 v3, 0x5
aput v3, v2, v6
aput-object v2, v1, v6
new-array v2, v8, [I
fill-array-data v2, :array_350
aput-object v2, v1, v7
new-array v2, v8, [I
fill-array-data v2, :array_358
aput-object v2, v1, v8
new-array v2, v8, [I
fill-array-data v2, :array_360
aput-object v2, v1, v9
new-array v2, v8, [I
fill-array-data v2, :array_368
aput-object v2, v1, v5
const/4 v2, 0x5
new-array v3, v8, [I
fill-array-data v3, :array_370
aput-object v3, v1, v2
const/4 v2, 0x6
new-array v3, v8, [I
fill-array-data v3, :array_378
aput-object v3, v1, v2
const/4 v2, 0x7
new-array v3, v7, [I
const/4 v4, 0x6
aput v4, v3, v6
aput-object v3, v1, v2
aput-object v1, v0, v6
const/4 v1, 0x5
new-array v1, v1, [[I
new-array v2, v7, [I
aput v9, v2, v6
aput-object v2, v1, v6
new-array v2, v7, [I
aput v5, v2, v6
aput-object v2, v1, v7
new-array v2, v7, [I
const/16 v3, 0x8
aput v3, v2, v6
aput-object v2, v1, v8
new-array v2, v8, [I
fill-array-data v2, :array_380
aput-object v2, v1, v9
new-array v2, v8, [I
fill-array-data v2, :array_388
aput-object v2, v1, v5
aput-object v1, v0, v7
sput-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I
new-array v0, v7, [[[I
new-array v1, v8, [[I
new-array v2, v7, [I
const/4 v3, 0x7
aput v3, v2, v6
aput-object v2, v1, v6
new-array v2, v7, [I
const/16 v3, 0x12
aput v3, v2, v6
aput-object v2, v1, v7
aput-object v1, v0, v6
sput-object v0, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I
const/16 v0, 0xc
new-array v0, v0, [[I
new-array v1, v5, [I
fill-array-data v1, :array_390
aput-object v1, v0, v6
new-array v1, v5, [I
fill-array-data v1, :array_39c
aput-object v1, v0, v7
new-array v1, v5, [I
fill-array-data v1, :array_3a8
aput-object v1, v0, v8
new-array v1, v5, [I
fill-array-data v1, :array_3b4
aput-object v1, v0, v9
new-array v1, v5, [I
fill-array-data v1, :array_3c0
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v5, [I
fill-array-data v2, :array_3cc
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v5, [I
fill-array-data v2, :array_3d8
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v5, [I
fill-array-data v2, :array_3e4
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v5, [I
fill-array-data v2, :array_3f0
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v5, [I
fill-array-data v2, :array_3fc
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v5, [I
fill-array-data v2, :array_408
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v5, [I
fill-array-data v2, :array_414
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I
const/16 v0, 0x16
new-array v0, v0, [Ljava/lang/String;
const-string v1, "ERA"
aput-object v1, v0, v6
const-string v1, "YEAR"
aput-object v1, v0, v7
const-string v1, "MONTH"
aput-object v1, v0, v8
const-string v1, "WEEK_OF_YEAR"
aput-object v1, v0, v9
const-string v1, "WEEK_OF_MONTH"
aput-object v1, v0, v5
const/4 v1, 0x5
const-string v2, "DAY_OF_MONTH"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "DAY_OF_YEAR"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "DAY_OF_WEEK"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "DAY_OF_WEEK_IN_MONTH"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "AM_PM"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "HOUR"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "HOUR_OF_DAY"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "MINUTE"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "SECOND"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "MILLISECOND"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "ZONE_OFFSET"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "DST_OFFSET"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "YEAR_WOY"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "DOW_LOCAL"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "EXTENDED_YEAR"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "JULIAN_DAY"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string v2, "MILLISECONDS_IN_DAY"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;
return-void
:array_3d8
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0xb5t 0x0t 0x0t 0x0t
0xb6t 0x0t 0x0t 0x0t
.end array-data
:array_360
.array-data 0x4
0x8t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_408
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x30t 0x1t 0x0t 0x0t
0x31t 0x1t 0x0t 0x0t
.end array-data
:array_388
.array-data 0x4
0x28t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
.end array-data
:array_370
.array-data 0x4
0x4t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
.end array-data
:array_368
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
.end array-data
:array_2f0
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
.end array-data
:array_380
.array-data 0x4
0x28t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_3f0
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0xf3t 0x0t 0x0t 0x0t
0xf4t 0x0t 0x0t 0x0t
.end array-data
:array_2cc
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_39c
.array-data 0x4
0x1ct 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
.end array-data
:array_2fc
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
.end array-data
:array_3cc
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x97t 0x0t 0x0t 0x0t
0x98t 0x0t 0x0t 0x0t
.end array-data
:array_32c
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_338
.array-data 0x4
0x0t 0x0t 0x0t 0x81t
0x0t 0x0t 0x0t 0x81t
0x0t 0x0t 0x0t 0x7ft
0x0t 0x0t 0x0t 0x7ft
.end array-data
:array_314
.array-data 0x4
0x0t 0xd2t 0x6ct 0xfdt
0x0t 0xd2t 0x6ct 0xfdt
0x0t 0x2et 0x93t 0x2t
0x0t 0x2et 0x93t 0x2t
.end array-data
:array_2d8
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
.end array-data
:array_3b4
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x5at 0x0t 0x0t 0x0t
0x5bt 0x0t 0x0t 0x0t
.end array-data
:array_3fc
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x11t 0x1t 0x0t 0x0t
0x12t 0x1t 0x0t 0x0t
.end array-data
:array_390
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_2c0
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_350
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_414
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x4et 0x1t 0x0t 0x0t
0x4ft 0x1t 0x0t 0x0t
.end array-data
:array_378
.array-data 0x4
0x8t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
.end array-data
:array_3a8
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
.end array-data
:array_3c0
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0x78t 0x0t 0x0t 0x0t
0x79t 0x0t 0x0t 0x0t
.end array-data
:array_358
.array-data 0x4
0x4t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_3e4
.array-data 0x4
0x1ft 0x0t 0x0t 0x0t
0x1ft 0x0t 0x0t 0x0t
0xd4t 0x0t 0x0t 0x0t
0xd5t 0x0t 0x0t 0x0t
.end array-data
:array_2e4
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x17t 0x0t 0x0t 0x0t
0x17t 0x0t 0x0t 0x0t
.end array-data
:array_344
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfft 0x5bt 0x26t 0x5t
0xfft 0x5bt 0x26t 0x5t
.end array-data
:array_308
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xe7t 0x3t 0x0t 0x0t
0xe7t 0x3t 0x0t 0x0t
.end array-data
:array_320
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x80t 0xeet 0x36t 0x0t
0x80t 0xeet 0x36t 0x0t
.end array-data
.end method
.method protected constructor <init>()V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z
const/4 v0, 0x2
iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I
iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
invoke-direct {p0, p2}, Lcom/ibm/icu/util/Calendar;->setWeekData(Lcom/ibm/icu/util/ULocale;)V
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->initInternal()V
return-void
.end method
.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
.registers 4
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method static synthetic access$1000()Lcom/ibm/icu/impl/ICUCache;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Calendar;->PATTERN_CACHE:Lcom/ibm/icu/impl/ICUCache;
return-object v0
.end method
.method static synthetic access$1100()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;
return-object v0
.end method
.method private compare(Ljava/lang/Object;)J
.registers 7
instance-of v2, p1, Lcom/ibm/icu/util/Calendar;
if-eqz v2, :cond_10
check-cast p1, Lcom/ibm/icu/util/Calendar;
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v0
:goto_a
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
sub-long/2addr v2, v0
return-wide v2
:cond_10
instance-of v2, p1, Ljava/util/Date;
if-eqz v2, :cond_1b
check-cast p1, Ljava/util/Date;
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
goto :goto_a
:cond_1b
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "is not a Calendar or Date"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method private final computeGregorianAndDOWFields(I)V
.registers 6
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->computeGregorianFields(I)V
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v3, 0x7
invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I
move-result v0
aput v0, v2, v3
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v2
sub-int v2, v0, v2
add-int/lit8 v1, v2, 0x1
const/4 v2, 0x1
if-ge v1, v2, :cond_19
add-int/lit8 v1, v1, 0x7
:cond_19
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v3, 0x12
aput v1, v2, v3
return-void
.end method
.method private final computeWeekFields()V
.registers 15
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v12, 0x13
aget v3, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v12, 0x7
aget v1, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v12, 0x6
aget v2, v11, v12
move v10, v3
add-int/lit8 v11, v1, 0x7
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v12
sub-int/2addr v11, v12
rem-int/lit8 v7, v11, 0x7
sub-int v11, v1, v2
add-int/lit16 v11, v11, 0x1b59
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v12
sub-int/2addr v11, v12
rem-int/lit8 v8, v11, 0x7
const/4 v11, 0x1
sub-int v11, v2, v11
add-int/2addr v11, v8
div-int/lit8 v9, v11, 0x7
const/4 v11, 0x7
sub-int/2addr v11, v8
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v12
if-lt v11, v12, :cond_35
add-int/lit8 v9, v9, 0x1
:cond_35
if-nez v9, :cond_6d
const/4 v11, 0x1
sub-int v11, v3, v11
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I
move-result v11
add-int v6, v2, v11
invoke-virtual {p0, v6, v1}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I
move-result v9
add-int/lit8 v10, v10, -0x1
:goto_46
:cond_46
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v12, 0x3
aput v9, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v12, 0x11
aput v10, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v12, 0x5
aget v0, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v12, 0x4
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->weekNumber(II)I
move-result v13
aput v13, v11, v12
iget-object v11, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v12, 0x8
const/4 v13, 0x1
sub-int v13, v0, v13
div-int/lit8 v13, v13, 0x7
add-int/lit8 v13, v13, 0x1
aput v13, v11, v12
return-void
:cond_6d
invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I
move-result v4
const/4 v11, 0x5
sub-int v11, v4, v11
if-lt v2, v11, :cond_46
add-int v11, v7, v4
sub-int/2addr v11, v2
rem-int/lit8 v5, v11, 0x7
if-gez v5, :cond_7f
add-int/lit8 v5, v5, 0x7
:cond_7f
const/4 v11, 0x6
sub-int/2addr v11, v5
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v12
if-lt v11, v12, :cond_46
add-int/lit8 v11, v2, 0x7
sub-int/2addr v11, v7
if-le v11, v4, :cond_46
const/4 v9, 0x1
add-int/lit8 v10, v10, 0x1
goto :goto_46
.end method
.method static createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 6
const/4 v0, 0x0
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v2
invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)I
move-result v1
const/4 v3, -0x1
if-ne v1, v3, :cond_d
const/4 v1, 0x0
:cond_d
sparse-switch v1, :sswitch_data_24
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "Unknown calendar type"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:sswitch_18
new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;
invoke-direct {v0, v2, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
:goto_1d
return-object v0
:sswitch_1e
new-instance v0, Lcom/ibm/icu/util/HebrewCalendar;
invoke-direct {v0, v2, p0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
goto :goto_1d
:sswitch_data_24
.sparse-switch
0x0 -> :sswitch_18
0x7 -> :sswitch_1e
.end sparse-switch
.end method
.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/16 v5, 0x3d
invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I
move-result v5
if-ltz v5, :cond_a
move-object v5, p1
:goto_9
return-object v5
:cond_a
const/4 v1, 0x0
const/16 v3, 0x20
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
new-instance v2, Ljava/text/StringCharacterIterator;
invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->first()C
move-result v0
:goto_1b
const v5, 0xffff
if-eq v0, v5, :cond_4d
const/16 v5, 0x27
if-ne v0, v5, :cond_31
if-nez v1, :cond_2e
const/4 v5, 0x1
move v1, v5
:goto_28
move v3, v0
:goto_29
invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->next()C
move-result v0
goto :goto_1b
:cond_2e
const/4 v5, 0x0
move v1, v5
goto :goto_28
:cond_31
if-nez v1, :cond_4b
if-eq v0, v3, :cond_4b
invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I
move-result v5
if-lez v5, :cond_40
const-string v5, ";"
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_40
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_4b
move v3, v0
goto :goto_29
:cond_4d
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_9
.end method
.method protected static final floorDivide(II)I
.registers 4
if-ltz p0, :cond_5
div-int v0, p0, p1
:goto_4
return v0
:cond_5
add-int/lit8 v0, p0, 0x1
div-int/2addr v0, p1
const/4 v1, 0x1
sub-int/2addr v0, v1
goto :goto_4
.end method
.method protected static final floorDivide(II[I)I
.registers 7
const/4 v3, 0x0
if-ltz p0, :cond_a
rem-int v1, p0, p1
aput v1, p2, v3
div-int v1, p0, p1
:goto_9
return v1
:cond_a
add-int/lit8 v1, p0, 0x1
div-int/2addr v1, p1
const/4 v2, 0x1
sub-int v0, v1, v2
mul-int v1, v0, p1
sub-int v1, p0, v1
aput v1, p2, v3
move v1, v0
goto :goto_9
.end method
.method protected static final floorDivide(JI[I)I
.registers 12
const-wide/16 v6, 0x1
const/4 v5, 0x0
const-wide/16 v1, 0x0
cmp-long v1, p0, v1
if-ltz v1, :cond_14
int-to-long v1, p2
rem-long v1, p0, v1
long-to-int v1, v1
aput v1, p3, v5
int-to-long v1, p2
div-long v1, p0, v1
long-to-int v1, v1
:goto_13
return v1
:cond_14
add-long v1, p0, v6
int-to-long v3, p2
div-long/2addr v1, v3
sub-long/2addr v1, v6
long-to-int v0, v1
mul-int v1, v0, p2
int-to-long v1, v1
sub-long v1, p0, v1
long-to-int v1, v1
aput v1, p3, v5
move v1, v0
goto :goto_13
.end method
.method protected static final floorDivide(JJ)J
.registers 8
const-wide/16 v2, 0x1
const-wide/16 v0, 0x0
cmp-long v0, p0, v0
if-ltz v0, :cond_b
div-long v0, p0, p2
:goto_a
return-wide v0
:cond_b
add-long v0, p0, v2
div-long/2addr v0, p2
sub-long/2addr v0, v2
goto :goto_a
.end method
.method private static formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;
.registers 15
#calls: Lcom/ibm/icu/util/Calendar$PatternData;->make(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
move-result-object v3
const/4 v1, 0x0
const/4 v2, 0x0
if-ltz p3, :cond_57
if-ltz p2, :cond_57
#calls: Lcom/ibm/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;
invoke-static {v3, p2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v9
aget-object v9, v9, p3
aput-object v9, v7, v8
const/4 v8, 0x1
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v9
add-int/lit8 v10, p2, 0x4
aget-object v9, v9, v10
aput-object v9, v7, v8
invoke-static {v6, v7}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_4f
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
add-int/lit8 v7, p2, 0x4
aget-object v0, v6, v7
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
aget-object v5, v6, p3
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
add-int/lit8 v7, p2, 0x4
aget-object v6, v6, v7
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v7
aget-object v7, v7, p3
invoke-static {v6, v7, v0, v5}, Lcom/ibm/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_4f
:cond_4f
invoke-virtual {p0, v2, v1, p1}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v4
invoke-virtual {v4, p0}, Lcom/ibm/icu/text/DateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V
return-object v4
:cond_57
if-ltz p3, :cond_6c
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
aget-object v2, v6, p3
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_4f
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
aget-object v1, v6, p3
goto :goto_4f
:cond_6c
if-ltz p2, :cond_85
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->patterns:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$800(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
add-int/lit8 v7, p2, 0x4
aget-object v2, v6, v7
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_4f
#getter for: Lcom/ibm/icu/util/Calendar$PatternData;->overrides:[Ljava/lang/String;
invoke-static {v3}, Lcom/ibm/icu/util/Calendar$PatternData;->access$900(Lcom/ibm/icu/util/Calendar$PatternData;)[Ljava/lang/String;
move-result-object v6
add-int/lit8 v7, p2, 0x4
aget-object v1, v6, v7
goto :goto_4f
:cond_85
new-instance v6, Ljava/lang/IllegalArgumentException;
const-string v7, "No date or time style specified"
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
.end method
.method private getActualHelper(III)I
.registers 9
const/4 v4, 0x1
if-ne p2, p3, :cond_5
move v3, p2
:goto_4
return v3
:cond_5
if-le p3, p2, :cond_27
move v0, v4
:goto_8
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/Calendar;
invoke-virtual {v2, v4}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V
if-gez v0, :cond_2a
move v3, v4
:goto_14
invoke-virtual {v2, p1, v3}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V
invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v3
if-eq v3, p2, :cond_2c
const/4 v3, 0x4
if-eq p1, v3, :cond_2c
if-lez v0, :cond_2c
move v3, p2
goto :goto_4
:cond_27
const/4 v3, -0x1
move v0, v3
goto :goto_8
:cond_2a
const/4 v3, 0x0
goto :goto_14
:cond_2c
move v1, p2
:cond_2d
add-int/2addr p2, v0
invoke-virtual {v2, p1, v0}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v3
if-eq v3, p2, :cond_39
:goto_37
move v3, v1
goto :goto_4
:cond_39
move v1, p2
if-ne p2, p3, :cond_2d
goto :goto_37
.end method
.method public static getAvailableLocales()[Ljava/util/Locale;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {}, Lcom/ibm/icu/util/Calendar;->getShim()Lcom/ibm/icu/util/Calendar$CalendarShim;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalendarShim;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v0
goto :goto_a
.end method
.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
.registers 1
sget-object v0, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
if-nez v0, :cond_b
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {}, Lcom/ibm/icu/util/Calendar;->getShim()Lcom/ibm/icu/util/Calendar$CalendarShim;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar$CalendarShim;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
move-result-object v0
goto :goto_a
.end method
.method private static getCalendarType(Ljava/lang/String;)I
.registers 3
if-eqz p0, :cond_1b
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object p0
const/4 v0, 0x0
:goto_7
sget-object v1, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_1b
sget-object v1, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
move v1, v0
:goto_17
return v1
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1b
const/4 v1, -0x1
goto :goto_17
.end method
.method private static getCalendarTypeForLocale(Lcom/ibm/icu/util/ULocale;)I
.registers 15
const/4 v13, 0x0
const/4 v12, -0x1
const/4 v1, -0x1
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/ibm/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
move-result-object v3
const-string v9, "calendar"
invoke-virtual {v3, v9}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1b
invoke-static {v2}, Lcom/ibm/icu/util/Calendar;->getCalendarType(Ljava/lang/String;)I
move-result v1
if-eq v1, v12, :cond_1b
move v9, v1
:goto_1a
return v9
:cond_1b
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v9
if-nez v9, :cond_2d
invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
move-result-object v4
invoke-virtual {v4}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v8
:cond_2d
:try_start_2d
const-string v9, "com/ibm/icu/impl/data/icudt42b"
const-string v10, "supplementalData"
sget-object v11, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v9, v10, v11}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
const-string v9, "calendarPreferenceData"
invoke-virtual {v7, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_3c
.catch Ljava/util/MissingResourceException; {:try_start_2d .. :try_end_3c} :catch_59
move-result-object v0
const/4 v6, 0x0
:try_start_3e
invoke-virtual {v0, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_41
.catch Ljava/util/MissingResourceException; {:try_start_3e .. :try_end_41} :catch_4f
move-result-object v6
:goto_42
const/4 v9, 0x0
:try_start_43
invoke-virtual {v6, v9}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/ibm/icu/util/Calendar;->getCalendarType(Ljava/lang/String;)I
move-result v1
:goto_4b
if-ne v1, v12, :cond_57
move v9, v13
goto :goto_1a
:catch_4f
move-exception v5
const-string v9, "001"
invoke-virtual {v0, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_55
.catch Ljava/util/MissingResourceException; {:try_start_43 .. :try_end_55} :catch_59
move-result-object v6
goto :goto_42
:cond_57
move v9, v1
goto :goto_1a
:catch_59
move-exception v9
goto :goto_4b
.end method
.method public static getDateTimePattern(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
.registers 5
#calls: Lcom/ibm/icu/util/Calendar$PatternData;->make(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar$PatternData;->access$600(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar$PatternData;
move-result-object v0
#calls: Lcom/ibm/icu/util/Calendar$PatternData;->getDateTimePattern(I)Ljava/lang/String;
invoke-static {v0, p2}, Lcom/ibm/icu/util/Calendar$PatternData;->access$700(Lcom/ibm/icu/util/Calendar$PatternData;I)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static declared-synchronized getInstance()Lcom/ibm/icu/util/Calendar;
.registers 3
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_5
invoke-static {v1, v2}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_8
.catchall {:try_start_5 .. :try_end_8} :catchall_b
move-result-object v1
monitor-exit v0
return-object v1
:catchall_b
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getInstance(Lcom/ibm/icu/util/TimeZone;)Lcom/ibm/icu/util/Calendar;
.registers 3
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-static {p0, v1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_a
move-result-object v1
monitor-exit v0
return-object v1
:catchall_a
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getInstance(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 4
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
:try_start_3
invoke-static {p0, p1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_9
move-result-object v1
monitor-exit v0
return-object v1
:catchall_9
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getInstance(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)Lcom/ibm/icu/util/Calendar;
.registers 4
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
:try_start_3
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-static {p0, v1}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_d
move-result-object v1
monitor-exit v0
return-object v1
:catchall_d
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 3
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-static {v1, p0}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_a
move-result-object v1
monitor-exit v0
return-object v1
:catchall_a
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static declared-synchronized getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/Calendar;
.registers 4
const-class v0, Lcom/ibm/icu/util/Calendar;
monitor-enter v0
const/4 v1, 0x0
:try_start_4
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v2
invoke-static {v1, v2}, Lcom/ibm/icu/util/Calendar;->getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
:try_end_b
.catchall {:try_start_4 .. :try_end_b} :catchall_e
move-result-object v1
monitor-exit v0
return-object v1
:catchall_e
move-exception v1
monitor-exit v0
throw v1
.end method
.method private static getInstanceInternal(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
.registers 5
if-nez p1, :cond_6
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object p1
:cond_6
if-nez p0, :cond_c
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object p0
:cond_c
invoke-static {}, Lcom/ibm/icu/util/Calendar;->getShim()Lcom/ibm/icu/util/Calendar$CalendarShim;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/ibm/icu/util/Calendar$CalendarShim;->createInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
return-object v0
.end method
.method public static final getKeywordValuesForLocale(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Z)[Ljava/lang/String;
.registers 15
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v9
if-nez v9, :cond_12
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;
move-result-object v6
:cond_12
new-instance v8, Ljava/util/LinkedList;
invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V
const-string v9, "com/ibm/icu/impl/data/icudt42b"
const-string v10, "supplementalData"
sget-object v11, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;
invoke-static {v9, v10, v11}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
const-string v9, "calendarPreferenceData"
invoke-virtual {v7, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
const/4 v5, 0x0
:try_start_28
invoke-virtual {v0, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
:try_end_2b
.catch Ljava/util/MissingResourceException; {:try_start_28 .. :try_end_2b} :catch_34
move-result-object v5
:goto_2c
invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;
move-result-object v1
if-eqz p2, :cond_3c
move-object v9, v1
:goto_33
return-object v9
:catch_34
move-exception v4
const-string v9, "001"
invoke-virtual {v0, v9}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
goto :goto_2c
:cond_3c
const/4 v2, 0x0
:goto_3d
array-length v9, v1
if-ge v2, v9, :cond_48
aget-object v9, v1, v2
invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_3d
:cond_48
const/4 v2, 0x0
:goto_49
sget-object v9, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
array-length v9, v9
if-ge v2, v9, :cond_62
sget-object v9, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
aget-object v9, v9, v2
invoke-virtual {v8, v9}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_5f
sget-object v9, Lcom/ibm/icu/util/Calendar;->calTypes:[Ljava/lang/String;
aget-object v9, v9, v2
invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_5f
add-int/lit8 v2, v2, 0x1
goto :goto_49
:cond_62
invoke-virtual {v8}, Ljava/util/LinkedList;->size()I
move-result v9
new-array v9, v9, [Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
move-object v9, p0
goto :goto_33
.end method
.method private static getShim()Lcom/ibm/icu/util/Calendar$CalendarShim;
.registers 4
sget-object v2, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
if-nez v2, :cond_12
:try_start_4
const-string v2, "com.ibm.icu.util.CalendarServiceShim"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar$CalendarShim;
sput-object v0, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
:cond_12
:try_end_12
.catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_15
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_18
sget-object v2, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
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
.method protected static final gregorianMonthLength(II)I
.registers 4
sget-object v0, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I
aget-object v0, v0, p1
invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->isGregorianLeapYear(I)Z
move-result v1
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_b
aget v0, v0, v1
return v0
:cond_e
const/4 v1, 0x0
goto :goto_b
.end method
.method protected static final gregorianPreviousMonthLength(II)I
.registers 3
if-lez p1, :cond_a
const/4 v0, 0x1
sub-int v0, p1, v0
invoke-static {p0, v0}, Lcom/ibm/icu/util/Calendar;->gregorianMonthLength(II)I
move-result v0
:goto_9
return v0
:cond_a
const/16 v0, 0x1f
goto :goto_9
.end method
.method private initInternal()V
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleCreateFields()[I
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
if-eqz v2, :cond_18
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
const/16 v3, 0x16
if-lt v2, v3, :cond_18
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
const/16 v3, 0x20
if-le v2, v3, :cond_20
:cond_18
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "Invalid fields[]"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_20
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
new-array v2, v2, [I
iput-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
const v1, 0x80067
const/16 v0, 0x16
:goto_2c
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
if-ge v0, v2, :cond_37
const/4 v2, 0x1
shl-int/2addr v2, v0
or-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_37
iput v1, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I
return-void
.end method
.method protected static final isGregorianLeapYear(I)Z
.registers 2
rem-int/lit8 v0, p0, 0x4
if-nez v0, :cond_e
rem-int/lit8 v0, p0, 0x64
if-nez v0, :cond_c
rem-int/lit16 v0, p0, 0x190
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected static final julianDayToDayOfWeek(I)I
.registers 3
add-int/lit8 v1, p0, 0x2
rem-int/lit8 v0, v1, 0x7
const/4 v1, 0x1
if-ge v0, v1, :cond_9
add-int/lit8 v0, v0, 0x7
:cond_9
return v0
.end method
.method protected static final julianDayToMillis(I)J
.registers 5
const v0, 0x253d8c
sub-int v0, p0, v0
int-to-long v0, v0
const-wide/32 v2, 0x5265c00
mul-long/2addr v0, v2
return-wide v0
.end method
.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
if-nez p2, :cond_6
if-nez p3, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
if-nez p2, :cond_d
invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
:cond_d
if-nez p3, :cond_14
invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_5
:cond_14
invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
move-object v0, p2
goto :goto_5
:cond_1c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0, p2}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1, p3}, Lcom/ibm/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method protected static final millisToJulianDay(J)I
.registers 6
const-wide/32 v0, 0x253d8c
const-wide/32 v2, 0x5265c00
invoke-static {p0, p1, v2, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(JJ)J
move-result-wide v2
add-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->initInternal()V
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
const/4 v0, 0x2
iput v0, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I
return-void
.end method
.method static registerFactory(Lcom/ibm/icu/util/Calendar$CalendarFactory;)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "factory must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-static {}, Lcom/ibm/icu/util/Calendar;->getShim()Lcom/ibm/icu/util/Calendar$CalendarShim;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Calendar$CalendarShim;->registerFactory(Lcom/ibm/icu/util/Calendar$CalendarFactory;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private setWeekData(Lcom/ibm/icu/util/ULocale;)V
.registers 14
const/4 v4, 0x1
const/4 v3, 0x0
sget-object v1, Lcom/ibm/icu/util/Calendar;->cachedLocaleData:Ljava/util/Hashtable;
invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar$WeekData;
if-nez v0, :cond_45
new-instance v8, Lcom/ibm/icu/impl/CalendarData;
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;
move-result-object v1
invoke-direct {v8, p1, v1}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
const-string v1, "DateTimeElements"
invoke-virtual {v8, v1}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I
move-result-object v9
const-string v1, "weekend"
invoke-virtual {v8, v1}, Lcom/ibm/icu/impl/CalendarData;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I
move-result-object v11
new-instance v0, Lcom/ibm/icu/util/Calendar$WeekData;
aget v1, v9, v3
aget v2, v9, v4
aget v3, v11, v3
aget v4, v11, v4
const/4 v5, 0x2
aget v5, v11, v5
const/4 v6, 0x3
aget v6, v11, v6
invoke-virtual {v8}, Lcom/ibm/icu/impl/CalendarData;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v7
invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/util/Calendar$WeekData;-><init>(IIIIIILcom/ibm/icu/util/ULocale;)V
sget-object v1, Lcom/ibm/icu/util/Calendar;->cachedLocaleData:Ljava/util/Hashtable;
invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_45
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->firstDayOfWeek:I
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->setFirstDayOfWeek(I)V
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnset:I
iput v1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendOnsetMillis:I
iput v1, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCease:I
iput v1, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
iget v1, v0, Lcom/ibm/icu/util/Calendar$WeekData;->weekendCeaseMillis:I
iput v1, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I
iget-object v10, v0, Lcom/ibm/icu/util/Calendar$WeekData;->actualLocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {p0, v10, v10}, Lcom/ibm/icu/util/Calendar;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method static unregister(Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "registryKey must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget-object v0, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
sget-object v0, Lcom/ibm/icu/util/Calendar;->shim:Lcom/ibm/icu/util/Calendar$CalendarShim;
invoke-virtual {v0, p0}, Lcom/ibm/icu/util/Calendar$CalendarShim;->unregister(Ljava/lang/Object;)Z
move-result v0
goto :goto_f
.end method
.method private updateTime()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeTime()V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z
move-result v0
if-nez v0, :cond_e
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
if-nez v0, :cond_10
:cond_e
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
:cond_10
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
return-void
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
if-nez v0, :cond_7
:try_start_4
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V
:cond_7
:goto_7
:try_end_7
.catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_b
invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
return-void
:catch_b
move-exception v0
goto :goto_7
.end method
.method public add(II)V
.registers 15
const/16 v9, 0x10
const/16 v11, 0xb
if-nez p2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
int-to-long v0, p2
const/4 v4, 0x1
packed-switch p1, :pswitch_data_9a
:pswitch_c
new-instance v7, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Calendar.add("
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ") not supported"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v7
:pswitch_2f
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v7
add-int/2addr v7, p2
invoke-virtual {p0, p1, v7}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v7, 0x0
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->pinField(I)V
goto :goto_6
:pswitch_3c
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v7
add-int/2addr v7, p2
invoke-virtual {p0, p1, v7}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v7, 0x5
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->pinField(I)V
goto :goto_6
:pswitch_49
const-wide/32 v7, 0x240c8400
mul-long/2addr v0, v7
:goto_4d
const/4 v2, 0x0
const/4 v3, 0x0
if-eqz v4, :cond_59
invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v2
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v3
:cond_59
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v7
add-long/2addr v7, v0
invoke-virtual {p0, v7, v8}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
if-eqz v4, :cond_6
invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v7
sub-int/2addr v2, v7
if-eqz v2, :cond_6
iget-wide v5, p0, Lcom/ibm/icu/util/Calendar;->time:J
iget-wide v7, p0, Lcom/ibm/icu/util/Calendar;->time:J
int-to-long v9, v2
add-long/2addr v7, v9
invoke-virtual {p0, v7, v8}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v7
if-eq v7, v3, :cond_6
invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto :goto_6
:pswitch_7d
const-wide/32 v7, 0x2932e00
mul-long/2addr v0, v7
goto :goto_4d
:pswitch_82
const-wide/32 v7, 0x5265c00
mul-long/2addr v0, v7
goto :goto_4d
:pswitch_87
const-wide/32 v7, 0x36ee80
mul-long/2addr v0, v7
const/4 v4, 0x0
goto :goto_4d
:pswitch_8d
const-wide/32 v7, 0xea60
mul-long/2addr v0, v7
const/4 v4, 0x0
goto :goto_4d
:pswitch_93
const-wide/16 v7, 0x3e8
mul-long/2addr v0, v7
const/4 v4, 0x0
goto :goto_4d
:pswitch_98
const/4 v4, 0x0
goto :goto_4d
:pswitch_data_9a
.packed-switch 0x0
:pswitch_2f
:pswitch_3c
:pswitch_3c
:pswitch_49
:pswitch_49
:pswitch_82
:pswitch_82
:pswitch_82
:pswitch_49
:pswitch_7d
:pswitch_87
:pswitch_87
:pswitch_8d
:pswitch_93
:pswitch_98
:pswitch_c
:pswitch_c
:pswitch_3c
:pswitch_82
:pswitch_3c
:pswitch_82
:pswitch_98
.end packed-switch
.end method
.method public after(Ljava/lang/Object;)Z
.registers 6
invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar;->compare(Ljava/lang/Object;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public before(Ljava/lang/Object;)Z
.registers 6
invoke-direct {p0, p1}, Lcom/ibm/icu/util/Calendar;->compare(Ljava/lang/Object;)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final clear()V
.registers 5
const/4 v3, 0x0
const/4 v0, 0x0
:goto_2
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v1, v1
if-ge v0, v1, :cond_12
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aput v3, v2, v0
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_12
iput-boolean v3, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
iput-boolean v3, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
iput-boolean v3, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
iput-boolean v3, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
return-void
.end method
.method public final clear(I)V
.registers 4
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
if-eqz v0, :cond_8
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V
:cond_8
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aput v1, v0, p1
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aput v1, v0, p1
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 8
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/Calendar;
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
new-array v2, v2, [I
iput-object v2, v1, Lcom/ibm/icu/util/Calendar;->fields:[I
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
new-array v2, v2, [I
iput-object v2, v1, Lcom/ibm/icu/util/Calendar;->stamp:[I
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v3, 0x0
iget-object v4, v1, Lcom/ibm/icu/util/Calendar;->fields:[I
const/4 v5, 0x0
iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v6, v6
invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
const/4 v3, 0x0
iget-object v4, v1, Lcom/ibm/icu/util/Calendar;->stamp:[I
const/4 v5, 0x0
iget-object v6, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v6, v6
invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/ibm/icu/util/TimeZone;
iput-object p0, v1, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
:try_end_36
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_36} :catch_37
return-object v1
:catch_37
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/IllegalStateException;
invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
throw v2
.end method
.method public compareTo(Lcom/ibm/icu/util/Calendar;)I
.registers 10
const-wide/16 v6, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v4
sub-long v0, v2, v4
cmp-long v2, v0, v6
if-gez v2, :cond_12
const/4 v2, -0x1
:goto_11
return v2
:cond_12
cmp-long v2, v0, v6
if-lez v2, :cond_18
const/4 v2, 0x1
goto :goto_11
:cond_18
const/4 v2, 0x0
goto :goto_11
.end method
.method public compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/ibm/icu/util/Calendar;
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->compareTo(Lcom/ibm/icu/util/Calendar;)I
move-result v0
return v0
.end method
.method protected complete()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V
:cond_8
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
iput-boolean v1, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
:cond_13
return-void
.end method
.method protected computeFields()V
.registers 13
const/4 v8, 0x2
new-array v7, v8, [I
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v8
iget-wide v9, p0, Lcom/ibm/icu/util/Calendar;->time:J
const/4 v11, 0x0
invoke-virtual {v8, v9, v10, v11, v7}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
iget-wide v8, p0, Lcom/ibm/icu/util/Calendar;->time:J
const/4 v10, 0x0
aget v10, v7, v10
int-to-long v10, v10
add-long/2addr v8, v10
const/4 v10, 0x1
aget v10, v7, v10
int-to-long v10, v10
add-long v3, v8, v10
iget v5, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I
const/4 v2, 0x0
:goto_1d
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v8, v8
if-ge v2, v8, :cond_36
and-int/lit8 v8, v5, 0x1
if-nez v8, :cond_30
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
const/4 v9, 0x1
aput v9, v8, v2
:goto_2b
shr-int/lit8 v5, v5, 0x1
add-int/lit8 v2, v2, 0x1
goto :goto_1d
:cond_30
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
const/4 v9, 0x0
aput v9, v8, v2
goto :goto_2b
:cond_36
const-wide/32 v8, 0x5265c00
invoke-static {v3, v4, v8, v9}, Lcom/ibm/icu/util/Calendar;->floorDivide(JJ)J
move-result-wide v0
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x14
long-to-int v10, v0
const v11, 0x253d8c
add-int/2addr v10, v11
aput v10, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x14
aget v8, v8, v9
invoke-direct {p0, v8}, Lcom/ibm/icu/util/Calendar;->computeGregorianAndDOWFields(I)V
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x14
aget v8, v8, v9
invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->handleComputeFields(I)V
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->computeWeekFields()V
const-wide/32 v8, 0x5265c00
mul-long/2addr v8, v0
sub-long v8, v3, v8
long-to-int v6, v8
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x15
aput v6, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xe
rem-int/lit16 v10, v6, 0x3e8
aput v10, v8, v9
div-int/lit16 v6, v6, 0x3e8
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xd
rem-int/lit8 v10, v6, 0x3c
aput v10, v8, v9
div-int/lit8 v6, v6, 0x3c
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xc
rem-int/lit8 v10, v6, 0x3c
aput v10, v8, v9
div-int/lit8 v6, v6, 0x3c
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xb
aput v6, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x9
div-int/lit8 v10, v6, 0xc
aput v10, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xa
rem-int/lit8 v10, v6, 0xc
aput v10, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0xf
const/4 v10, 0x0
aget v10, v7, v10
aput v10, v8, v9
iget-object v8, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
const/16 v9, 0x10
const/4 v10, 0x1
aget v10, v7, v10
aput v10, v8, v9
return-void
.end method
.method protected final computeGregorianFields(I)V
.registers 22
const v18, 0x1a4452
sub-int v18, p1, v18
move/from16 v0, v18
int-to-long v0, v0
move-wide v7, v0
const/16 v18, 0x1
move/from16 v0, v18
new-array v0, v0, [I
move-object/from16 v16, v0
const v18, 0x23ab1
move-wide v0, v7
move/from16 v2, v18
move-object/from16 v3, v16
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->floorDivide(JI[I)I
move-result v15
const/16 v18, 0x0
aget v18, v16, v18
const v19, 0x8eac
move/from16 v0, v18
move/from16 v1, v19
move-object/from16 v2, v16
invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I
move-result v13
const/16 v18, 0x0
aget v18, v16, v18
const/16 v19, 0x5b5
move/from16 v0, v18
move/from16 v1, v19
move-object/from16 v2, v16
invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I
move-result v14
const/16 v18, 0x0
aget v18, v16, v18
const/16 v19, 0x16d
move/from16 v0, v18
move/from16 v1, v19
move-object/from16 v2, v16
invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I
move-result v12
move v0, v15
mul-int/lit16 v0, v0, 0x190
move/from16 v18, v0
mul-int/lit8 v19, v13, 0x64
add-int v18, v18, v19
mul-int/lit8 v19, v14, 0x4
add-int v18, v18, v19
add-int v17, v18, v12
const/16 v18, 0x0
aget v6, v16, v18
const/16 v18, 0x4
move v0, v13
move/from16 v1, v18
if-eq v0, v1, :cond_6f
const/16 v18, 0x4
move v0, v12
move/from16 v1, v18
if-ne v0, v1, :cond_c6
:cond_6f
const/16 v6, 0x16d
:goto_71
and-int/lit8 v18, v17, 0x3
if-nez v18, :cond_c9
rem-int/lit8 v18, v17, 0x64
if-nez v18, :cond_81
move/from16 v0, v17
rem-int/lit16 v0, v0, 0x190
move/from16 v18, v0
if-nez v18, :cond_c9
:cond_81
const/16 v18, 0x1
move/from16 v9, v18
:goto_85
const/4 v4, 0x0
if-eqz v9, :cond_ce
const/16 v18, 0x3c
move/from16 v10, v18
:goto_8c
if-lt v6, v10, :cond_94
if-eqz v9, :cond_d3
const/16 v18, 0x1
move/from16 v4, v18
:cond_94
:goto_94
add-int v18, v6, v4
mul-int/lit8 v18, v18, 0xc
add-int/lit8 v18, v18, 0x6
move/from16 v0, v18
div-int/lit16 v0, v0, 0x16f
move v11, v0
sget-object v18, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I
aget-object v18, v18, v11
if-eqz v9, :cond_d8
const/16 v19, 0x3
:goto_a7
aget v18, v18, v19
sub-int v18, v6, v18
add-int/lit8 v5, v18, 0x1
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/util/Calendar;->gregorianYear:I
move v0, v11
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I
move v0, v5
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I
add-int/lit8 v18, v6, 0x1
move/from16 v0, v18
move-object/from16 v1, p0
iput v0, v1, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I
return-void
:cond_c6
add-int/lit8 v17, v17, 0x1
goto :goto_71
:cond_c9
const/16 v18, 0x0
move/from16 v9, v18
goto :goto_85
:cond_ce
const/16 v18, 0x3b
move/from16 v10, v18
goto :goto_8c
:cond_d3
const/16 v18, 0x2
move/from16 v4, v18
goto :goto_94
:cond_d8
const/16 v19, 0x2
goto :goto_a7
.end method
.method protected computeGregorianMonthStart(II)I
.registers 10
const/4 v5, 0x0
const/4 v6, 0x1
if-ltz p2, :cond_8
const/16 v4, 0xb
if-le p2, v4, :cond_13
:cond_8
new-array v2, v6, [I
const/16 v4, 0xc
invoke-static {p2, v4, v2}, Lcom/ibm/icu/util/Calendar;->floorDivide(II[I)I
move-result v4
add-int/2addr p1, v4
aget p2, v2, v5
:cond_13
rem-int/lit8 v4, p1, 0x4
if-nez v4, :cond_4b
rem-int/lit8 v4, p1, 0x64
if-nez v4, :cond_1f
rem-int/lit16 v4, p1, 0x190
if-nez v4, :cond_4b
:cond_1f
move v0, v6
:goto_20
sub-int v3, p1, v6
mul-int/lit16 v4, v3, 0x16d
const/4 v5, 0x4
invoke-static {v3, v5}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I
move-result v5
add-int/2addr v4, v5
const/16 v5, 0x64
invoke-static {v3, v5}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I
move-result v5
sub-int/2addr v4, v5
const/16 v5, 0x190
invoke-static {v3, v5}, Lcom/ibm/icu/util/Calendar;->floorDivide(II)I
move-result v5
add-int/2addr v4, v5
const v5, 0x1a4452
add-int/2addr v4, v5
sub-int v1, v4, v6
if-eqz p2, :cond_4a
sget-object v4, Lcom/ibm/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I
aget-object v4, v4, p2
if-eqz v0, :cond_4d
const/4 v5, 0x3
:goto_47
aget v4, v4, v5
add-int/2addr v1, v4
:cond_4a
return v1
:cond_4b
move v0, v5
goto :goto_20
:cond_4d
const/4 v5, 0x2
goto :goto_47
.end method
.method protected computeJulianDay()I
.registers 7
const/4 v5, 0x0
const/16 v4, 0x14
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v2, v2, v4
const/4 v3, 0x2
if-lt v2, v3, :cond_23
const/16 v2, 0x8
invoke-virtual {p0, v5, v2, v5}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I
move-result v1
const/16 v2, 0x11
const/16 v3, 0x13
invoke-virtual {p0, v2, v3, v1}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I
move-result v1
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v2, v2, v4
if-gt v1, v2, :cond_23
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v2
:goto_22
return v2
:cond_23
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFieldResolutionTable()[[[I
move-result-object v2
invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I
move-result v0
if-gez v0, :cond_2e
const/4 v0, 0x5
:cond_2e
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I
move-result v2
goto :goto_22
.end method
.method protected computeMillisInDay()I
.registers 10
const/16 v8, 0xb
const/16 v7, 0xa
const/16 v6, 0x9
const/4 v3, 0x0
iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v1, v4, v8
iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v4, v4, v7
iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v5, v5, v6
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v2
if-le v2, v1, :cond_3f
move v0, v2
:goto_1a
if-eqz v0, :cond_23
if-ne v0, v1, :cond_41
invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
add-int/2addr v3, v4
:goto_23
:cond_23
mul-int/lit8 v3, v3, 0x3c
const/16 v4, 0xc
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
add-int/2addr v3, v4
mul-int/lit8 v3, v3, 0x3c
const/16 v4, 0xd
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
add-int/2addr v3, v4
mul-int/lit16 v3, v3, 0x3e8
const/16 v4, 0xe
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
add-int/2addr v3, v4
return v3
:cond_3f
move v0, v1
goto :goto_1a
:cond_41
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
add-int/2addr v3, v4
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
mul-int/lit8 v4, v4, 0xc
add-int/2addr v3, v4
goto :goto_23
.end method
.method protected computeTime()V
.registers 12
const/16 v10, 0x10
const/16 v9, 0xf
const/16 v8, 0x15
const/4 v7, 0x2
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z
move-result v4
if-nez v4, :cond_10
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->validateFields()V
:cond_10
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeJulianDay()I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/util/Calendar;->julianDayToMillis(I)J
move-result-wide v1
iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v4, v4, v8
if-lt v4, v7, :cond_4c
const/16 v4, 0x9
const/16 v5, 0xe
const/4 v6, 0x0
invoke-virtual {p0, v4, v5, v6}, Lcom/ibm/icu/util/Calendar;->newestStamp(III)I
move-result v4
iget-object v5, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v5, v5, v8
if-gt v4, v5, :cond_4c
invoke-virtual {p0, v8}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v3
:goto_31
iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v4, v4, v9
if-ge v4, v7, :cond_3d
iget-object v4, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v4, v4, v10
if-lt v4, v7, :cond_51
:cond_3d
invoke-virtual {p0, v9}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
invoke-virtual {p0, v10}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v5
add-int/2addr v4, v5
sub-int/2addr v3, v4
:goto_47
int-to-long v4, v3
add-long/2addr v4, v1
iput-wide v4, p0, Lcom/ibm/icu/util/Calendar;->time:J
return-void
:cond_4c
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeMillisInDay()I
move-result v3
goto :goto_31
:cond_51
invoke-virtual {p0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar;->computeZoneOffset(JI)I
move-result v4
sub-int/2addr v3, v4
goto :goto_47
.end method
.method protected computeZoneOffset(JI)I
.registers 9
const/4 v4, 0x1
const/4 v1, 0x2
new-array v0, v1, [I
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
int-to-long v2, p3
add-long/2addr v2, p1
invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V
const/4 v1, 0x0
aget v1, v0, v1
aget v2, v0, v4
add-int/2addr v1, v2
return v1
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
if-ne p0, p1, :cond_6
move v2, v7
:goto_5
return v2
:cond_6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_12
move v2, v6
goto :goto_5
:cond_12
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/Calendar;
move-object v1, v0
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
move-result v2
if-eqz v2, :cond_2e
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
move-result-object v4
invoke-virtual {v4}, Ljava/util/Date;->getTime()J
move-result-wide v4
cmp-long v2, v2, v4
if-nez v2, :cond_2e
move v2, v7
goto :goto_5
:cond_2e
move v2, v6
goto :goto_5
.end method
.method public fieldDifference(Ljava/util/Date;I)I
.registers 14
const/4 v10, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v4
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v7
cmp-long v9, v4, v7
if-gez v9, :cond_4d
const/4 v0, 0x1
:cond_f
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
cmp-long v9, v2, v7
if-nez v9, :cond_1f
move v9, v0
:goto_1e
return v9
:cond_1f
cmp-long v9, v2, v7
if-lez v9, :cond_3b
:goto_23
sub-int v9, v0, v1
if-le v9, v10, :cond_90
add-int v9, v1, v0
div-int/lit8 v6, v9, 0x2
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, p2, v6}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
cmp-long v9, v2, v7
if-nez v9, :cond_45
move v9, v6
goto :goto_1e
:cond_3b
shl-int/lit8 v0, v0, 0x1
if-gez v0, :cond_f
new-instance v9, Ljava/lang/RuntimeException;
invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V
throw v9
:cond_45
cmp-long v9, v2, v7
if-lez v9, :cond_4b
move v0, v6
goto :goto_23
:cond_4b
move v1, v6
goto :goto_23
:cond_4d
cmp-long v9, v4, v7
if-lez v9, :cond_90
const/4 v0, -0x1
:cond_52
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, p2, v0}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
cmp-long v9, v2, v7
if-nez v9, :cond_62
move v9, v0
goto :goto_1e
:cond_62
cmp-long v9, v2, v7
if-gez v9, :cond_7e
:goto_66
sub-int v9, v1, v0
if-le v9, v10, :cond_90
add-int v9, v1, v0
div-int/lit8 v6, v9, 0x2
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, p2, v6}, Lcom/ibm/icu/util/Calendar;->add(II)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v2
cmp-long v9, v2, v7
if-nez v9, :cond_88
move v9, v6
goto :goto_1e
:cond_7e
shl-int/lit8 v0, v0, 0x1
if-nez v0, :cond_52
new-instance v9, Ljava/lang/RuntimeException;
invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V
throw v9
:cond_88
cmp-long v9, v2, v7
if-gez v9, :cond_8e
move v0, v6
goto :goto_66
:cond_8e
move v1, v6
goto :goto_66
:cond_90
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
invoke-virtual {p0, p2, v1}, Lcom/ibm/icu/util/Calendar;->add(II)V
move v9, v1
goto :goto_1e
.end method
.method protected fieldName(I)Ljava/lang/String;
.registers 5
:try_start_0
sget-object v1, Lcom/ibm/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;
aget-object v1, v1, p1
:try_end_4
.catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5
:goto_4
return-object v1
:catch_5
move-exception v1
move-object v0, v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Field "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_4
.end method
.method public final get(I)I
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->complete()V
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v0, v0, p1
return v0
.end method
.method public getActualMaximum(I)I
.registers 6
const/16 v3, 0x13
const/4 v2, 0x0
packed-switch p1, :pswitch_data_42
:pswitch_6
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getLeastMaximum(I)I
move-result v2
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v3
invoke-direct {p0, p1, v2, v3}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I
move-result v1
:goto_12
return v1
:pswitch_13
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar;
invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v2
const/4 v3, 0x2
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I
move-result v1
goto :goto_12
:pswitch_2a
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/util/Calendar;
invoke-virtual {v0, p1, v2}, Lcom/ibm/icu/util/Calendar;->prepareGetActual(IZ)V
invoke-virtual {v0, v3}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v2
invoke-virtual {p0, v2}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I
move-result v1
goto :goto_12
:pswitch_3c
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v1
goto :goto_12
nop
:pswitch_data_42
.packed-switch 0x0
:pswitch_3c
:pswitch_6
:pswitch_6
:pswitch_6
:pswitch_6
:pswitch_13
:pswitch_2a
:pswitch_3c
:pswitch_6
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_3c
:pswitch_6
:pswitch_3c
:pswitch_6
:pswitch_3c
:pswitch_3c
.end packed-switch
.end method
.method public getActualMinimum(I)I
.registers 5
packed-switch p1, :pswitch_data_16
:pswitch_3
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I
move-result v1
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I
move-result v2
invoke-direct {p0, p1, v1, v2}, Lcom/ibm/icu/util/Calendar;->getActualHelper(III)I
move-result v0
:goto_f
return v0
:pswitch_10
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I
move-result v0
goto :goto_f
nop
:pswitch_data_16
.packed-switch 0x7
:pswitch_10
:pswitch_3
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_10
:pswitch_3
:pswitch_10
:pswitch_3
:pswitch_10
:pswitch_10
.end packed-switch
.end method
.method public getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
.registers 5
invoke-static {p0, p3, p1, p2}, Lcom/ibm/icu/util/Calendar;->formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method public getDateTimeFormat(IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
.registers 5
invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/util/Calendar;->formatHelper(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method public getDayOfWeekType(I)I
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
if-lt p1, v3, :cond_7
const/4 v0, 0x7
if-le p1, v0, :cond_f
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid day of week"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
iget v1, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
if-ge v0, v1, :cond_1f
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
if-lt p1, v0, :cond_1d
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
if-le p1, v0, :cond_29
:cond_1d
move v0, v2
:goto_1e
return v0
:cond_1f
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
if-le p1, v0, :cond_29
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
if-ge p1, v0, :cond_29
move v0, v2
goto :goto_1e
:cond_29
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
if-ne p1, v0, :cond_35
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I
if-nez v0, :cond_33
move v0, v3
goto :goto_1e
:cond_33
const/4 v0, 0x2
goto :goto_1e
:cond_35
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
if-ne p1, v0, :cond_41
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I
if-nez v0, :cond_3f
move v0, v2
goto :goto_1e
:cond_3f
const/4 v0, 0x3
goto :goto_1e
:cond_41
move v0, v3
goto :goto_1e
.end method
.method protected getDefaultDayInMonth(II)I
.registers 4
const/4 v0, 0x1
return v0
.end method
.method protected getDefaultMonthInYear(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getFieldCount()I
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v0, v0
return v0
.end method
.method protected getFieldResolutionTable()[[[I
.registers 2
sget-object v0, Lcom/ibm/icu/util/Calendar;->DATE_PRECEDENCE:[[[I
return-object v0
.end method
.method public getFirstDayOfWeek()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
return v0
.end method
.method public final getGreatestMinimum(I)I
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I
move-result v0
return v0
.end method
.method protected final getGregorianDayOfMonth()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfMonth:I
return v0
.end method
.method protected final getGregorianDayOfYear()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianDayOfYear:I
return v0
.end method
.method protected final getGregorianMonth()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianMonth:I
return v0
.end method
.method protected final getGregorianYear()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->gregorianYear:I
return v0
.end method
.method public final getLeastMaximum(I)I
.registers 3
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I
move-result v0
return v0
.end method
.method protected getLimit(II)I
.registers 9
const/4 v5, 0x7
const/4 v4, 0x1
packed-switch p1, :pswitch_data_3e
:pswitch_5
invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I
move-result v3
:goto_9
return v3
:pswitch_a
sget-object v3, Lcom/ibm/icu/util/Calendar;->LIMITS:[[I
aget-object v3, v3, p1
aget v3, v3, p2
goto :goto_9
:pswitch_11
if-nez p2, :cond_1f
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v3
if-ne v3, v4, :cond_1c
move v1, v4
:goto_1a
move v3, v1
goto :goto_9
:cond_1c
const/4 v3, 0x0
move v1, v3
goto :goto_1a
:cond_1f
if-ne p2, v4, :cond_23
const/4 v1, 0x1
goto :goto_1a
:cond_23
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v2
const/4 v3, 0x5
invoke-virtual {p0, v3, p2}, Lcom/ibm/icu/util/Calendar;->handleGetLimit(II)I
move-result v0
const/4 v3, 0x2
if-ne p2, v3, :cond_35
sub-int v3, v5, v2
add-int/2addr v3, v0
div-int/lit8 v1, v3, 0x7
goto :goto_1a
:cond_35
add-int/lit8 v3, v0, 0x6
sub-int v4, v5, v2
add-int/2addr v3, v4
div-int/lit8 v1, v3, 0x7
goto :goto_1a
nop
:pswitch_data_3e
.packed-switch 0x4
:pswitch_11
:pswitch_5
:pswitch_5
:pswitch_a
:pswitch_5
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_a
:pswitch_5
:pswitch_a
:pswitch_5
:pswitch_a
:pswitch_a
.end packed-switch
.end method
.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
.registers 3
sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;
goto :goto_6
.end method
.method public final getMaximum(I)I
.registers 3
const/4 v0, 0x3
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I
move-result v0
return v0
.end method
.method public getMinimalDaysInFirstWeek()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I
return v0
.end method
.method public final getMinimum(I)I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->getLimit(II)I
move-result v0
return v0
.end method
.method protected final getStamp(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v0, v0, p1
return v0
.end method
.method public final getTime()Ljava/util/Date;
.registers 4
new-instance v0, Ljava/util/Date;
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
return-object v0
.end method
.method public getTimeInMillis()J
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lcom/ibm/icu/util/Calendar;->updateTime()V
:cond_7
iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J
return-wide v0
.end method
.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
const-string v0, "gregorian"
return-object v0
.end method
.method public getWeekendTransition(I)I
.registers 4
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnset:I
if-ne p1, v0, :cond_7
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendOnsetMillis:I
:goto_6
return v0
:cond_7
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCease:I
if-ne p1, v0, :cond_e
iget v0, p0, Lcom/ibm/icu/util/Calendar;->weekendCeaseMillis:I
goto :goto_6
:cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Not weekend transition day"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected handleComputeFields(I)V
.registers 7
const/4 v4, 0x1
const/4 v2, 0x2
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianMonth()I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
const/4 v2, 0x5
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfMonth()I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
const/4 v2, 0x6
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianDayOfYear()I
move-result v3
invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getGregorianYear()I
move-result v1
const/16 v2, 0x13
invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
const/4 v0, 0x1
if-ge v1, v4, :cond_28
const/4 v0, 0x0
sub-int v1, v4, v1
:cond_28
const/4 v2, 0x0
invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
invoke-virtual {p0, v4, v1}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
return-void
.end method
.method protected handleComputeJulianDay(I)I
.registers 15
const/4 v11, 0x5
if-eq p1, v11, :cond_a
const/4 v11, 0x4
if-eq p1, v11, :cond_a
const/16 v11, 0x8
if-ne p1, v11, :cond_43
:cond_a
const/4 v11, 0x1
move v9, v11
:goto_c
const/4 v11, 0x3
if-ne p1, v11, :cond_46
const/16 v11, 0x11
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I
move-result v12
invoke-virtual {p0, v11, v12}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I
move-result v10
:goto_19
const/16 v11, 0x13
invoke-virtual {p0, v11, v10}, Lcom/ibm/icu/util/Calendar;->internalSet(II)V
if-eqz v9, :cond_4b
const/4 v11, 0x2
invoke-virtual {p0, v10}, Lcom/ibm/icu/util/Calendar;->getDefaultMonthInYear(I)I
move-result v12
invoke-virtual {p0, v11, v12}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I
move-result v11
move v7, v11
:goto_2a
invoke-virtual {p0, v10, v7, v9}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I
move-result v5
const/4 v11, 0x5
if-ne p1, v11, :cond_54
const/4 v11, 0x5
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z
move-result v11
if-eqz v11, :cond_4e
const/4 v11, 0x5
invoke-virtual {p0, v10, v7}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I
move-result v12
invoke-virtual {p0, v11, v12}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I
move-result v11
add-int/2addr v11, v5
:goto_42
return v11
:cond_43
const/4 v11, 0x0
move v9, v11
goto :goto_c
:cond_46
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I
move-result v10
goto :goto_19
:cond_4b
const/4 v11, 0x0
move v7, v11
goto :goto_2a
:cond_4e
invoke-virtual {p0, v10, v7}, Lcom/ibm/icu/util/Calendar;->getDefaultDayInMonth(II)I
move-result v11
add-int/2addr v11, v5
goto :goto_42
:cond_54
const/4 v11, 0x6
if-ne p1, v11, :cond_5e
const/4 v11, 0x6
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v11
add-int/2addr v11, v5
goto :goto_42
:cond_5e
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v4
add-int/lit8 v11, v5, 0x1
invoke-static {v11}, Lcom/ibm/icu/util/Calendar;->julianDayToDayOfWeek(I)I
move-result v11
sub-int v3, v11, v4
if-gez v3, :cond_6e
add-int/lit8 v3, v3, 0x7
:cond_6e
const/4 v2, 0x0
sget-object v11, Lcom/ibm/icu/util/Calendar;->DOW_PRECEDENCE:[[[I
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->resolveFields([[[I)I
move-result v11
sparse-switch v11, :sswitch_data_d8
:goto_78
rem-int/lit8 v2, v2, 0x7
if-gez v2, :cond_7e
add-int/lit8 v2, v2, 0x7
:cond_7e
const/4 v11, 0x1
sub-int/2addr v11, v3
add-int v0, v11, v2
const/16 v11, 0x8
if-ne p1, v11, :cond_c4
const/4 v11, 0x1
if-ge v0, v11, :cond_8b
add-int/lit8 v0, v0, 0x7
:cond_8b
const/16 v11, 0x8
const/4 v12, 0x1
invoke-virtual {p0, v11, v12}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I
move-result v1
if-ltz v1, :cond_af
const/4 v11, 0x1
sub-int v11, v1, v11
mul-int/lit8 v11, v11, 0x7
add-int/2addr v0, v11
:goto_9a
add-int v11, v5, v0
goto :goto_42
:sswitch_9d
const/4 v11, 0x7
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v11
sub-int v2, v11, v4
goto :goto_78
:sswitch_a5
const/16 v11, 0x12
invoke-virtual {p0, v11}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v11
const/4 v12, 0x1
sub-int v2, v11, v12
goto :goto_78
:cond_af
const/4 v11, 0x2
const/4 v12, 0x0
invoke-virtual {p0, v11, v12}, Lcom/ibm/icu/util/Calendar;->internalGet(II)I
move-result v6
invoke-virtual {p0, v10, v6}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I
move-result v8
sub-int v11, v8, v0
div-int/lit8 v11, v11, 0x7
add-int/2addr v11, v1
add-int/lit8 v11, v11, 0x1
mul-int/lit8 v11, v11, 0x7
add-int/2addr v0, v11
goto :goto_9a
:cond_c4
const/4 v11, 0x7
sub-int/2addr v11, v3
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v12
if-ge v11, v12, :cond_ce
add-int/lit8 v0, v0, 0x7
:cond_ce
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v11
const/4 v12, 0x1
sub-int/2addr v11, v12
mul-int/lit8 v11, v11, 0x7
add-int/2addr v0, v11
goto :goto_9a
:sswitch_data_d8
.sparse-switch
0x7 -> :sswitch_9d
0x12 -> :sswitch_a5
.end sparse-switch
.end method
.method protected abstract handleComputeMonthStart(IIZ)I
.end method
.method protected handleCreateFields()[I
.registers 2
const/16 v0, 0x16
new-array v0, v0, [I
return-object v0
.end method
.method protected handleGetDateFormat(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
.registers 6
new-instance v0, Lcom/ibm/icu/util/Calendar$FormatConfiguration;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;-><init>(Lcom/ibm/icu/util/Calendar$1;)V
#setter for: Lcom/ibm/icu/util/Calendar$FormatConfiguration;->pattern:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$102(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
#setter for: Lcom/ibm/icu/util/Calendar$FormatConfiguration;->override:Ljava/lang/String;
invoke-static {v0, p2}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$202(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;
new-instance v1, Lcom/ibm/icu/text/DateFormatSymbols;
invoke-direct {v1, p0, p3}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V
#setter for: Lcom/ibm/icu/util/Calendar$FormatConfiguration;->formatData:Lcom/ibm/icu/text/DateFormatSymbols;
invoke-static {v0, v1}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$302(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/text/DateFormatSymbols;)Lcom/ibm/icu/text/DateFormatSymbols;
#setter for: Lcom/ibm/icu/util/Calendar$FormatConfiguration;->loc:Lcom/ibm/icu/util/ULocale;
invoke-static {v0, p3}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$402(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
#setter for: Lcom/ibm/icu/util/Calendar$FormatConfiguration;->cal:Lcom/ibm/icu/util/Calendar;
invoke-static {v0, p0}, Lcom/ibm/icu/util/Calendar$FormatConfiguration;->access$502(Lcom/ibm/icu/util/Calendar$FormatConfiguration;Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/util/Calendar;
invoke-static {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->getInstance(Lcom/ibm/icu/util/Calendar$FormatConfiguration;)Lcom/ibm/icu/text/SimpleDateFormat;
move-result-object v1
return-object v1
.end method
.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
.registers 5
invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method protected handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
.registers 5
const/4 v0, 0x0
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method protected abstract handleGetExtendedYear()I
.end method
.method protected abstract handleGetLimit(II)I
.end method
.method protected handleGetMonthLength(II)I
.registers 5
const/4 v1, 0x1
add-int/lit8 v0, p2, 0x1
invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I
move-result v0
invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method protected handleGetYearLength(I)I
.registers 4
const/4 v1, 0x0
add-int/lit8 v0, p1, 0x1
invoke-virtual {p0, v0, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I
move-result v0
invoke-virtual {p0, p1, v1, v1}, Lcom/ibm/icu/util/Calendar;->handleComputeMonthStart(IIZ)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public hashCode()I
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z
if-eqz v0, :cond_19
const/4 v0, 0x1
:goto_5
iget v1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
shl-int/lit8 v1, v1, 0x1
or-int/2addr v0, v1
iget v1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I
shl-int/lit8 v1, v1, 0x4
or-int/2addr v0, v1
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZone;->hashCode()I
move-result v1
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
return v0
:cond_19
const/4 v0, 0x0
goto :goto_5
.end method
.method protected final internalGet(I)I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v0, v0, p1
return v0
.end method
.method protected final internalGet(II)I
.registers 4
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v0, v0, p1
if-lez v0, :cond_b
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v0, v0, p1
:goto_a
return v0
:cond_b
move v0, p2
goto :goto_a
.end method
.method protected final internalGetTimeInMillis()J
.registers 3
iget-wide v0, p0, Lcom/ibm/icu/util/Calendar;->time:J
return-wide v0
.end method
.method protected final internalSet(II)V
.registers 6
const/4 v2, 0x1
shl-int v0, v2, p1
iget v1, p0, Lcom/ibm/icu/util/Calendar;->internalSetMask:I
and-int/2addr v0, v1
if-nez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Subclass cannot set "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aput p2, v0, p1
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aput v2, v0, p1
return-void
.end method
.method public isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_38
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z
move-result v0
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->isLenient()Z
move-result v1
if-ne v0, v1, :cond_38
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v0
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v1
if-ne v0, v1, :cond_38
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v0
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v1
if-ne v0, v1, :cond_38
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const/4 v0, 0x1
:goto_37
return v0
:cond_38
const/4 v0, 0x0
goto :goto_37
.end method
.method public isLenient()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z
return v0
.end method
.method public final isSet(I)Z
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
if-nez v0, :cond_a
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v0, v0, p1
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isWeekend()Z
.registers 11
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v4, 0x7
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->getDayOfWeekType(I)I
move-result v1
packed-switch v1, :pswitch_data_48
const/16 v4, 0xe
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v4
const/16 v5, 0xd
invoke-virtual {p0, v5}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v5
const/16 v6, 0xc
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v6
const/16 v7, 0xb
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v7
mul-int/lit8 v7, v7, 0x3c
add-int/2addr v6, v7
mul-int/lit8 v6, v6, 0x3c
add-int/2addr v5, v6
mul-int/lit16 v5, v5, 0x3e8
add-int v2, v4, v5
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->getWeekendTransition(I)I
move-result v3
const/4 v4, 0x2
if-ne v1, v4, :cond_41
if-lt v2, v3, :cond_3f
move v4, v9
:goto_3a
return v4
:pswitch_3b
move v4, v8
goto :goto_3a
:pswitch_3d
move v4, v9
goto :goto_3a
:cond_3f
move v4, v8
goto :goto_3a
:cond_41
if-ge v2, v3, :cond_45
move v4, v9
goto :goto_3a
:cond_45
move v4, v8
goto :goto_3a
nop
:pswitch_data_48
.packed-switch 0x0
:pswitch_3b
:pswitch_3d
.end packed-switch
.end method
.method public isWeekend(Ljava/util/Date;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->isWeekend()Z
move-result v0
return v0
.end method
.method protected newerField(II)I
.registers 5
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v0, v0, p2
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v1, v1, p1
if-le v0, v1, :cond_c
move v0, p2
:goto_b
return v0
:cond_c
move v0, p1
goto :goto_b
.end method
.method protected newestStamp(III)I
.registers 7
move v0, p3
move v1, p1
:goto_2
if-gt v1, p2, :cond_11
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v2, v2, v1
if-le v2, v0, :cond_e
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v0, v2, v1
:cond_e
add-int/lit8 v1, v1, 0x1
goto :goto_2
:cond_11
return v0
.end method
.method protected pinField(I)V
.registers 5
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v0
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMinimum(I)I
move-result v1
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v2, v2, p1
if-le v2, v0, :cond_12
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V
:goto_11
:cond_11
return-void
:cond_12
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v2, v2, p1
if-ge v2, v1, :cond_11
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_11
.end method
.method protected prepareGetActual(IZ)V
.registers 11
const/4 v7, 0x6
const/4 v6, 0x3
const/4 v5, 0x1
const/4 v4, 0x7
const/4 v3, 0x5
const/16 v1, 0x15
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
sparse-switch p1, :sswitch_data_4a
:goto_e
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I
move-result v1
invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
return-void
:sswitch_16
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I
move-result v1
invoke-virtual {p0, v7, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_e
:sswitch_1e
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I
move-result v1
invoke-virtual {p0, v6, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_e
:sswitch_26
invoke-virtual {p0, v3}, Lcom/ibm/icu/util/Calendar;->getGreatestMinimum(I)I
move-result v1
invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_e
:sswitch_2e
invoke-virtual {p0, v3, v5}, Lcom/ibm/icu/util/Calendar;->set(II)V
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/Calendar;->get(I)I
move-result v1
invoke-virtual {p0, v4, v1}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_e
:sswitch_39
iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
if-eqz p2, :cond_45
add-int/lit8 v1, v0, 0x6
rem-int/lit8 v0, v1, 0x7
if-ge v0, v5, :cond_45
add-int/lit8 v0, v0, 0x7
:cond_45
invoke-virtual {p0, v4, v0}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_e
nop
:sswitch_data_4a
.sparse-switch
0x1 -> :sswitch_16
0x2 -> :sswitch_26
0x3 -> :sswitch_39
0x4 -> :sswitch_39
0x8 -> :sswitch_2e
0x11 -> :sswitch_1e
0x13 -> :sswitch_16
.end sparse-switch
.end method
.method protected resolveFields([[[I)I
.registers 15
const/16 v12, 0x20
const/4 v11, 0x0
const/4 v0, -0x1
const/4 v2, 0x0
:goto_5
array-length v9, p1
if-ge v2, v9, :cond_3a
if-gez v0, :cond_3a
aget-object v3, p1, v2
const/4 v1, 0x0
const/4 v5, 0x0
:goto_e
array-length v9, v3
if-ge v5, v9, :cond_37
aget-object v6, v3, v5
const/4 v7, 0x0
aget v9, v6, v11
if-lt v9, v12, :cond_28
const/4 v9, 0x1
move v4, v9
:goto_1a
array-length v9, v6
if-ge v4, v9, :cond_31
iget-object v9, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
aget v10, v6, v4
aget v8, v9, v10
if-nez v8, :cond_2a
:goto_25
:cond_25
add-int/lit8 v5, v5, 0x1
goto :goto_e
:cond_28
move v4, v11
goto :goto_1a
:cond_2a
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
add-int/lit8 v4, v4, 0x1
goto :goto_1a
:cond_31
if-le v7, v1, :cond_25
move v1, v7
aget v0, v6, v11
goto :goto_25
:cond_37
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_3a
if-lt v0, v12, :cond_3f
and-int/lit8 v9, v0, 0x1f
:goto_3e
return v9
:cond_3f
move v9, v0
goto :goto_3e
.end method
.method public roll(II)V
.registers 41
if-nez p2, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->complete()V
packed-switch p1, :pswitch_data_3a0
:pswitch_9
new-instance v32, Ljava/lang/IllegalArgumentException;
new-instance v33, Ljava/lang/StringBuilder;
invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V
const-string v34, "Calendar.roll("
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;
move-result-object v34
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
const-string v34, ") not supported"
invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v33
invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v33
invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v32
:pswitch_2c
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->getActualMinimum(I)I
move-result v18
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v17
sub-int v32, v17, v18
add-int/lit8 v10, v32, 0x1
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
add-int v29, v32, p2
sub-int v32, v29, v18
rem-int v29, v32, v10
if-gez v29, :cond_46
add-int v29, v29, v10
:cond_46
add-int v29, v29, v18
move-object/from16 v0, p0
move/from16 v1, p1
move/from16 v2, v29
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto :goto_2
:pswitch_52
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J
move-result-wide v27
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v24
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v17
add-int v32, v24, p2
add-int/lit8 v33, v17, 0x1
rem-int v23, v32, v33
if-gez v23, :cond_6a
add-int/lit8 v32, v17, 0x1
add-int v23, v23, v32
:cond_6a
const v32, 0x36ee80
sub-int v33, v23, v24
mul-int v32, v32, v33
move/from16 v0, v32
int-to-long v0, v0
move-wide/from16 v32, v0
add-long v32, v32, v27
move-object/from16 v0, p0
move-wide/from16 v1, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto :goto_2
:pswitch_80
const/16 v32, 0x2
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v17
const/16 v32, 0x2
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
add-int v32, v32, p2
add-int/lit8 v33, v17, 0x1
rem-int v21, v32, v33
if-gez v21, :cond_a0
add-int/lit8 v32, v17, 0x1
add-int v21, v21, v32
:cond_a0
const/16 v32, 0x2
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->pinField(I)V
goto/16 :goto_2
:pswitch_b6
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
add-int v32, v32, p2
move-object/from16 v0, p0
move/from16 v1, p1
move/from16 v2, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v32, 0x2
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->pinField(I)V
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->pinField(I)V
goto/16 :goto_2
:pswitch_d9
const/16 v32, 0x7
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v33
sub-int v7, v32, v33
if-gez v7, :cond_ed
add-int/lit8 v7, v7, 0x7
:cond_ed
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
sub-int v32, v7, v32
add-int/lit8 v32, v32, 0x1
rem-int/lit8 v8, v32, 0x7
if-gez v8, :cond_101
add-int/lit8 v8, v8, 0x7
:cond_101
const/16 v32, 0x7
sub-int v32, v32, v8
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v33
move/from16 v0, v32
move/from16 v1, v33
if-ge v0, v1, :cond_165
const/16 v32, 0x8
sub-int v27, v32, v8
:goto_113
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v22
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
sub-int v32, v22, v32
add-int v32, v32, v7
rem-int/lit8 v13, v32, 0x7
add-int/lit8 v32, v22, 0x7
sub-int v16, v32, v13
sub-int v10, v16, v27
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
mul-int/lit8 v33, p2, 0x7
add-int v32, v32, v33
sub-int v32, v32, v27
rem-int v3, v32, v10
if-gez v3, :cond_148
add-int/2addr v3, v10
:cond_148
add-int v3, v3, v27
const/16 v32, 0x1
move v0, v3
move/from16 v1, v32
if-ge v0, v1, :cond_152
const/4 v3, 0x1
:cond_152
move v0, v3
move/from16 v1, v22
if-le v0, v1, :cond_159
move/from16 v3, v22
:cond_159
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
move v2, v3
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto/16 :goto_2
:cond_165
const/16 v32, 0x1
sub-int v27, v32, v8
goto :goto_113
:pswitch_16a
const/16 v32, 0x7
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v33
sub-int v7, v32, v33
if-gez v7, :cond_17e
add-int/lit8 v7, v7, 0x7
:cond_17e
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
sub-int v32, v7, v32
add-int/lit8 v32, v32, 0x1
rem-int/lit8 v9, v32, 0x7
if-gez v9, :cond_192
add-int/lit8 v9, v9, 0x7
:cond_192
const/16 v32, 0x7
sub-int v32, v32, v9
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v33
move/from16 v0, v32
move/from16 v1, v33
if-ge v0, v1, :cond_1ff
const/16 v32, 0x8
sub-int v27, v32, v9
:goto_1a4
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v30
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
sub-int v32, v30, v32
add-int v32, v32, v7
rem-int/lit8 v14, v32, 0x7
add-int/lit8 v32, v30, 0x7
sub-int v16, v32, v14
sub-int v10, v16, v27
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
mul-int/lit8 v33, p2, 0x7
add-int v32, v32, v33
sub-int v32, v32, v27
rem-int v4, v32, v10
if-gez v4, :cond_1d9
add-int/2addr v4, v10
:cond_1d9
add-int v4, v4, v27
const/16 v32, 0x1
move v0, v4
move/from16 v1, v32
if-ge v0, v1, :cond_1e3
const/4 v4, 0x1
:cond_1e3
move v0, v4
move/from16 v1, v30
if-le v0, v1, :cond_1ea
move/from16 v4, v30
:cond_1ea
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
move v2, v4
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v32, 0x2
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->clear(I)V
goto/16 :goto_2
:cond_1ff
const/16 v32, 0x1
sub-int v27, v32, v9
goto :goto_1a4
:pswitch_204
move/from16 v0, p2
int-to-long v0, v0
move-wide/from16 v32, v0
const-wide/32 v34, 0x5265c00
mul-long v5, v32, v34
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
const/16 v34, 0x6
move-object/from16 v0, p0
move/from16 v1, v34
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v34
const/16 v35, 0x1
sub-int v34, v34, v35
move/from16 v0, v34
int-to-long v0, v0
move-wide/from16 v34, v0
const-wide/32 v36, 0x5265c00
mul-long v34, v34, v36
sub-long v19, v32, v34
const/16 v32, 0x6
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v31
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v5
sub-long v32, v32, v19
move/from16 v0, v31
int-to-long v0, v0
move-wide/from16 v34, v0
const-wide/32 v36, 0x5265c00
mul-long v34, v34, v36
rem-long v32, v32, v34
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
const-wide/16 v34, 0x0
cmp-long v32, v32, v34
if-gez v32, :cond_278
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
move/from16 v0, v31
int-to-long v0, v0
move-wide/from16 v34, v0
const-wide/32 v36, 0x5265c00
mul-long v34, v34, v36
add-long v32, v32, v34
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
:cond_278
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v19
move-object/from16 v0, p0
move-wide/from16 v1, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto/16 :goto_2
:pswitch_289
move/from16 v0, p2
int-to-long v0, v0
move-wide/from16 v32, v0
const-wide/32 v34, 0x5265c00
mul-long v5, v32, v34
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v15
const/16 v32, 0x7
move/from16 v0, p1
move/from16 v1, v32
if-ne v0, v1, :cond_2fd
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v32
:goto_2a3
sub-int v15, v15, v32
if-gez v15, :cond_2a9
add-int/lit8 v15, v15, 0x7
:cond_2a9
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
move v0, v15
int-to-long v0, v0
move-wide/from16 v34, v0
const-wide/32 v36, 0x5265c00
mul-long v34, v34, v36
sub-long v19, v32, v34
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v5
sub-long v32, v32, v19
const-wide/32 v34, 0x240c8400
rem-long v32, v32, v34
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
const-wide/16 v34, 0x0
cmp-long v32, v32, v34
if-gez v32, :cond_2ec
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
const-wide/32 v34, 0x240c8400
add-long v32, v32, v34
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
:cond_2ec
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v19
move-object/from16 v0, p0
move-wide/from16 v1, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto/16 :goto_2
:cond_2fd
const/16 v32, 0x1
goto :goto_2a3
:pswitch_300
move/from16 v0, p2
int-to-long v0, v0
move-wide/from16 v32, v0
const-wide/32 v34, 0x240c8400
mul-long v5, v32, v34
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
const/16 v33, 0x1
sub-int v32, v32, v33
div-int/lit8 v26, v32, 0x7
const/16 v32, 0x5
move-object/from16 v0, p0
move/from16 v1, v32
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I
move-result v32
const/16 v33, 0x5
move-object/from16 v0, p0
move/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v33
sub-int v32, v32, v33
div-int/lit8 v25, v32, 0x7
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
move/from16 v0, v26
int-to-long v0, v0
move-wide/from16 v34, v0
const-wide/32 v36, 0x240c8400
mul-long v34, v34, v36
sub-long v19, v32, v34
const-wide/32 v32, 0x240c8400
add-int v34, v26, v25
add-int/lit8 v34, v34, 0x1
move/from16 v0, v34
int-to-long v0, v0
move-wide/from16 v34, v0
mul-long v11, v32, v34
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v5
sub-long v32, v32, v19
rem-long v32, v32, v11
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
const-wide/16 v34, 0x0
cmp-long v32, v32, v34
if-gez v32, :cond_37e
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v11
move-wide/from16 v0, v32
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/util/Calendar;->time:J
:cond_37e
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/util/Calendar;->time:J
move-wide/from16 v32, v0
add-long v32, v32, v19
move-object/from16 v0, p0
move-wide/from16 v1, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
goto/16 :goto_2
:pswitch_38f
invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v32
add-int v32, v32, p2
move-object/from16 v0, p0
move/from16 v1, p1
move/from16 v2, v32
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/Calendar;->set(II)V
goto/16 :goto_2
:pswitch_data_3a0
.packed-switch 0x0
:pswitch_2c
:pswitch_b6
:pswitch_80
:pswitch_16a
:pswitch_d9
:pswitch_2c
:pswitch_204
:pswitch_289
:pswitch_300
:pswitch_2c
:pswitch_52
:pswitch_52
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_9
:pswitch_9
:pswitch_b6
:pswitch_289
:pswitch_b6
:pswitch_38f
:pswitch_2c
.end packed-switch
.end method
.method public final roll(IZ)V
.registers 4
if-eqz p2, :cond_7
const/4 v0, 0x1
:goto_3
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/Calendar;->roll(II)V
return-void
:cond_7
const/4 v0, -0x1
goto :goto_3
.end method
.method public final set(II)V
.registers 6
iget-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
if-eqz v0, :cond_7
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->computeFields()V
:cond_7
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aput p2, v0, p1
iget-object v0, p0, Lcom/ibm/icu/util/Calendar;->stamp:[I
iget v1, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/ibm/icu/util/Calendar;->nextStamp:I
aput v1, v0, p1
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
return-void
.end method
.method public final set(III)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x2
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x5
invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V
return-void
.end method
.method public final set(IIIII)V
.registers 7
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x2
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x5
invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v0, 0xb
invoke-virtual {p0, v0, p4}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v0, 0xc
invoke-virtual {p0, v0, p5}, Lcom/ibm/icu/util/Calendar;->set(II)V
return-void
.end method
.method public final set(IIIIII)V
.registers 8
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x2
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/4 v0, 0x5
invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v0, 0xb
invoke-virtual {p0, v0, p4}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v0, 0xc
invoke-virtual {p0, v0, p5}, Lcom/ibm/icu/util/Calendar;->set(II)V
const/16 v0, 0xd
invoke-virtual {p0, v0, p6}, Lcom/ibm/icu/util/Calendar;->set(II)V
return-void
.end method
.method public setFirstDayOfWeek(I)V
.registers 4
iget v0, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
if-eq v0, p1, :cond_17
const/4 v0, 0x1
if-lt p1, v0, :cond_a
const/4 v0, 0x7
if-le p1, v0, :cond_12
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid day of week"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
iput p1, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
:cond_17
return-void
.end method
.method public setLenient(Z)V
.registers 2
iput-boolean p1, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z
return-void
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
iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->validLocale:Lcom/ibm/icu/util/ULocale;
iput-object p2, p0, Lcom/ibm/icu/util/Calendar;->actualLocale:Lcom/ibm/icu/util/ULocale;
return-void
.end method
.method public setMinimalDaysInFirstWeek(I)V
.registers 3
const/4 v0, 0x1
if-ge p1, v0, :cond_e
const/4 p1, 0x1
:cond_4
:goto_4
iget v0, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I
if-eq v0, p1, :cond_d
iput p1, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
:cond_d
return-void
:cond_e
const/4 v0, 0x7
if-le p1, v0, :cond_4
const/4 p1, 0x7
goto :goto_4
.end method
.method public final setTime(Ljava/util/Date;)V
.registers 4
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->setTimeInMillis(J)V
return-void
.end method
.method public setTimeInMillis(J)V
.registers 5
const-wide v0, 0x28d47dbbf19b000L
cmp-long v0, p1, v0
if-lez v0, :cond_1b
const-wide p1, 0x28d47dbbf19b000L
:cond_e
:goto_e
iput-wide p1, p0, Lcom/ibm/icu/util/Calendar;->time:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsVirtuallySet:Z
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
return-void
:cond_1b
const-wide v0, -0x28ec76c40e65000L
cmp-long v0, p1, v0
if-gez v0, :cond_e
const-wide p1, -0x28ec76c40e65000L
goto :goto_e
.end method
.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
.registers 3
iput-object p1, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "[time="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v2, p0, Lcom/ibm/icu/util/Calendar;->isTimeSet:Z
if-eqz v2, :cond_8b
iget-wide v2, p0, Lcom/ibm/icu/util/Calendar;->time:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
:goto_1f
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, ",areFieldsSet="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v2, p0, Lcom/ibm/icu/util/Calendar;->areFieldsSet:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
const-string v2, ",areAllFieldsSet="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v2, p0, Lcom/ibm/icu/util/Calendar;->areAllFieldsSet:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
const-string v2, ",lenient="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v2, p0, Lcom/ibm/icu/util/Calendar;->lenient:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
const-string v2, ",zone="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->zone:Lcom/ibm/icu/util/TimeZone;
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
const-string v2, ",firstDayOfWeek="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v2, p0, Lcom/ibm/icu/util/Calendar;->firstDayOfWeek:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
const-string v2, ",minimalDaysInFirstWeek="
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v2, p0, Lcom/ibm/icu/util/Calendar;->minimalDaysInFirstWeek:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
const/4 v1, 0x0
:goto_5f
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v2, v2
if-ge v1, v2, :cond_91
const/16 v2, 0x2c
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const/16 v3, 0x3d
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z
move-result v2
if-eqz v2, :cond_8e
iget-object v2, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v2, v2, v1
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
:goto_85
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_5f
:cond_8b
const-string v2, "?"
goto :goto_1f
:cond_8e
const-string v2, "?"
goto :goto_85
:cond_91
const/16 v2, 0x5d
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method protected validateField(I)V
.registers 5
const/4 v2, 0x1
packed-switch p1, :pswitch_data_48
:pswitch_4
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I
move-result v1
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v2
invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/util/Calendar;->validateField(III)V
:goto_f
return-void
:pswitch_10
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I
move-result v0
const/4 v1, 0x2
invoke-virtual {p0, v1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;->handleGetMonthLength(II)I
move-result v1
invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V
goto :goto_f
:pswitch_21
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->handleGetExtendedYear()I
move-result v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->handleGetYearLength(I)I
move-result v1
invoke-virtual {p0, p1, v2, v1}, Lcom/ibm/icu/util/Calendar;->validateField(III)V
goto :goto_f
:pswitch_2d
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->internalGet(I)I
move-result v1
if-nez v1, :cond_3b
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "DAY_OF_WEEK_IN_MONTH cannot be zero"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3b
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMinimum(I)I
move-result v1
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->getMaximum(I)I
move-result v2
invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/util/Calendar;->validateField(III)V
goto :goto_f
nop
:pswitch_data_48
.packed-switch 0x5
:pswitch_10
:pswitch_21
:pswitch_4
:pswitch_2d
.end packed-switch
.end method
.method protected final validateField(III)V
.registers 8
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
aget v0, v1, p1
if-lt v0, p2, :cond_8
if-le v0, p3, :cond_3d
:cond_8
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Calendar;->fieldName(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0x3d
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", valid range="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3d
return-void
.end method
.method protected validateFields()V
.registers 3
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/ibm/icu/util/Calendar;->fields:[I
array-length v1, v1
if-ge v0, v1, :cond_12
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->isSet(I)Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Calendar;->validateField(I)V
:cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_12
return-void
.end method
.method protected final weekNumber(II)I
.registers 4
invoke-virtual {p0, p1, p1, p2}, Lcom/ibm/icu/util/Calendar;->weekNumber(III)I
move-result v0
return v0
.end method
.method protected weekNumber(III)I
.registers 8
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getFirstDayOfWeek()I
move-result v2
sub-int v2, p3, v2
sub-int/2addr v2, p2
add-int/lit8 v2, v2, 0x1
rem-int/lit8 v0, v2, 0x7
if-gez v0, :cond_f
add-int/lit8 v0, v0, 0x7
:cond_f
add-int v2, p1, v0
const/4 v3, 0x1
sub-int/2addr v2, v3
div-int/lit8 v1, v2, 0x7
const/4 v2, 0x7
sub-int/2addr v2, v0
invoke-virtual {p0}, Lcom/ibm/icu/util/Calendar;->getMinimalDaysInFirstWeek()I
move-result v3
if-lt v2, v3, :cond_1f
add-int/lit8 v1, v1, 0x1
:cond_1f
return v1
.end method