.class public Lcom/ibm/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Cloneable;
.field private static CANONICAL_ITEMS:[Ljava/lang/String; = null
.field private static CANONICAL_SET:Ljava/util/Set; = null
.field private static CLDR_FIELD_APPEND:[Ljava/lang/String; = null
.field private static CLDR_FIELD_NAME:[Ljava/lang/String; = null
.field private static final DATE_MASK:I = 0x3ff
.field public static final DAY:I = 0x7
.field public static final DAYPERIOD:I = 0xa
.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x9
.field public static final DAY_OF_YEAR:I = 0x8
.field private static final DELTA:I = 0x10
.field private static DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache; = null
.field public static final ERA:I = 0x0
.field private static final EXTRA_FIELD:I = 0x10000
.field private static FIELD_NAME:[Ljava/lang/String; = null
.field private static final FRACTIONAL_MASK:I = 0x4000
.field public static final FRACTIONAL_SECOND:I = 0xe
.field public static final HOUR:I = 0xb
.field private static final LONG:I = -0x103
.field public static final MINUTE:I = 0xc
.field private static final MISSING_FIELD:I = 0x1000
.field public static final MONTH:I = 0x3
.field private static final NARROW:I = -0x101
.field private static final NONE:I = 0x0
.field private static final NUMERIC:I = 0x100
.field public static final QUARTER:I = 0x2
.field public static final SECOND:I = 0xd
.field private static final SECOND_AND_FRACTIONAL_MASK:I = 0x6000
.field private static final SHORT:I = -0x102
.field private static final TIME_MASK:I = 0xfc00
.field public static final TYPE_LIMIT:I = 0x10
.field public static final WEEKDAY:I = 0x6
.field public static final WEEK_OF_MONTH:I = 0x5
.field public static final WEEK_OF_YEAR:I = 0x4
.field public static final YEAR:I = 0x1
.field public static final ZONE:I = 0xf
.field private static types:[[I
.field private transient _distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
.field private appendItemFormats:[Ljava/lang/String;
.field private appendItemNames:[Ljava/lang/String;
.field private basePattern_pattern:Ljava/util/TreeMap;
.field private chineseMonthHack:Z
.field private cldrAvailableFormatKeys:Ljava/util/Set;
.field private transient current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.field private dateTimeFormat:Ljava/lang/String;
.field private decimal:Ljava/lang/String;
.field private defaultHourFormatChar:C
.field private transient fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
.field private frozen:Z
.field private skeleton2pattern:Ljava/util/TreeMap;
.field private transient skipMatcher:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v4, 0x5
const/4 v3, 0x4
new-instance v0, Lcom/ibm/icu/impl/SimpleCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/String;
const-string v1, "Era"
aput-object v1, v0, v5
const-string v1, "Year"
aput-object v1, v0, v6
const-string v1, "Quarter"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "Month"
aput-object v2, v0, v1
const-string v1, "Week"
aput-object v1, v0, v3
const-string v1, "*"
aput-object v1, v0, v4
const/4 v1, 0x6
const-string v2, "Day-Of-Week"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "Day"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "Hour"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "Minute"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "Second"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "Timezone"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/String;
const-string v1, "era"
aput-object v1, v0, v5
const-string v1, "year"
aput-object v1, v0, v6
const-string v1, "*"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "month"
aput-object v2, v0, v1
const-string v1, "week"
aput-object v1, v0, v3
const-string v1, "*"
aput-object v1, v0, v4
const/4 v1, 0x6
const-string v2, "weekday"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "day"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "dayperiod"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "hour"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "minute"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "second"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "*"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "zone"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/String;
const-string v1, "Era"
aput-object v1, v0, v5
const-string v1, "Year"
aput-object v1, v0, v6
const-string v1, "Quarter"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "Month"
aput-object v2, v0, v1
const-string v1, "Week_in_Year"
aput-object v1, v0, v3
const-string v1, "Week_in_Month"
aput-object v1, v0, v4
const/4 v1, 0x6
const-string v2, "Weekday"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "Day"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "Day_Of_Year"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "Day_of_Week_in_Month"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "Dayperiod"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "Hour"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "Minute"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "Second"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "Fractional_Second"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "Zone"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/String;
const-string v1, "G"
aput-object v1, v0, v5
const-string v1, "y"
aput-object v1, v0, v6
const-string v1, "Q"
aput-object v1, v0, v7
const/4 v1, 0x3
const-string v2, "M"
aput-object v2, v0, v1
const-string v1, "w"
aput-object v1, v0, v3
const-string v1, "W"
aput-object v1, v0, v4
const/4 v1, 0x6
const-string v2, "e"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "d"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "D"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "F"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "H"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "m"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "s"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "S"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "v"
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;
const/16 v0, 0x35
new-array v0, v0, [[I
new-array v1, v4, [I
fill-array-data v1, :array_34e
aput-object v1, v0, v5
new-array v1, v3, [I
fill-array-data v1, :array_35c
aput-object v1, v0, v6
new-array v1, v4, [I
fill-array-data v1, :array_368
aput-object v1, v0, v7
const/4 v1, 0x3
new-array v2, v4, [I
fill-array-data v2, :array_376
aput-object v2, v0, v1
new-array v1, v4, [I
fill-array-data v1, :array_384
aput-object v1, v0, v3
new-array v1, v4, [I
fill-array-data v1, :array_392
aput-object v1, v0, v4
const/4 v1, 0x6
new-array v2, v3, [I
fill-array-data v2, :array_3a0
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [I
fill-array-data v2, :array_3ac
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v4, [I
fill-array-data v2, :array_3b8
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v3, [I
fill-array-data v2, :array_3c6
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v3, [I
fill-array-data v2, :array_3d2
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v4, [I
fill-array-data v2, :array_3de
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v3, [I
fill-array-data v2, :array_3ec
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v3, [I
fill-array-data v2, :array_3f8
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v3, [I
fill-array-data v2, :array_404
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v4, [I
fill-array-data v2, :array_410
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v3, [I
fill-array-data v2, :array_41e
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v3, [I
fill-array-data v2, :array_42a
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v3, [I
fill-array-data v2, :array_436
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v4, [I
fill-array-data v2, :array_442
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v3, [I
fill-array-data v2, :array_450
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v4, [I
fill-array-data v2, :array_45c
aput-object v2, v0, v1
const/16 v1, 0x16
new-array v2, v3, [I
fill-array-data v2, :array_46a
aput-object v2, v0, v1
const/16 v1, 0x17
new-array v2, v3, [I
fill-array-data v2, :array_476
aput-object v2, v0, v1
const/16 v1, 0x18
new-array v2, v3, [I
fill-array-data v2, :array_482
aput-object v2, v0, v1
const/16 v1, 0x19
new-array v2, v4, [I
fill-array-data v2, :array_48e
aput-object v2, v0, v1
const/16 v1, 0x1a
new-array v2, v3, [I
fill-array-data v2, :array_49c
aput-object v2, v0, v1
const/16 v1, 0x1b
new-array v2, v3, [I
fill-array-data v2, :array_4a8
aput-object v2, v0, v1
const/16 v1, 0x1c
new-array v2, v4, [I
fill-array-data v2, :array_4b4
aput-object v2, v0, v1
const/16 v1, 0x1d
new-array v2, v3, [I
fill-array-data v2, :array_4c2
aput-object v2, v0, v1
const/16 v1, 0x1e
new-array v2, v3, [I
fill-array-data v2, :array_4ce
aput-object v2, v0, v1
const/16 v1, 0x1f
new-array v2, v3, [I
fill-array-data v2, :array_4da
aput-object v2, v0, v1
const/16 v1, 0x20
new-array v2, v4, [I
fill-array-data v2, :array_4e6
aput-object v2, v0, v1
const/16 v1, 0x21
new-array v2, v4, [I
fill-array-data v2, :array_4f4
aput-object v2, v0, v1
const/16 v1, 0x22
new-array v2, v3, [I
fill-array-data v2, :array_502
aput-object v2, v0, v1
const/16 v1, 0x23
new-array v2, v4, [I
fill-array-data v2, :array_50e
aput-object v2, v0, v1
const/16 v1, 0x24
new-array v2, v3, [I
fill-array-data v2, :array_51c
aput-object v2, v0, v1
const/16 v1, 0x25
new-array v2, v4, [I
fill-array-data v2, :array_528
aput-object v2, v0, v1
const/16 v1, 0x26
new-array v2, v4, [I
fill-array-data v2, :array_536
aput-object v2, v0, v1
const/16 v1, 0x27
new-array v2, v4, [I
fill-array-data v2, :array_544
aput-object v2, v0, v1
const/16 v1, 0x28
new-array v2, v4, [I
fill-array-data v2, :array_552
aput-object v2, v0, v1
const/16 v1, 0x29
new-array v2, v4, [I
fill-array-data v2, :array_560
aput-object v2, v0, v1
const/16 v1, 0x2a
new-array v2, v4, [I
fill-array-data v2, :array_56e
aput-object v2, v0, v1
const/16 v1, 0x2b
new-array v2, v4, [I
fill-array-data v2, :array_57c
aput-object v2, v0, v1
const/16 v1, 0x2c
new-array v2, v4, [I
fill-array-data v2, :array_58a
aput-object v2, v0, v1
const/16 v1, 0x2d
new-array v2, v3, [I
fill-array-data v2, :array_598
aput-object v2, v0, v1
const/16 v1, 0x2e
new-array v2, v3, [I
fill-array-data v2, :array_5a4
aput-object v2, v0, v1
const/16 v1, 0x2f
new-array v2, v4, [I
fill-array-data v2, :array_5b0
aput-object v2, v0, v1
const/16 v1, 0x30
new-array v2, v3, [I
fill-array-data v2, :array_5be
aput-object v2, v0, v1
const/16 v1, 0x31
new-array v2, v4, [I
fill-array-data v2, :array_5ca
aput-object v2, v0, v1
const/16 v1, 0x32
new-array v2, v3, [I
fill-array-data v2, :array_5d8
aput-object v2, v0, v1
const/16 v1, 0x33
new-array v2, v4, [I
fill-array-data v2, :array_5e4
aput-object v2, v0, v1
const/16 v1, 0x34
new-array v2, v3, [I
fill-array-data v2, :array_5f2
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
return-void
:array_502
.array-data 0x4
0x46t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0x20t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_45c
.array-data 0x4
0x65t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_3ec
.array-data 0x4
0x4dt 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_5ca
.array-data 0x4
0x5at 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xeet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_384
.array-data 0x4
0x75t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x20t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
.end array-data
:array_368
.array-data 0x4
0x79t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
.end array-data
:array_404
.array-data 0x4
0x4dt 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xfft 0xfet 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_3ac
.array-data 0x4
0x51t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xfdt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_51c
.array-data 0x4
0x61t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_35c
.array-data 0x4
0x47t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfdt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_41e
.array-data 0x4
0x4ct 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xeet 0xfet 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_3f8
.array-data 0x4
0x4dt 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xfdt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_442
.array-data 0x4
0x77t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_4b4
.array-data 0x4
0x63t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x20t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_3b8
.array-data 0x4
0x71t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_48e
.array-data 0x4
0x45t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_482
.array-data 0x4
0x65t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xeft 0xfet 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_4f4
.array-data 0x4
0x44t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_3de
.array-data 0x4
0x4dt 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_5b0
.array-data 0x4
0x7at 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_4ce
.array-data 0x4
0x63t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xddt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_392
.array-data 0x4
0x51t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_3d2
.array-data 0x4
0x71t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xdt 0xfft 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_5d8
.array-data 0x4
0x5at 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xedt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_552
.array-data 0x4
0x4bt 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_536
.array-data 0x4
0x6bt 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xb0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_3a0
.array-data 0x4
0x51t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_42a
.array-data 0x4
0x4ct 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xedt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_376
.array-data 0x4
0x59t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
.end array-data
:array_46a
.array-data 0x4
0x65t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xeet 0xfet 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_5e4
.array-data 0x4
0x56t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xeet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_3c6
.array-data 0x4
0x71t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0xet 0xfft 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_410
.array-data 0x4
0x4ct 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_436
.array-data 0x4
0x4ct 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0xeft 0xfet 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_598
.array-data 0x4
0x76t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xdet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_4a8
.array-data 0x4
0x45t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xfft 0xfet 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_5a4
.array-data 0x4
0x76t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xddt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_58a
.array-data 0x4
0x41t 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0x20t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0xe8t 0x3t 0x0t 0x0t
.end array-data
:array_50e
.array-data 0x4
0x67t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x30t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
.end array-data
:array_476
.array-data 0x4
0x65t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xedt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_5be
.array-data 0x4
0x7at 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xfdt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_57c
.array-data 0x4
0x53t 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0xe8t 0x3t 0x0t 0x0t
.end array-data
:array_450
.array-data 0x4
0x57t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x10t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_5f2
.array-data 0x4
0x56t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xedt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_4c2
.array-data 0x4
0x63t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xdet 0xfet 0xfft 0xfft
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_56e
.array-data 0x4
0x73t 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_4e6
.array-data 0x4
0x64t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_49c
.array-data 0x4
0x45t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xfdt 0xfet 0xfft 0xfft
0x4t 0x0t 0x0t 0x0t
.end array-data
:array_528
.array-data 0x4
0x48t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xa0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_34e
.array-data 0x4
0x47t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xfet 0xfet 0xfft 0xfft
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_560
.array-data 0x4
0x6dt 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_544
.array-data 0x4
0x68t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0x0t 0x1t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
:array_4da
.array-data 0x4
0x63t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0xdft 0xfet 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
.end array-data
.end method
.method protected constructor <init>()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x0
const/16 v4, 0x10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/TreeMap;
invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
new-instance v1, Ljava/util/TreeMap;
invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
const-string v1, "?"
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;
const-string v1, "{1} {0}"
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;
new-array v1, v4, [Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
new-array v1, v4, [Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
const/4 v0, 0x0
:goto_26
if-ge v0, v4, :cond_48
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
const-string v2, "{0} \u251c{2}: {1}\u2524"
aput-object v2, v1, v0
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "F"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_26
:cond_48
const/16 v1, 0x48
iput-char v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C
iput-boolean v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->chineseMonthHack:Z
iput-boolean v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {v1, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-direct {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
invoke-direct {v1, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iput-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skipMatcher:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->complete()V
new-instance v1, Ljava/util/HashSet;
const/16 v2, 0x14
invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V
iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;
return-void
.end method
.method static synthetic access$300(Ljava/lang/String;Z)I
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I
move-result v0
return v0
.end method
.method static synthetic access$400()[[I
.registers 1
sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
return-object v0
.end method
.method static synthetic access$800(I)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
.registers 16
iget-object v10, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v10, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
iget-object v10, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v10}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;
move-result-object v10
invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_14
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_a2
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
instance-of v10, v5, Ljava/lang/String;
if-eqz v10, :cond_2e
iget-object v10, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
check-cast v5, Ljava/lang/String;
invoke-virtual {v10, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v10
invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto :goto_14
:cond_2e
move-object v0, v5
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
move-object v9, v0
invoke-virtual {v9}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v9}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getType()I
move-result v8
if-eqz p3, :cond_63
const/16 v10, 0xd
if-ne v8, v10, :cond_63
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$500(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;
move-result-object v10
const/16 v11, 0xe
aget-object v6, v10, v11
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:goto_5f
:cond_5f
invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_14
:cond_63
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$600(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
move-result-object v10
aget v10, v10, v8
if-eqz v10, :cond_5f
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$500(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;
move-result-object v10
aget-object v6, v10, v8
const/16 v10, 0xb
if-eq v8, v10, :cond_77
move-object v2, v6
goto :goto_5f
:cond_77
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v10
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v11
if-eq v10, v11, :cond_5f
const/4 v10, 0x0
invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C
move-result v1
const-string v2, ""
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v3
:goto_8c
if-lez v3, :cond_5f
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
add-int/lit8 v3, v3, -0x1
goto :goto_8c
:cond_a2
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v10
return-object v10
.end method
.method private checkFrozen()V
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->isFrozen()Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempt to modify frozen object"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method private complete()V
.registers 5
new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;
invoke-direct {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V
const/4 v0, 0x0
:goto_6
sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_1a
sget-object v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {p0, v2, v3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1a
return-void
.end method
.method private getAppendFormat(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method private static getAppendFormatNumber(Ljava/lang/String;)I
.registers 3
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;
array-length v1, v1
if-ge v0, v1, :cond_15
sget-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
move v1, v0
:goto_11
return v1
:cond_12
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_15
const/4 v1, -0x1
goto :goto_11
.end method
.method private getAppendName(I)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
aget-object v1, v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getBestAppending(I)Ljava/lang/String;
.registers 13
const/4 v10, 0x1
const/4 v9, 0x0
const/4 v1, 0x0
if-eqz p1, :cond_71
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
invoke-direct {p0, v5, p1, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {p0, v1, v5, v9}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
move-result-object v1
:goto_13
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v5, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
if-eqz v5, :cond_71
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v5, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
and-int/lit16 v5, v5, 0x6000
const/16 v6, 0x4000
if-ne v5, v6, :cond_38
and-int/lit16 v5, p1, 0x6000
const/16 v6, 0x6000
if-ne v5, v6, :cond_38
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {p0, v1, v5, v10}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v6, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
and-int/lit16 v6, v6, -0x4001
iput v6, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
goto :goto_13
:cond_38
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v2, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v6, v6, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
iget-object v7, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
invoke-direct {p0, v5, v6, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {p0, v3, v5, v9}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v5, v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
xor-int/lit8 v5, v5, -0x1
and-int v0, v2, v5
invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I
move-result v4
invoke-direct {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x3
new-array v6, v6, [Ljava/lang/Object;
aput-object v1, v6, v9
aput-object v3, v6, v10
const/4 v7, 0x2
invoke-direct {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_13
:cond_71
return-object v1
.end method
.method private getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)Ljava/lang/String;
.registers 11
const v0, 0x7fffffff
const-string v1, ""
new-instance v4, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
const/4 v6, 0x0
invoke-direct {v4, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_15
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skipMatcher:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-virtual {v5, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_15
invoke-virtual {p1, v5, p2, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)I
move-result v2
if-ge v2, v0, :cond_15
move v0, v2
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p3, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)V
if-nez v2, :cond_15
:cond_3d
return-object v1
.end method
.method private static getCanonicalIndex(Ljava/lang/String;Z)I
.registers 11
const/4 v8, 0x0
const/4 v7, -0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_a
move v5, v7
:goto_9
return v5
:cond_a
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v1
const/4 v2, 0x1
:goto_f
if-ge v2, v3, :cond_1c
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v5
if-eq v5, v1, :cond_19
move v5, v7
goto :goto_9
:cond_19
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_1c
const/4 v0, -0x1
const/4 v2, 0x0
:goto_1e
sget-object v5, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
array-length v5, v5
if-ge v2, v5, :cond_3d
sget-object v5, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
aget-object v4, v5, v2
aget v5, v4, v8
if-eq v5, v1, :cond_2e
:cond_2b
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_2e
move v0, v2
const/4 v5, 0x3
aget v5, v4, v5
if-gt v5, v3, :cond_2b
array-length v5, v4
const/4 v6, 0x1
sub-int/2addr v5, v6
aget v5, v4, v5
if-lt v5, v3, :cond_2b
move v5, v2
goto :goto_9
:cond_3d
if-eqz p1, :cond_41
move v5, v7
goto :goto_9
:cond_41
move v5, v0
goto :goto_9
.end method
.method public static getEmptyInstance()Lcom/ibm/icu/text/DateTimePatternGenerator;
.registers 1
new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator;
invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;-><init>()V
return-object v0
.end method
.method private static getFilteredPattern(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/lang/String;
invoke-direct {v2}, Ljava/lang/String;-><init>()V
const/4 v0, 0x0
:goto_6
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-ge v0, v3, :cond_55
invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z
move-result v3
if-eqz v3, :cond_19
:goto_16
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_19
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object v3
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Ljava/lang/String;
if-eqz v3, :cond_3f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_16
:cond_3f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_16
:cond_55
return-object v2
.end method
.method public static getInstance()Lcom/ibm/icu/text/DateTimePatternGenerator;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;
.registers 11
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;
move-result-object v5
sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {v0, v5}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator;
if-eqz v0, :cond_10
move-object p0, v0
:goto_f
return-object v0
:cond_10
new-instance v6, Lcom/ibm/icu/text/DateTimePatternGenerator;
invoke-direct {v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;-><init>()V
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v0
const-string v1, "zh"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_31
const-string v1, "ko"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_31
const-string v1, "ja"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
:cond_31
const/4 v0, 0x1
iput-boolean v0, v6, Lcom/ibm/icu/text/DateTimePatternGenerator;->chineseMonthHack:Z
:cond_34
new-instance v7, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;
invoke-direct {v7}, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V
const/4 v1, 0x0
const/4 v0, 0x0
move-object v8, v1
move v1, v0
:goto_3d
const/4 v0, 0x3
if-gt v1, v0, :cond_9e
invoke-static {v1, p0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;
invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v6, v0, v2, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
invoke-static {v1, p0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/SimpleDateFormat;
invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v6, v2, v3, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
const/4 v2, 0x3
if-ne v1, v2, :cond_1ac
invoke-virtual {v0}, Lcom/ibm/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;
move-result-object v4
new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-direct {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V
invoke-virtual {v0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;
move-result-object v3
const/4 v0, 0x0
move v2, v0
:goto_71
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v2, v0, :cond_1a9
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v8, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
if-eqz v8, :cond_9a
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getType()I
move-result v8
const/16 v9, 0xb
if-ne v8, v9, :cond_9a
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
iput-char v0, v6, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C
move-object v2, v4
:goto_95
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v8, v2
goto :goto_3d
:cond_9a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_71
:cond_9e
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v1, "calendar"
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
const-string v1, "gregorian"
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v2
const-string v0, "appendItems"
invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v4
const/4 v0, 0x0
move v3, v0
:goto_ba
invoke-virtual {v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v0
if-ge v3, v0, :cond_dd
invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v4, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getAppendFormatNumber(Ljava/lang/String;)I
move-result v1
invoke-virtual {v6, v1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_ba
:cond_dd
const-string v0, "fields"
invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v3
const/4 v0, 0x0
move v1, v0
:goto_e5
const/16 v0, 0x10
if-ge v1, v0, :cond_108
invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->isCLDRFieldName(I)Z
move-result v0
if-eqz v0, :cond_104
sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;
aget-object v0, v0, v1
invoke-virtual {v3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
const-string v4, "dn"
invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAppendItemName(ILjava/lang/String;)V
:cond_104
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e5
:cond_108
:try_start_108
const-string v0, "availableFormats"
invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
const/4 v1, 0x0
move v3, v1
:goto_110
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v1
if-ge v3, v1, :cond_132
invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v2
invoke-direct {v6, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v6, v2, v1, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
:try_end_12d
.catch Ljava/lang/Exception; {:try_start_108 .. :try_end_12d} :catch_131
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_110
:catch_131
move-exception v0
:cond_132
move-object v0, p0
:goto_133
invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;
move-result-object v4
if-eqz v4, :cond_17f
const-string v0, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v0, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v1, "calendar"
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
const-string v1, "gregorian"
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
:try_start_14d
const-string v1, "availableFormats"
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v0
const/4 v1, 0x0
move v3, v1
:goto_155
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v1
if-ge v3, v1, :cond_17d
invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v2
invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v2
invoke-direct {v6, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_178
invoke-direct {v6, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v6, v2, v1, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
:try_end_178
.catch Ljava/lang/Exception; {:try_start_14d .. :try_end_178} :catch_17c
:cond_178
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_155
:catch_17c
move-exception v0
:cond_17d
move-object v0, v4
goto :goto_133
:cond_17f
if-eqz v8, :cond_184
invoke-static {v6, v7, v8}, Lcom/ibm/icu/text/DateTimePatternGenerator;->hackTimes(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
:cond_184
invoke-static {p0}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, p0, v1}, Lcom/ibm/icu/util/Calendar;->getDateTimePattern(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V
new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;
invoke-direct {v0, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C
move-result p0
invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object p0
invoke-virtual {v6, p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V
sget-object p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Lcom/ibm/icu/impl/ICUCache;
invoke-interface {p0, v5, v6}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
move-object p0, v6
move-object v0, v6
goto/16 :goto_f
:cond_1a9
move-object v2, v4
goto/16 :goto_95
:cond_1ac
move-object v2, v8
goto/16 :goto_95
.end method
.method private static getName(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v6, 0x1
invoke-static {p0, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I
move-result v0
sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;
sget-object v5, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
aget-object v5, v5, v0
aget v5, v5, v6
aget-object v1, v4, v5
sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->types:[[I
aget-object v4, v4, v0
const/4 v5, 0x2
aget v3, v4, v5
if-gez v3, :cond_32
move v2, v6
:goto_19
if-eqz v2, :cond_1c
neg-int v3, v3
:cond_1c
if-gez v3, :cond_35
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ":S"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_31
return-object v1
:cond_32
const/4 v4, 0x0
move v2, v4
goto :goto_19
:cond_35
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ":N"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_31
.end method
.method private getTopBitNumber(I)I
.registers 4
const/4 v0, 0x0
:goto_1
if-eqz p1, :cond_8
ushr-int/lit8 p1, p1, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_8
const/4 v1, 0x1
sub-int v1, v0, v1
return v1
.end method
.method private static hackTimes(Lcom/ibm/icu/text/DateTimePatternGenerator;Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
new-instance v1, Ljava/lang/String;
invoke-direct {v1}, Ljava/lang/String;-><init>()V
const/4 p2, 0x0
const/4 v0, 0x0
move-object v3, v1
move v1, v0
move v0, p2
:goto_f
iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object p2
invoke-interface {p2}, Ljava/util/List;->size()I
move-result p2
if-ge v1, p2, :cond_101
iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object p2
invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
instance-of p2, v2, Ljava/lang/String;
if-eqz p2, :cond_4e
if-eqz v0, :cond_fd
new-instance p2, Ljava/lang/StringBuilder;
invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p2
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object p2
invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
move-object v2, p2
move p2, v0
:goto_48
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v3, v2
move v0, p2
goto :goto_f
:cond_4e
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object p2
const/4 v4, 0x0
invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C
move-result p2
const/16 v4, 0x6d
if-ne p2, v4, :cond_6f
const/4 p2, 0x1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v2, v0
goto :goto_48
:cond_6f
const/16 v4, 0x73
if-ne p2, v4, :cond_d8
if-nez v0, :cond_c2
move-object p2, v3
:goto_76
new-instance v2, Ljava/util/BitSet;
invoke-direct {v2}, Ljava/util/BitSet;-><init>()V
new-instance v1, Ljava/util/BitSet;
invoke-direct {v1}, Ljava/util/BitSet;-><init>()V
const/4 p2, 0x0
move v0, p2
:goto_82
iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object p2
invoke-interface {p2}, Ljava/util/List;->size()I
move-result p2
if-ge v0, p2, :cond_f2
iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
#getter for: Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;
invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->access$000(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
move-result-object p2
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p2
instance-of v3, p2, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
if-eqz v3, :cond_be
invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object p2
const/4 v3, 0x0
invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C
move-result p2
const/16 v3, 0x73
if-eq p2, v3, :cond_b0
const/16 v3, 0x53
if-ne p2, v3, :cond_be
:cond_b0
invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
const/4 p2, 0x1
sub-int p2, v0, p2
:goto_b6
if-ltz p2, :cond_be
invoke-virtual {v2, p2}, Ljava/util/BitSet;->get(I)Z
move-result v3
if-eqz v3, :cond_ec
:cond_be
add-int/lit8 p2, v0, 0x1
move v0, p2
goto :goto_82
:cond_c2
new-instance p2, Ljava/lang/StringBuilder;
invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object p2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object p2
invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
const/4 v0, 0x0
invoke-virtual {p0, p2, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
goto :goto_76
:cond_d8
if-nez v0, :cond_101
const/16 v2, 0x7a
if-eq p2, v2, :cond_101
const/16 v2, 0x5a
if-eq p2, v2, :cond_101
const/16 v2, 0x76
if-eq p2, v2, :cond_101
const/16 v2, 0x56
if-ne p2, v2, :cond_fd
move-object p2, v3
goto :goto_76
:cond_ec
invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
add-int/lit8 p2, p2, 0x1
goto :goto_b6
:cond_f2
iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-static {p2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getFilteredPattern(Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
move-result-object p2
const/4 v0, 0x0
invoke-virtual {p0, p2, v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
return-void
:cond_fd
move p2, v0
move-object v2, v3
goto/16 :goto_48
:cond_101
move-object p2, v3
goto/16 :goto_76
.end method
.method private isAvailableFormatSet(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private static isCLDRFieldName(I)Z
.registers 4
const/4 v2, 0x0
if-gez p0, :cond_9
const/16 v0, 0x10
if-lt p0, v0, :cond_9
move v0, v2
:goto_8
return v0
:cond_9
sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;
aget-object v0, v0, p0
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x2a
if-ne v0, v1, :cond_17
move v0, v2
goto :goto_8
:cond_17
const/4 v0, 0x1
goto :goto_8
.end method
.method public static isSingleField(Ljava/lang/String;)Z
.registers 5
const/4 v3, 0x0
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
const/4 v1, 0x1
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_17
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v0, :cond_14
move v2, v3
:goto_13
return v2
:cond_14
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_17
const/4 v2, 0x1
goto :goto_13
.end method
.method private setAvailableFormat(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private static showMask(I)Ljava/lang/String;
.registers 5
const-string v1, ""
const/4 v0, 0x0
:goto_3
const/16 v2, 0x10
if-ge v0, v2, :cond_44
const/4 v2, 0x1
shl-int/2addr v2, v0
and-int/2addr v2, p0
if-nez v2, :cond_f
:goto_c
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_f
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_28
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " | "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_28
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_c
:cond_44
return-object v1
.end method
.method public addPattern(Ljava/lang/String;ZLcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;)Lcom/ibm/icu/text/DateTimePatternGenerator;
.registers 10
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
new-instance v4, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
const/4 v5, 0x0
invoke-direct {v4, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v4, p1, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
move-result-object v1
invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-eqz v2, :cond_25
const/4 v4, 0x1
iput v4, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I
iput-object v2, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;
if-nez p2, :cond_25
:goto_24
:cond_24
return-object p0
:cond_25
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v4, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
if-eqz v3, :cond_36
const/4 v4, 0x2
iput v4, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I
iput-object v3, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;
if-eqz p2, :cond_24
:cond_36
const/4 v4, 0x0
iput v4, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->status:I
const-string v4, ""
iput-object v4, p3, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v4, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
invoke-virtual {v4, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_24
.end method
.method public clone()Ljava/lang/Object;
.registers 6
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/text/DateTimePatternGenerator;
move-object v0, v3
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator;
move-object v2, v0
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v3}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/TreeMap;
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
invoke-virtual {v3}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/TreeMap;
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/String;
check-cast v3, [Ljava/lang/String;
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
iput-object p0, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
new-instance v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
new-instance v3, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-direct {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
new-instance v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
iput-object v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
const/4 v3, 0x0
iput-boolean v3, v2, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
:try_end_50
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_50} :catch_51
return-object v2
:catch_51
move-exception v3
move-object v1, v3
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "Internal Error"
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public cloneAsThawed()Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/DateTimePatternGenerator;
move-object v0, v2
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator;
move-object v1, v0
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
return-object v1
.end method
.method public freeze()Ljava/lang/Object;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
return-object p0
.end method
.method public getAppendItemFormat(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method public getAppendItemName(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
aget-object v0, v0, p1
return-object v0
.end method
.method public getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_10
move-exception v0
monitor-exit p0
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_10
throw v0
.end method
.method public getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
.registers 3
if-nez p1, :cond_7
new-instance p1, Ljava/util/HashSet;
invoke-direct {p1}, Ljava/util/HashSet;-><init>()V
:cond_7
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
return-object p1
.end method
.method public getBestPattern(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v7, 0x0
iget-boolean v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->chineseMonthHack:Z
if-eqz v4, :cond_d
const-string v4, "MMM+"
const-string v5, "MM"
invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_d
const-string v4, "j"
iget-char v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C
invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v5
invoke-static {p1, v4, v5}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v5, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v4, p1, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
const/4 v5, -0x1
iget-object v6, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
invoke-direct {p0, v4, v5, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestRaw(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v4, v4, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I
if-nez v4, :cond_3c
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->_distanceInfo:Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
iget v4, v4, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I
if-nez v4, :cond_3c
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-direct {p0, v0, v4, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
move-result-object v4
:goto_3b
return-object v4
:cond_3c
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-virtual {v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I
move-result v2
and-int/lit16 v4, v2, 0x3ff
invoke-direct {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestAppending(I)Ljava/lang/String;
move-result-object v1
const v4, 0xfc00
and-int/2addr v4, v2
invoke-direct {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestAppending(I)Ljava/lang/String;
move-result-object v3
if-nez v1, :cond_59
if-nez v3, :cond_57
const-string v4, ""
goto :goto_3b
:cond_57
move-object v4, v3
goto :goto_3b
:cond_59
if-nez v3, :cond_5d
move-object v4, v1
goto :goto_3b
:cond_5d
invoke-virtual {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getDateTimeFormat()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
aput-object v3, v5, v7
const/4 v6, 0x1
aput-object v1, v5, v6
invoke-static {v4, v5}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
goto :goto_3b
.end method
.method public getDateTimeFormat()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;
return-object v0
.end method
.method public getDecimal()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;
return-object v0
.end method
.method public getFields(Ljava/lang/String;)Ljava/lang/String;
.registers 7
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v3, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_14
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_53
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
instance-of v3, v1, Ljava/lang/String;
if-eqz v3, :cond_2e
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto :goto_14
:cond_2e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "{"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "}"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_14
:cond_53
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
.registers 7
monitor-enter p0
if-nez p1, :cond_3
:try_start_3
:cond_3
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_d
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_40
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v4, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
sget-object v4, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;
invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_d
iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skipMatcher:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_d
invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_d
:catchall_3d
move-exception v4
monitor-exit p0
:try_end_3f
.catchall {:try_start_3 .. :try_end_3f} :catchall_3d
throw v4
:cond_40
:try_start_40
monitor-exit p0
:try_end_41
.catchall {:try_start_40 .. :try_end_41} :catchall_3d
return-object p1
.end method
.method public getSkeleton(Ljava/lang/String;)Ljava/lang/String;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_10
move-exception v0
monitor-exit p0
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_10
throw v0
.end method
.method public getSkeletons(Ljava/util/Map;)Ljava/util/Map;
.registers 6
if-nez p1, :cond_2
:cond_2
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_c
:goto_c
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_30
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;
invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
sget-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;
invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_c
invoke-virtual {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
:cond_30
return-object p1
.end method
.method public isFrozen()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->frozen:Z
return v0
.end method
.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->current:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->fp:Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;
invoke-virtual {v0, p2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;Z)Ljava/lang/String;
move-result-object v0
monitor-exit p0
return-object v0
:catchall_10
move-exception v0
monitor-exit p0
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_10
throw v0
.end method
.method public setAppendItemFormat(ILjava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method public setAppendItemName(ILjava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;
aput-object p2, v0, p1
return-void
.end method
.method public setDateTimeFormat(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;
return-void
.end method
.method public setDecimal(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->checkFrozen()V
iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;
return-void
.end method