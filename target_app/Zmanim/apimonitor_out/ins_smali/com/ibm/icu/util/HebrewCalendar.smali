.class public Lcom/ibm/icu/util/HebrewCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "HebrewCalendar.java"
.field public static final ADAR:I = 0x6
.field public static final ADAR_1:I = 0x5
.field public static final AV:I = 0xb
.field private static final BAHARAD:J = 0x2f34L
.field private static final DAY_PARTS:J = 0x6540L
.field public static final ELUL:I = 0xc
.field public static final HESHVAN:I = 0x1
.field private static final HOUR_PARTS:J = 0x438L
.field public static final IYAR:I = 0x8
.field public static final KISLEV:I = 0x2
.field private static final LEAP_MONTH_START:[[I = null
.field private static final LIMITS:[[I = null
.field private static final MONTH_DAYS:I = 0x1d
.field private static final MONTH_FRACT:J = 0x35b9L
.field private static final MONTH_LENGTH:[[I = null
.field private static final MONTH_PARTS:J = 0xbadf9L
.field private static final MONTH_START:[[I = null
.field public static final NISAN:I = 0x7
.field public static final SHEVAT:I = 0x4
.field public static final SIVAN:I = 0x9
.field public static final TAMUZ:I = 0xa
.field public static final TEVET:I = 0x3
.field public static final TISHRI:I = 0x0
.field private static cache:Lcom/ibm/icu/impl/CalendarCache; = null
.field private static final serialVersionUID:J = -0x1b18c2be311f64d8L
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x4
const/4 v4, 0x0
const/4 v3, 0x3
const/16 v0, 0x16
new-array v0, v0, [[I
new-array v1, v5, [I
fill-array-data v1, :array_202
aput-object v1, v0, v4
new-array v1, v5, [I
fill-array-data v1, :array_20e
aput-object v1, v0, v6
new-array v1, v5, [I
fill-array-data v1, :array_21a
aput-object v1, v0, v7
new-array v1, v5, [I
fill-array-data v1, :array_226
aput-object v1, v0, v3
new-array v1, v4, [I
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v5, [I
fill-array-data v2, :array_232
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v5, [I
fill-array-data v2, :array_23e
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v5, [I
fill-array-data v2, :array_24a
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xe
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0xf
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0x10
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0x11
new-array v2, v5, [I
fill-array-data v2, :array_256
aput-object v2, v0, v1
const/16 v1, 0x12
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0x13
new-array v2, v5, [I
fill-array-data v2, :array_262
aput-object v2, v0, v1
const/16 v1, 0x14
new-array v2, v4, [I
aput-object v2, v0, v1
const/16 v1, 0x15
new-array v2, v4, [I
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I
const/16 v0, 0xd
new-array v0, v0, [[I
new-array v1, v3, [I
fill-array-data v1, :array_26e
aput-object v1, v0, v4
new-array v1, v3, [I
fill-array-data v1, :array_278
aput-object v1, v0, v6
new-array v1, v3, [I
fill-array-data v1, :array_282
aput-object v1, v0, v7
new-array v1, v3, [I
fill-array-data v1, :array_28c
aput-object v1, v0, v3
new-array v1, v3, [I
fill-array-data v1, :array_296
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v3, [I
fill-array-data v2, :array_2a0
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v3, [I
fill-array-data v2, :array_2aa
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [I
fill-array-data v2, :array_2b4
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v3, [I
fill-array-data v2, :array_2be
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v3, [I
fill-array-data v2, :array_2c8
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v3, [I
fill-array-data v2, :array_2d2
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v3, [I
fill-array-data v2, :array_2dc
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v3, [I
fill-array-data v2, :array_2e6
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I
const/16 v0, 0xe
new-array v0, v0, [[I
new-array v1, v3, [I
fill-array-data v1, :array_2f0
aput-object v1, v0, v4
new-array v1, v3, [I
fill-array-data v1, :array_2fa
aput-object v1, v0, v6
new-array v1, v3, [I
fill-array-data v1, :array_304
aput-object v1, v0, v7
new-array v1, v3, [I
fill-array-data v1, :array_30e
aput-object v1, v0, v3
new-array v1, v3, [I
fill-array-data v1, :array_318
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v3, [I
fill-array-data v2, :array_322
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v3, [I
fill-array-data v2, :array_32c
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [I
fill-array-data v2, :array_336
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v3, [I
fill-array-data v2, :array_340
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v3, [I
fill-array-data v2, :array_34a
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v3, [I
fill-array-data v2, :array_354
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v3, [I
fill-array-data v2, :array_35e
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v3, [I
fill-array-data v2, :array_368
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v3, [I
fill-array-data v2, :array_372
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I
const/16 v0, 0xe
new-array v0, v0, [[I
new-array v1, v3, [I
fill-array-data v1, :array_37c
aput-object v1, v0, v4
new-array v1, v3, [I
fill-array-data v1, :array_386
aput-object v1, v0, v6
new-array v1, v3, [I
fill-array-data v1, :array_390
aput-object v1, v0, v7
new-array v1, v3, [I
fill-array-data v1, :array_39a
aput-object v1, v0, v3
new-array v1, v3, [I
fill-array-data v1, :array_3a4
aput-object v1, v0, v5
const/4 v1, 0x5
new-array v2, v3, [I
fill-array-data v2, :array_3ae
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v3, [I
fill-array-data v2, :array_3b8
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [I
fill-array-data v2, :array_3c2
aput-object v2, v0, v1
const/16 v1, 0x8
new-array v2, v3, [I
fill-array-data v2, :array_3cc
aput-object v2, v0, v1
const/16 v1, 0x9
new-array v2, v3, [I
fill-array-data v2, :array_3d6
aput-object v2, v0, v1
const/16 v1, 0xa
new-array v2, v3, [I
fill-array-data v2, :array_3e0
aput-object v2, v0, v1
const/16 v1, 0xb
new-array v2, v3, [I
fill-array-data v2, :array_3ea
aput-object v2, v0, v1
const/16 v1, 0xc
new-array v2, v3, [I
fill-array-data v2, :array_3f4
aput-object v2, v0, v1
const/16 v1, 0xd
new-array v2, v3, [I
fill-array-data v2, :array_3fe
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I
new-instance v0, Lcom/ibm/icu/impl/CalendarCache;
invoke-direct {v0}, Lcom/ibm/icu/impl/CalendarCache;-><init>()V
sput-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;
return-void
nop
:array_262
.array-data 0x4
0xc0t 0xb4t 0xb3t 0xfft
0xc0t 0xb4t 0xb3t 0xfft
0x40t 0x4bt 0x4ct 0x0t
0x40t 0x4bt 0x4ct 0x0t
.end array-data
:array_3b8
.array-data 0x4
0xb1t 0x0t 0x0t 0x0t
0xb2t 0x0t 0x0t 0x0t
0xb3t 0x0t 0x0t 0x0t
.end array-data
:array_2b4
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_368
.array-data 0x4
0x44t 0x1t 0x0t 0x0t
0x45t 0x1t 0x0t 0x0t
0x46t 0x1t 0x0t 0x0t
.end array-data
:array_2f0
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_3d6
.array-data 0x4
0x9t 0x1t 0x0t 0x0t
0xat 0x1t 0x0t 0x0t
0xbt 0x1t 0x0t 0x0t
.end array-data
:array_35e
.array-data 0x4
0x26t 0x1t 0x0t 0x0t
0x27t 0x1t 0x0t 0x0t
0x28t 0x1t 0x0t 0x0t
.end array-data
:array_2d2
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
:array_3ae
.array-data 0x4
0x93t 0x0t 0x0t 0x0t
0x94t 0x0t 0x0t 0x0t
0x95t 0x0t 0x0t 0x0t
.end array-data
:array_282
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_39a
.array-data 0x4
0x58t 0x0t 0x0t 0x0t
0x59t 0x0t 0x0t 0x0t
0x5at 0x0t 0x0t 0x0t
.end array-data
:array_3cc
.array-data 0x4
0xect 0x0t 0x0t 0x0t
0xedt 0x0t 0x0t 0x0t
0xeet 0x0t 0x0t 0x0t
.end array-data
:array_2aa
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
:array_30e
.array-data 0x4
0x58t 0x0t 0x0t 0x0t
0x59t 0x0t 0x0t 0x0t
0x5at 0x0t 0x0t 0x0t
.end array-data
:array_28c
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
:array_20e
.array-data 0x4
0xc0t 0xb4t 0xb3t 0xfft
0xc0t 0xb4t 0xb3t 0xfft
0x40t 0x4bt 0x4ct 0x0t
0x40t 0x4bt 0x4ct 0x0t
.end array-data
:array_34a
.array-data 0x4
0xebt 0x0t 0x0t 0x0t
0xect 0x0t 0x0t 0x0t
0xedt 0x0t 0x0t 0x0t
.end array-data
:array_3a4
.array-data 0x4
0x75t 0x0t 0x0t 0x0t
0x76t 0x0t 0x0t 0x0t
0x77t 0x0t 0x0t 0x0t
.end array-data
:array_3ea
.array-data 0x4
0x44t 0x1t 0x0t 0x0t
0x45t 0x1t 0x0t 0x0t
0x46t 0x1t 0x0t 0x0t
.end array-data
:array_32c
.array-data 0x4
0x93t 0x0t 0x0t 0x0t
0x94t 0x0t 0x0t 0x0t
0x95t 0x0t 0x0t 0x0t
.end array-data
:array_278
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_232
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_318
.array-data 0x4
0x75t 0x0t 0x0t 0x0t
0x76t 0x0t 0x0t 0x0t
0x77t 0x0t 0x0t 0x0t
.end array-data
:array_386
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_2dc
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_372
.array-data 0x4
0x61t 0x1t 0x0t 0x0t
0x62t 0x1t 0x0t 0x0t
0x63t 0x1t 0x0t 0x0t
.end array-data
:array_256
.array-data 0x4
0xc0t 0xb4t 0xb3t 0xfft
0xc0t 0xb4t 0xb3t 0xfft
0x40t 0x4bt 0x4ct 0x0t
0x40t 0x4bt 0x4ct 0x0t
.end array-data
:array_2fa
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_3fe
.array-data 0x4
0x7ft 0x1t 0x0t 0x0t
0x80t 0x1t 0x0t 0x0t
0x81t 0x1t 0x0t 0x0t
.end array-data
:array_390
.array-data 0x4
0x3bt 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
.end array-data
:array_2c8
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_2a0
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_3c2
.array-data 0x4
0xcet 0x0t 0x0t 0x0t
0xcft 0x0t 0x0t 0x0t
0xd0t 0x0t 0x0t 0x0t
.end array-data
:array_24a
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0xfft 0xfft 0xfft 0xfft
0x5t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
.end array-data
:array_26e
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_2e6
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
:array_2be
.array-data 0x4
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
0x1dt 0x0t 0x0t 0x0t
.end array-data
:array_3e0
.array-data 0x4
0x27t 0x1t 0x0t 0x0t
0x28t 0x1t 0x0t 0x0t
0x29t 0x1t 0x0t 0x0t
.end array-data
:array_23e
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x61t 0x1t 0x0t 0x0t
0x81t 0x1t 0x0t 0x0t
.end array-data
:array_336
.array-data 0x4
0xb0t 0x0t 0x0t 0x0t
0xb1t 0x0t 0x0t 0x0t
0xb2t 0x0t 0x0t 0x0t
.end array-data
:array_296
.array-data 0x4
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
0x1et 0x0t 0x0t 0x0t
.end array-data
:array_3f4
.array-data 0x4
0x62t 0x1t 0x0t 0x0t
0x63t 0x1t 0x0t 0x0t
0x64t 0x1t 0x0t 0x0t
.end array-data
:array_37c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_21a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
.end array-data
:array_304
.array-data 0x4
0x3bt 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x3ct 0x0t 0x0t 0x0t
.end array-data
:array_354
.array-data 0x4
0x9t 0x1t 0x0t 0x0t
0xat 0x1t 0x0t 0x0t
0xbt 0x1t 0x0t 0x0t
.end array-data
:array_226
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x33t 0x0t 0x0t 0x0t
0x38t 0x0t 0x0t 0x0t
.end array-data
:array_340
.array-data 0x4
0xcet 0x0t 0x0t 0x0t
0xcft 0x0t 0x0t 0x0t
0xd0t 0x0t 0x0t 0x0t
.end array-data
:array_322
.array-data 0x4
0x93t 0x0t 0x0t 0x0t
0x94t 0x0t 0x0t 0x0t
0x95t 0x0t 0x0t 0x0t
.end array-data
:array_202
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(III)V
.registers 6
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/4 v0, 0x2
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/4 v0, 0x5
invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
return-void
.end method
.method public constructor <init>(IIIIII)V
.registers 9
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
const/4 v0, 0x1
invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/4 v0, 0x2
invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/4 v0, 0x5
invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/16 v0, 0xb
invoke-virtual {p0, v0, p4}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/16 v0, 0xc
invoke-virtual {p0, v0, p5}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
const/16 v0, 0xd
invoke-virtual {p0, v0, p6}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->setTimeInMillis(J)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->setTimeInMillis(J)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Date;)V
.registers 4
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->setTime(Ljava/util/Date;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Locale;)V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/HebrewCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
return-void
.end method
.method private static final isLeapYear(I)Z
.registers 3
mul-int/lit8 v1, p0, 0xc
add-int/lit8 v1, v1, 0x11
rem-int/lit8 v0, v1, 0x13
if-gez v0, :cond_d
const/4 v1, -0x7
:goto_9
if-lt v0, v1, :cond_10
const/4 v1, 0x1
:goto_c
return v1
:cond_d
const/16 v1, 0xc
goto :goto_9
:cond_10
const/4 v1, 0x0
goto :goto_c
.end method
.method private static monthsInYear(I)I
.registers 2
invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v0
if-eqz v0, :cond_9
const/16 v0, 0xd
:goto_8
return v0
:cond_9
const/16 v0, 0xc
goto :goto_8
.end method
.method private static startOfYear(I)J
.registers 8
sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;
int-to-long v1, p0
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarCache;->get(J)J
move-result-wide v0
sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J
cmp-long v2, v0, v2
if-nez v2, :cond_55
mul-int/lit16 v0, p0, 0xeb
const/16 v1, 0xea
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x13
int-to-long v1, v0
const-wide/16 v3, 0x35b9
mul-long/2addr v1, v3
const-wide/16 v3, 0x2f34
add-long v2, v1, v3
mul-int/lit8 v0, v0, 0x1d
int-to-long v0, v0
const-wide/16 v4, 0x6540
div-long v4, v2, v4
add-long/2addr v0, v4
const-wide/16 v4, 0x6540
rem-long/2addr v2, v4
const-wide/16 v4, 0x7
rem-long v4, v0, v4
long-to-int v4, v4
const/4 v5, 0x2
if-eq v4, v5, :cond_35
const/4 v5, 0x4
if-eq v4, v5, :cond_35
const/4 v5, 0x6
if-ne v4, v5, :cond_3d
:cond_35
const-wide/16 v4, 0x1
add-long/2addr v0, v4
const-wide/16 v4, 0x7
rem-long v4, v0, v4
long-to-int v4, v4
:cond_3d
const/4 v5, 0x1
if-ne v4, v5, :cond_56
const-wide/16 v5, 0x4014
cmp-long v5, v2, v5
if-lez v5, :cond_56
invoke-static {p0}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v5
if-nez v5, :cond_56
const-wide/16 v2, 0x2
add-long/2addr v0, v2
:goto_4f
:cond_4f
sget-object v2, Lcom/ibm/icu/util/HebrewCalendar;->cache:Lcom/ibm/icu/impl/CalendarCache;
int-to-long v3, p0
invoke-virtual {v2, v3, v4, v0, v1}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V
:cond_55
return-wide v0
:cond_56
if-nez v4, :cond_4f
const-wide/16 v4, 0x5ae5
cmp-long v2, v2, v4
if-lez v2, :cond_4f
const/4 v2, 0x1
sub-int v2, p0, v2
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v2
if-eqz v2, :cond_4f
const-wide/16 v2, 0x1
add-long/2addr v0, v2
goto :goto_4f
.end method
.method private final yearType(I)I
.registers 7
invoke-virtual {p0, p1}, Lcom/ibm/icu/util/HebrewCalendar;->handleGetYearLength(I)I
move-result v1
const/16 v2, 0x17c
if-le v1, v2, :cond_a
add-int/lit8 v1, v1, -0x1e
:cond_a
const/4 v0, 0x0
packed-switch v1, :pswitch_data_38
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Illegal year length "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " in year "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:pswitch_31
const/4 v0, 0x0
:goto_32
return v0
:pswitch_33
const/4 v0, 0x1
goto :goto_32
:pswitch_35
const/4 v0, 0x2
goto :goto_32
nop
:pswitch_data_38
.packed-switch 0x161
:pswitch_31
:pswitch_33
:pswitch_35
.end packed-switch
.end method
.method public add(II)V
.registers 10
const/4 v6, 0x2
const/4 v3, 0x0
const/4 v5, 0x1
const/4 v4, 0x5
packed-switch p1, :pswitch_data_56
invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->add(II)V
:goto_a
return-void
:pswitch_b
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I
move-result v1
invoke-virtual {p0, v5}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I
move-result v2
if-lez p2, :cond_3b
if-ge v1, v4, :cond_33
move v0, v5
:goto_18
add-int/2addr v1, p2
:goto_19
if-eqz v0, :cond_25
if-lt v1, v4, :cond_25
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v3
if-nez v3, :cond_25
add-int/lit8 v1, v1, 0x1
:cond_25
const/16 v3, 0xc
if-gt v1, v3, :cond_35
:cond_29
invoke-virtual {p0, v6, v1}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
invoke-virtual {p0, v5, v2}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
invoke-virtual {p0, v4}, Lcom/ibm/icu/util/HebrewCalendar;->pinField(I)V
goto :goto_a
:cond_33
move v0, v3
goto :goto_18
:cond_35
add-int/lit8 v1, v1, -0xd
add-int/lit8 v2, v2, 0x1
const/4 v0, 0x1
goto :goto_19
:cond_3b
if-le v1, v4, :cond_53
move v0, v5
:goto_3e
add-int/2addr v1, p2
:goto_3f
if-eqz v0, :cond_4b
if-gt v1, v4, :cond_4b
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v3
if-nez v3, :cond_4b
add-int/lit8 v1, v1, -0x1
:cond_4b
if-gez v1, :cond_29
add-int/lit8 v1, v1, 0xd
add-int/lit8 v2, v2, -0x1
const/4 v0, 0x1
goto :goto_3f
:cond_53
move v0, v3
goto :goto_3e
nop
:pswitch_data_56
.packed-switch 0x2
:pswitch_b
.end packed-switch
.end method
.method public getType()Ljava/lang/String;
.registers 2
const-string v0, "hebrew"
return-object v0
.end method
.method protected handleComputeFields(I)V
.registers 21
const v15, 0x54f5d
sub-int v15, p1, v15
int-to-long v3, v15
const-wide/16 v15, 0x6540
mul-long/2addr v15, v3
const-wide/32 v17, 0xbadf9
div-long v7, v15, v17
const-wide/16 v15, 0x13
mul-long/2addr v15, v7
const-wide/16 v17, 0xea
add-long v15, v15, v17
const-wide/16 v17, 0xeb
div-long v15, v15, v17
long-to-int v15, v15
add-int/lit8 v11, v15, 0x1
invoke-static {v11}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J
move-result-wide v13
sub-long v15, v3, v13
long-to-int v6, v15
:goto_23
const/4 v15, 0x1
if-ge v6, v15, :cond_30
add-int/lit8 v11, v11, -0x1
invoke-static {v11}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J
move-result-wide v13
sub-long v15, v3, v13
long-to-int v6, v15
goto :goto_23
:cond_30
move-object/from16 v0, p0
move v1, v11
invoke-direct {v0, v1}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I
move-result v12
invoke-static {v11}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v15
if-eqz v15, :cond_4a
sget-object v15, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I
move-object v10, v15
:goto_40
const/4 v9, 0x0
:goto_41
aget-object v15, v10, v9
aget v15, v15, v12
if-le v6, v15, :cond_4e
add-int/lit8 v9, v9, 0x1
goto :goto_41
:cond_4a
sget-object v15, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I
move-object v10, v15
goto :goto_40
:cond_4e
add-int/lit8 v9, v9, -0x1
aget-object v15, v10, v9
aget v15, v15, v12
sub-int v5, v6, v15
const/4 v15, 0x0
const/16 v16, 0x0
move-object/from16 v0, p0
move v1, v15
move/from16 v2, v16
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
const/4 v15, 0x1
move-object/from16 v0, p0
move v1, v15
move v2, v11
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
const/16 v15, 0x13
move-object/from16 v0, p0
move v1, v15
move v2, v11
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
const/4 v15, 0x2
move-object/from16 v0, p0
move v1, v15
move v2, v9
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
const/4 v15, 0x5
move-object/from16 v0, p0
move v1, v15
move v2, v5
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
const/4 v15, 0x6
move-object/from16 v0, p0
move v1, v15
move v2, v6
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalSet(II)V
return-void
.end method
.method protected handleComputeMonthStart(IIZ)I
.registers 9
:goto_0
if-gez p2, :cond_42
add-int/lit8 p1, p1, -0x1
invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I
move-result v3
add-int/2addr p2, v3
goto :goto_0
:goto_a
const/16 v3, 0xc
if-le p2, v3, :cond_17
add-int/lit8 p1, v2, 0x1
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I
move-result v3
sub-int/2addr p2, v3
move v2, p1
goto :goto_a
:cond_17
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J
move-result-wide v0
if-eqz p2, :cond_2f
invoke-static {v2}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v3
if-eqz v3, :cond_35
sget-object v3, Lcom/ibm/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I
aget-object v3, v3, p2
invoke-direct {p0, v2}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I
move-result v4
aget v3, v3, v4
int-to-long v3, v3
add-long/2addr v0, v3
:goto_2f
:cond_2f
const-wide/32 v3, 0x54f5d
add-long/2addr v3, v0
long-to-int v3, v3
return v3
:cond_35
sget-object v3, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_START:[[I
aget-object v3, v3, p2
invoke-direct {p0, v2}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I
move-result v4
aget v3, v3, v4
int-to-long v3, v3
add-long/2addr v0, v3
goto :goto_2f
:cond_42
move v2, p1
goto :goto_a
.end method
.method protected handleGetExtendedYear()I
.registers 5
const/16 v3, 0x13
const/4 v2, 0x1
invoke-virtual {p0, v3, v2}, Lcom/ibm/icu/util/HebrewCalendar;->newerField(II)I
move-result v1
if-ne v1, v3, :cond_e
invoke-virtual {p0, v3, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I
move-result v0
:goto_d
return v0
:cond_e
invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/util/HebrewCalendar;->internalGet(II)I
move-result v0
goto :goto_d
.end method
.method protected handleGetLimit(II)I
.registers 4
sget-object v0, Lcom/ibm/icu/util/HebrewCalendar;->LIMITS:[[I
aget-object v0, v0, p1
aget v0, v0, p2
return v0
.end method
.method protected handleGetMonthLength(II)I
.registers 6
:goto_0
if-gez p2, :cond_2d
add-int/lit8 p1, p1, -0x1
invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I
move-result v1
add-int/2addr p2, v1
goto :goto_0
:goto_a
const/16 v1, 0xc
if-le p2, v1, :cond_17
add-int/lit8 p1, v0, 0x1
invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I
move-result v1
sub-int/2addr p2, v1
move v0, p1
goto :goto_a
:cond_17
packed-switch p2, :pswitch_data_30
sget-object v1, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I
aget-object v1, v1, p2
const/4 v2, 0x0
aget v1, v1, v2
:goto_21
return v1
:pswitch_22
sget-object v1, Lcom/ibm/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I
aget-object v1, v1, p2
invoke-direct {p0, v0}, Lcom/ibm/icu/util/HebrewCalendar;->yearType(I)I
move-result v2
aget v1, v1, v2
goto :goto_21
:cond_2d
move v0, p1
goto :goto_a
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_22
:pswitch_22
.end packed-switch
.end method
.method protected handleGetYearLength(I)I
.registers 6
add-int/lit8 v0, p1, 0x1
invoke-static {v0}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J
move-result-wide v0
invoke-static {p1}, Lcom/ibm/icu/util/HebrewCalendar;->startOfYear(I)J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public roll(II)V
.registers 11
const/4 v7, 0x2
const/4 v6, 0x5
packed-switch p1, :pswitch_data_3c
invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->roll(II)V
:goto_8
return-void
:pswitch_9
invoke-virtual {p0, v7}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I
move-result v1
const/4 v5, 0x1
invoke-virtual {p0, v5}, Lcom/ibm/icu/util/HebrewCalendar;->get(I)I
move-result v3
invoke-static {v3}, Lcom/ibm/icu/util/HebrewCalendar;->isLeapYear(I)Z
move-result v0
invoke-static {v3}, Lcom/ibm/icu/util/HebrewCalendar;->monthsInYear(I)I
move-result v4
rem-int v5, p2, v4
add-int v2, v1, v5
if-nez v0, :cond_28
if-lez p2, :cond_33
if-ge v1, v6, :cond_33
if-lt v2, v6, :cond_33
add-int/lit8 v2, v2, 0x1
:cond_28
:goto_28
add-int/lit8 v5, v2, 0xd
rem-int/lit8 v5, v5, 0xd
invoke-virtual {p0, v7, v5}, Lcom/ibm/icu/util/HebrewCalendar;->set(II)V
invoke-virtual {p0, v6}, Lcom/ibm/icu/util/HebrewCalendar;->pinField(I)V
goto :goto_8
:cond_33
if-gez p2, :cond_28
if-le v1, v6, :cond_28
if-gt v2, v6, :cond_28
add-int/lit8 v2, v2, -0x1
goto :goto_28
:pswitch_data_3c
.packed-switch 0x2
:pswitch_9
.end packed-switch
.end method