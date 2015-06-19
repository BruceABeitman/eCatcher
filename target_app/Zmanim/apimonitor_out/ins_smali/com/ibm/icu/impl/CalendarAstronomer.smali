.class public Lcom/ibm/icu/impl/CalendarAstronomer;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"
.field public static final AUTUMN_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude; = null
.field public static final DAY_MS:J = 0x5265c00L
.field private static final DEG_RAD:D = 0.017453292519943295
.field static final EPOCH_2000_MS:J = 0xdc65a95000L
.field public static final FIRST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge; = null
.field public static final FULL_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge; = null
.field public static final HOUR_MS:I = 0x36ee80
.field private static final INVALID:D = 4.9E-324
.field static final JD_EPOCH:D = 2447891.5
.field public static final JULIAN_EPOCH_MS:J = -0xbfc83e532200L
.field public static final LAST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge; = null
.field public static final MINUTE_MS:I = 0xea60
.field public static final NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge; = null
.field private static final PI:D = 3.141592653589793
.field private static final PI2:D = 6.283185307179586
.field private static final RAD_DEG:D = 57.29577951308232
.field private static final RAD_HOUR:D = 3.819718634205488
.field public static final SECOND_MS:I = 0x3e8
.field public static final SIDEREAL_DAY:D = 23.93446960027
.field public static final SIDEREAL_MONTH:D = 27.32166
.field public static final SIDEREAL_YEAR:D = 365.25636
.field public static final SOLAR_DAY:D = 24.065709816
.field public static final SUMMER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude; = null
.field static final SUN_E:D = 0.016713
.field static final SUN_ETA_G:D = 4.87650757829735
.field static final SUN_OMEGA_G:D = 4.935239984568769
.field public static final SYNODIC_MONTH:D = 29.530588853
.field public static final TROPICAL_YEAR:D = 365.242191
.field public static final VERNAL_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude; = null
.field public static final WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude; = null
.field static final moonA:D = 384401.0
.field static final moonE:D = 0.0549
.field static final moonI:D = 0.08980357792017056
.field static final moonL0:D = 5.556284436750021
.field static final moonN0:D = 5.559050068029439
.field static final moonP0:D = 0.6342598060246725
.field static final moonPi:D = 0.016592845198710092
.field static final moonT0:D = 0.009042550854582622
.field private transient eclipObliquity:D
.field private fGmtOffset:J
.field private fLatitude:D
.field private fLongitude:D
.field private transient julianCentury:D
.field private transient julianDay:D
.field private transient meanAnomalySun:D
.field private transient moonEclipLong:D
.field private transient moonLongitude:D
.field private transient moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.field private transient siderealT0:D
.field private transient siderealTime:D
.field private transient sunLongitude:D
.field private time:J
.method static constructor <clinit>()V
.registers 9
const-wide v7, 0x4012d97c7f3321d2L
const-wide v5, 0x400921fb54442d18L
const-wide v3, 0x3ff921fb54442d18L
const-wide/16 v1, 0x0
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->VERNAL_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
invoke-direct {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->SUMMER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
invoke-direct {v0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->AUTUMN_EQUINOX:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
invoke-direct {v0, v7, v8}, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->NEW_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
invoke-direct {v0, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->FIRST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
invoke-direct {v0, v5, v6}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->FULL_MOON:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
invoke-direct {v0, v7, v8}, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;-><init>(D)V
sput-object v0, Lcom/ibm/icu/impl/CalendarAstronomer;->LAST_QUARTER:Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(J)V
return-void
.end method
.method public constructor <init>(DD)V
.registers 9
const-wide v2, 0x3f91df46a2529d39L
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>()V
mul-double v0, p1, v2
invoke-static {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D
move-result-wide v0
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D
mul-double v0, p3, v2
invoke-static {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D
move-result-wide v0
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D
const-wide/high16 v2, 0x4038
mul-double/2addr v0, v2
const-wide v2, 0x414b774000000000L
mul-double/2addr v0, v2
const-wide v2, 0x401921fb54442d18L
div-double/2addr v0, v2
double-to-long v0, v0
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
return-void
.end method
.method public constructor <init>(J)V
.registers 7
const-wide/16 v0, 0x0
const-wide/16 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLongitude:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
return-void
.end method
.method public constructor <init>(Ljava/util/Date;)V
.registers 4
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(J)V
return-void
.end method
.method static synthetic access$000(D)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->radToHms(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(D)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->radToDms(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private clearCache()V
.registers 3
const-wide/16 v0, 0x1
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
return-void
.end method
.method private eclipticObliquity()D
.registers 9
iget-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
const-wide/16 v6, 0x1
cmpl-double v4, v4, v6
if-nez v4, :cond_47
const-wide v2, 0x4142b42c80000000L
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D
move-result-wide v4
const-wide v6, 0x4142b42c80000000L
sub-double/2addr v4, v6
const-wide v6, 0x40e1d5a000000000L
div-double v0, v4, v6
const-wide v4, 0x4037707570c564f9L
const-wide v6, 0x3f8aa1edb45c4be9L
mul-double/2addr v6, v0
sub-double/2addr v4, v6
const-wide v6, 0x3e865e9f80f29211L
mul-double/2addr v6, v0
mul-double/2addr v6, v0
sub-double/2addr v4, v6
const-wide v6, 0x3ea0ded40694ce29L
mul-double/2addr v6, v0
mul-double/2addr v6, v0
mul-double/2addr v6, v0
add-double/2addr v4, v6
iput-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
iget-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
const-wide v6, 0x3f91df46a2529d39L
mul-double/2addr v4, v6
iput-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
:cond_47
iget-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipObliquity:D
return-wide v4
.end method
.method private getSiderealOffset()D
.registers 13
const-wide/high16 v10, 0x3fe0
iget-wide v6, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D
const-wide/16 v8, 0x1
cmpl-double v6, v6, v8
if-nez v6, :cond_3f
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D
move-result-wide v6
sub-double/2addr v6, v10
invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D
move-result-wide v6
add-double v0, v6, v10
const-wide v6, 0x4142b42c80000000L
sub-double v2, v0, v6
const-wide v6, 0x40e1d5a000000000L
div-double v4, v2, v6
const-wide v6, 0x401aca1c8e5eb098L
const-wide v8, 0x40a2c01a48b65237L
mul-double/2addr v8, v4
add-double/2addr v6, v8
const-wide v8, 0x3efb1e471b7b0e47L
mul-double/2addr v8, v4
mul-double/2addr v8, v4
add-double/2addr v6, v8
const-wide/high16 v8, 0x4038
invoke-static {v6, v7, v8, v9}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v6
iput-wide v6, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D
:cond_3f
iget-wide v6, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealT0:D
return-wide v6
.end method
.method private lstToUT(D)J
.registers 13
const-wide/32 v8, 0x5265c00
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSiderealOffset()D
move-result-wide v4
sub-double v4, p1, v4
const-wide v6, 0x3fefe9a1dd91bf50L
mul-double/2addr v4, v6
const-wide/high16 v6, 0x4038
invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v2
iget-wide v4, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
iget-wide v6, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
add-long/2addr v4, v6
div-long/2addr v4, v8
mul-long/2addr v4, v8
iget-wide v6, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
sub-long v0, v4, v6
const-wide v4, 0x414b774000000000L
mul-double/2addr v4, v2
double-to-long v4, v4
add-long/2addr v4, v0
return-wide v4
.end method
.method private static final norm2PI(D)D
.registers 4
const-wide v0, 0x401921fb54442d18L
invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v0
return-wide v0
.end method
.method private static final normPI(D)D
.registers 8
const-wide v4, 0x400921fb54442d18L
add-double v0, p0, v4
const-wide v2, 0x401921fb54442d18L
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v0
sub-double/2addr v0, v4
return-wide v0
.end method
.method private static final normalize(DD)D
.registers 6
div-double v0, p0, p2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
mul-double/2addr v0, p2
sub-double v0, p0, v0
return-wide v0
.end method
.method private static radToDms(D)Ljava/lang/String;
.registers 13
const-wide/high16 v9, 0x404e
const-wide v7, 0x404ca5dc1a63c1f8L
mul-double v3, p0, v7
double-to-int v0, v3
mul-double v3, p0, v7
int-to-double v5, v0
sub-double/2addr v3, v5
mul-double/2addr v3, v9
double-to-int v1, v3
mul-double v3, p0, v7
int-to-double v5, v0
sub-double/2addr v3, v5
int-to-double v5, v1
div-double/2addr v5, v9
sub-double/2addr v3, v5
const-wide v5, 0x40ac200000000000L
mul-double/2addr v3, v5
double-to-int v2, v3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\u00b0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private static radToHms(D)Ljava/lang/String;
.registers 13
const-wide/high16 v9, 0x404e
const-wide v7, 0x400e8ec8a4aeacc4L
mul-double v3, p0, v7
double-to-int v0, v3
mul-double v3, p0, v7
int-to-double v5, v0
sub-double/2addr v3, v5
mul-double/2addr v3, v9
double-to-int v1, v3
mul-double v3, p0, v7
int-to-double v5, v0
sub-double/2addr v3, v5
int-to-double v5, v1
div-double/2addr v5, v9
sub-double/2addr v3, v5
const-wide v5, 0x40ac200000000000L
mul-double/2addr v3, v5
double-to-int v2, v3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "h"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "m"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "s"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private riseOrSet(Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
.registers 38
const/16 v16, 0x0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->tan(D)D
move-result-wide v19
const-wide v10, 0x7fffffffffffffffL
const/4 v7, 0x0
:cond_12
invoke-interface/range {p1 .. p1}, Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;->eval()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v16
move-wide/from16 v0, v19
neg-double v0, v0
move-wide/from16 v25, v0
move-object/from16 v0, v16
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D
move-wide/from16 v27, v0
invoke-static/range {v27 .. v28}, Ljava/lang/Math;->tan(D)D
move-result-wide v27
mul-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->acos(D)D
move-result-wide v3
if-eqz p2, :cond_c2
const-wide v25, 0x401921fb54442d18L
sub-double v25, v25, v3
:goto_34
move-object/from16 v0, v16
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->ascension:D
move-wide/from16 v27, v0
add-double v25, v25, v27
const-wide/high16 v27, 0x4038
mul-double v25, v25, v27
const-wide v27, 0x401921fb54442d18L
div-double v12, v25, v27
move-object/from16 v0, p0
move-wide v1, v12
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->lstToUT(D)J
move-result-wide v14
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v25, v0
sub-long v10, v14, v25
move-object/from16 v0, p0
move-wide v1, v14
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
add-int/lit8 v7, v7, 0x1
const/16 v25, 0x5
move v0, v7
move/from16 v1, v25
if-ge v0, v1, :cond_6d
invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
move-result-wide v25
cmp-long v25, v25, p7
if-gtz v25, :cond_12
:cond_6d
move-object/from16 v0, v16
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v5
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
div-double v25, v25, v5
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->acos(D)D
move-result-wide v17
const-wide/high16 v25, 0x4000
div-double v25, p3, v25
add-double v21, v25, p5
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D
move-result-wide v27
div-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->asin(D)D
move-result-wide v23
const-wide/high16 v25, 0x406e
mul-double v25, v25, v23
const-wide v27, 0x404ca5dc1a63c1f8L
mul-double v25, v25, v27
div-double v25, v25, v5
const-wide v27, 0x408f400000000000L
mul-double v25, v25, v27
move-wide/from16 v0, v25
double-to-long v0, v0
move-wide v8, v0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v25, v0
if-eqz p2, :cond_c6
move-wide v0, v8
neg-long v0, v0
move-wide/from16 v27, v0
:goto_bf
add-long v25, v25, v27
return-wide v25
:cond_c2
move-wide/from16 v25, v3
goto/16 :goto_34
:cond_c6
move-wide/from16 v27, v8
goto :goto_bf
.end method
.method private timeOfAngle(Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
.registers 32
invoke-interface/range {p1 .. p1}, Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;->eval()D
move-result-wide v13
sub-double v19, p2, v13
invoke-static/range {v19 .. v20}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v7
if-eqz p8, :cond_7f
const-wide/16 v19, 0x0
:goto_e
add-double v19, v19, v7
const-wide v21, 0x4194997000000000L
mul-double v21, v21, p4
mul-double v19, v19, v21
const-wide v21, 0x401921fb54442d18L
div-double v9, v19, v21
move-wide v15, v9
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v17, v0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v19, v0
move-wide v0, v9
double-to-long v0, v0
move-wide/from16 v21, v0
add-long v19, v19, v21
move-object/from16 v0, p0
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
:cond_3a
invoke-interface/range {p1 .. p1}, Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;->eval()D
move-result-wide v3
sub-double v19, v3, v13
invoke-static/range {v19 .. v20}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D
move-result-wide v19
div-double v19, v9, v19
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D
move-result-wide v11
sub-double v19, p2, v3
invoke-static/range {v19 .. v20}, Lcom/ibm/icu/impl/CalendarAstronomer;->normPI(D)D
move-result-wide v19
mul-double v9, v19, v11
invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D
move-result-wide v19
invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D
move-result-wide v21
cmpl-double v19, v19, v21
if-lez v19, :cond_8a
const-wide v19, 0x4194997000000000L
mul-double v19, v19, p4
const-wide/high16 v21, 0x4020
div-double v19, v19, v21
move-wide/from16 v0, v19
double-to-long v0, v0
move-wide v5, v0
if-eqz p8, :cond_85
move-wide/from16 v19, v5
:goto_71
add-long v19, v19, v17
move-object/from16 v0, p0
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
invoke-direct/range {p0 .. p8}, Lcom/ibm/icu/impl/CalendarAstronomer;->timeOfAngle(Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
move-result-wide v19
:goto_7e
return-wide v19
:cond_7f
const-wide v19, -0x3fe6de04abbbd2e8L
goto :goto_e
:cond_85
move-wide v0, v5
neg-long v0, v0
move-wide/from16 v19, v0
goto :goto_71
:cond_8a
move-wide v15, v9
move-wide v13, v3
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v19, v0
move-wide v0, v9
double-to-long v0, v0
move-wide/from16 v21, v0
add-long v19, v19, v21
move-object/from16 v0, p0
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D
move-result-wide v19
move-wide/from16 v0, p6
long-to-double v0, v0
move-wide/from16 v21, v0
cmpl-double v19, v19, v21
if-gtz v19, :cond_3a
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
move-wide/from16 v19, v0
goto :goto_7e
.end method
.method private trueAnomaly(DD)D
.registers 17
move-wide v0, p1
:cond_1
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
mul-double/2addr v4, p3
sub-double v4, v0, v4
sub-double v2, v4, p1
const-wide/high16 v4, 0x3ff0
invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
mul-double/2addr v6, p3
sub-double/2addr v4, v6
div-double v4, v2, v4
sub-double/2addr v0, v4
invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D
move-result-wide v4
const-wide v6, 0x3ee4f8b588e368f1L
cmpl-double v4, v4, v6
if-gtz v4, :cond_1
const-wide/high16 v4, 0x4000
const-wide/high16 v6, 0x4000
div-double v6, v0, v6
invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D
move-result-wide v6
const-wide/high16 v8, 0x3ff0
add-double/2addr v8, p3
const-wide/high16 v10, 0x3ff0
sub-double/2addr v10, p3
div-double/2addr v8, v10
invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
mul-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D
move-result-wide v6
mul-double/2addr v4, v6
return-wide v4
.end method
.method public final eclipticToEquatorial(D)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 5
const-wide/16 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v0
return-object v0
.end method
.method public final eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 32
invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticObliquity()D
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D
move-result-wide v14
invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D
move-result-wide v16
invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D
move-result-wide v8
invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D
move-result-wide v12
invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
invoke-static/range {p3 .. p4}, Ljava/lang/Math;->tan(D)D
move-result-wide v18
new-instance v20, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
mul-double v21, v16, v6
mul-double v23, v18, v14
sub-double v21, v21, v23
move-wide/from16 v0, v21
move-wide v2, v8
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v21
mul-double v23, v12, v6
mul-double v25, v4, v14
mul-double v25, v25, v16
add-double v23, v23, v25
invoke-static/range {v23 .. v24}, Ljava/lang/Math;->asin(D)D
move-result-wide v23
invoke-direct/range {v20 .. v24}, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;-><init>(DD)V
return-object v20
.end method
.method public final eclipticToEquatorial(Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 6
iget-wide v0, p1, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->longitude:D
iget-wide v2, p1, Lcom/ibm/icu/impl/CalendarAstronomer$Ecliptic;->latitude:D
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v0
return-object v0
.end method
.method public eclipticToHorizon(D)Lcom/ibm/icu/impl/CalendarAstronomer$Horizon;
.registers 31
invoke-virtual/range {p0 .. p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(D)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v17
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getLocalSidereal()D
move-result-wide v24
const-wide v26, 0x400921fb54442d18L
mul-double v24, v24, v26
const-wide/high16 v26, 0x4028
div-double v24, v24, v26
move-object/from16 v0, v17
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->ascension:D
move-wide/from16 v26, v0
sub-double v5, v24, v26
invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D
move-result-wide v20
invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D
move-result-wide v13
move-object/from16 v0, v17
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v18
move-object/from16 v0, v17
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;->declination:D
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v11
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v22
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->fLatitude:D
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v15
mul-double v24, v18, v22
mul-double v26, v11, v15
mul-double v26, v26, v13
add-double v24, v24, v26
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D
move-result-wide v7
move-wide v0, v11
neg-double v0, v0
move-wide/from16 v24, v0
mul-double v24, v24, v15
mul-double v24, v24, v20
invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D
move-result-wide v26
mul-double v26, v26, v22
sub-double v26, v18, v26
invoke-static/range {v24 .. v27}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v9
new-instance v24, Lcom/ibm/icu/impl/CalendarAstronomer$Horizon;
move-object/from16 v0, v24
move-wide v1, v9
move-wide v3, v7
invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer$Horizon;-><init>(DD)V
return-object v24
.end method
.method public getDate()Ljava/util/Date;
.registers 4
new-instance v0, Ljava/util/Date;
iget-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
return-object v0
.end method
.method public getGreenwichSidereal()D
.registers 9
const-wide/high16 v6, 0x4038
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D
const-wide/16 v4, 0x1
cmpl-double v2, v2, v4
if-nez v2, :cond_28
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
long-to-double v2, v2
const-wide v4, 0x414b774000000000L
div-double/2addr v2, v4
invoke-static {v2, v3, v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v0
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSiderealOffset()D
move-result-wide v2
const-wide v4, 0x3ff00b36e7d9d4aeL
mul-double/2addr v4, v0
add-double/2addr v2, v4
invoke-static {v2, v3, v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v2
iput-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D
:cond_28
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->siderealTime:D
return-wide v2
.end method
.method public getJulianCentury()D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D
const-wide/16 v2, 0x1
cmpl-double v0, v0, v2
if-nez v0, :cond_1a
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D
move-result-wide v0
const-wide v2, 0x41426cd600000000L
sub-double/2addr v0, v2
const-wide v2, 0x40e1d5a000000000L
div-double/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D
:cond_1a
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianCentury:D
return-wide v0
.end method
.method public getJulianDay()D
.registers 5
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
const-wide/16 v2, 0x1
cmpl-double v0, v0, v2
if-nez v0, :cond_19
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
const-wide v2, -0xbfc83e532200L
sub-long/2addr v0, v2
long-to-double v0, v0
const-wide v2, 0x4194997000000000L
div-double/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
:cond_19
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
return-wide v0
.end method
.method public getLocalSidereal()D
.registers 7
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getGreenwichSidereal()D
move-result-wide v0
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
long-to-double v2, v2
const-wide v4, 0x414b774000000000L
div-double/2addr v2, v4
add-double/2addr v0, v2
const-wide/high16 v2, 0x4038
invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->normalize(DD)D
move-result-wide v0
return-wide v0
.end method
.method public getMoonAge()D
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
sub-double/2addr v0, v2
invoke-static {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v0
return-wide v0
.end method
.method public getMoonPhase()D
.registers 7
const-wide/high16 v0, 0x3fe0
const-wide/high16 v2, 0x3ff0
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonAge()D
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
sub-double/2addr v2, v4
mul-double/2addr v0, v2
return-wide v0
.end method
.method public getMoonPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-object/from16 v33, v0
if-nez v33, :cond_142
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D
move-result-wide v25
invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D
move-result-wide v33
const-wide v35, 0x4142ad09c0000000L
sub-double v13, v33, v35
const-wide v33, 0x3fcd6fb4ccd0bc8dL
mul-double v33, v33, v13
const-wide v35, 0x401639a2a09c75e2L
add-double v33, v33, v35
invoke-static/range {v33 .. v34}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v19
const-wide v33, 0x3f5fdb459d100168L
mul-double v33, v33, v13
sub-double v33, v19, v33
const-wide v35, 0x3fe44bdb3881627cL
sub-double v33, v33, v35
invoke-static/range {v33 .. v34}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v17
const-wide v33, 0x3f96c471a926a187L
const-wide/high16 v35, 0x4000
sub-double v37, v19, v25
mul-double v35, v35, v37
sub-double v35, v35, v17
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v15, v33, v35
const-wide v33, 0x3f6a90b0aba4fc89L
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
move-wide/from16 v35, v0
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v9, v33, v35
const-wide v33, 0x3f7a736889d66dd0L
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
move-wide/from16 v35, v0
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v5, v33, v35
sub-double v33, v15, v9
sub-double v33, v33, v5
add-double v17, v17, v33
const-wide v33, 0x3fbc1905209a88deL
invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v11, v33, v35
const-wide v33, 0x3f6e98df535623b2L
const-wide/high16 v35, 0x4000
mul-double v35, v35, v17
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v7, v33, v35
add-double v33, v19, v15
add-double v33, v33, v11
sub-double v33, v33, v9
add-double v33, v33, v7
move-wide/from16 v0, v33
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
const-wide v33, 0x3f8787ceeab4c1caL
const-wide/high16 v35, 0x4000
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
move-wide/from16 v37, v0
sub-double v37, v37, v25
mul-double v35, v35, v37
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v27, v33, v35
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
move-wide/from16 v33, v0
add-double v33, v33, v27
move-wide/from16 v0, v33
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
const-wide v33, 0x40163c779efc0d54L
const-wide v35, 0x3f4e48eb230f0fe5L
mul-double v35, v35, v13
sub-double v33, v33, v35
invoke-static/range {v33 .. v34}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v23
const-wide v33, 0x3f66e05a695f8191L
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
move-wide/from16 v35, v0
invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sin(D)D
move-result-wide v35
mul-double v33, v33, v35
sub-double v23, v23, v33
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
move-wide/from16 v33, v0
sub-double v33, v33, v23
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D
move-result-wide v31
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonLongitude:D
move-wide/from16 v33, v0
sub-double v33, v33, v23
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D
move-result-wide v29
const-wide v33, 0x3fb6fd5e063b1d97L
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D
move-result-wide v33
mul-double v33, v33, v31
move-wide/from16 v0, v33
move-wide/from16 v2, v29
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v33
add-double v33, v33, v23
move-wide/from16 v0, v33
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D
const-wide v33, 0x3fb6fd5e063b1d97L
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D
move-result-wide v33
mul-double v33, v33, v31
invoke-static/range {v33 .. v34}, Ljava/lang/Math;->asin(D)D
move-result-wide v21
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonEclipLong:D
move-wide/from16 v33, v0
move-object/from16 v0, p0
move-wide/from16 v1, v33
move-wide/from16 v3, v21
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v33
move-object/from16 v0, v33
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
:cond_142
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/impl/CalendarAstronomer;->moonPosition:Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-object/from16 v33, v0
return-object v33
.end method
.method public getMoonRiseSet(Z)J
.registers 11
new-instance v1, Lcom/ibm/icu/impl/CalendarAstronomer$4;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/CalendarAstronomer$4;-><init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
const-wide v3, 0x3f830d3e7ef4bd1bL
const-wide v5, 0x3f8441500d4c900dL
const-wide/32 v7, 0xea60
move-object v0, p0
move v2, p1
invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/impl/CalendarAstronomer;->riseOrSet(Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
move-result-wide v0
return-wide v0
.end method
.method public getMoonTime(DZ)J
.registers 13
new-instance v1, Lcom/ibm/icu/impl/CalendarAstronomer$3;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/CalendarAstronomer$3;-><init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
const-wide v4, 0x403d87d4abcb41d5L
const-wide/32 v6, 0xea60
move-object v0, p0
move-wide v2, p1
move v8, p3
invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/impl/CalendarAstronomer;->timeOfAngle(Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
move-result-wide v0
return-wide v0
.end method
.method public getMoonTime(Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;Z)J
.registers 5
iget-wide v0, p1, Lcom/ibm/icu/impl/CalendarAstronomer$MoonAge;->value:D
invoke-virtual {p0, v0, v1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J
move-result-wide v0
return-wide v0
.end method
.method public getSunLongitude()D
.registers 6
iget-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
const-wide/16 v3, 0x1
cmpl-double v1, v1, v3
if-nez v1, :cond_1a
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getJulianDay()D
move-result-wide v1
invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude(D)[D
move-result-object v0
const/4 v1, 0x0
aget-wide v1, v0, v1
iput-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
const/4 v1, 0x1
aget-wide v1, v0, v1
iput-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->meanAnomalySun:D
:cond_1a
iget-wide v1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->sunLongitude:D
return-wide v1
.end method
.method  getSunLongitude(D)[D
.registers 15
const-wide v10, 0x4013bdaf8cee89a2L
const-wide v6, 0x4142ad09c0000000L
sub-double v0, p1, v6
const-wide v6, 0x3f919d9bcdd8ac02L
mul-double/2addr v6, v0
invoke-static {v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v2
const-wide v6, 0x4013818b33ddeee0L
add-double/2addr v6, v2
sub-double/2addr v6, v10
invoke-static {v6, v7}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v4
const/4 v6, 0x2
new-array v6, v6, [D
const/4 v7, 0x0
const-wide v8, 0x3f911d3671ac14c6L
invoke-direct {p0, v4, v5, v8, v9}, Lcom/ibm/icu/impl/CalendarAstronomer;->trueAnomaly(DD)D
move-result-wide v8
add-double/2addr v8, v10
invoke-static {v8, v9}, Lcom/ibm/icu/impl/CalendarAstronomer;->norm2PI(D)D
move-result-wide v8
aput-wide v8, v6, v7
const/4 v7, 0x1
aput-wide v4, v6, v7
return-object v6
.end method
.method public getSunPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
.registers 5
invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunLongitude()D
move-result-wide v0
const-wide/16 v2, 0x0
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->eclipticToEquatorial(DD)Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
move-result-object v0
return-object v0
.end method
.method public getSunRiseSet(Z)J
.registers 17
iget-wide v13, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
add-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
div-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
mul-long/2addr v0, v2
iget-wide v2, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->fGmtOffset:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x2932e00
add-long v9, v0, v2
if-eqz p1, :cond_3f
const/4 v0, -0x6
:goto_1a
const v1, 0x36ee80
mul-int/2addr v0, v1
int-to-long v0, v0
add-long/2addr v0, v9
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
new-instance v1, Lcom/ibm/icu/impl/CalendarAstronomer$2;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/CalendarAstronomer$2;-><init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
const-wide v3, 0x3f830d3e7ef4bd1bL
const-wide v5, 0x3f8441500d4c900dL
const-wide/16 v7, 0x1388
move-object v0, p0
move/from16 v2, p1
invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/impl/CalendarAstronomer;->riseOrSet(Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;ZDDJ)J
move-result-wide v11
invoke-virtual {p0, v13, v14}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
return-wide v11
:cond_3f
const/4 v0, 0x6
goto :goto_1a
.end method
.method public getSunTime(DZ)J
.registers 13
new-instance v1, Lcom/ibm/icu/impl/CalendarAstronomer$1;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/CalendarAstronomer$1;-><init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
const-wide v4, 0x4076d3e003ab862bL
const-wide/32 v6, 0xea60
move-object v0, p0
move-wide v2, p1
move v8, p3
invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/impl/CalendarAstronomer;->timeOfAngle(Lcom/ibm/icu/impl/CalendarAstronomer$AngleFunc;DDJZ)J
move-result-wide v0
return-wide v0
.end method
.method public getSunTime(Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;Z)J
.registers 5
iget-wide v0, p1, Lcom/ibm/icu/impl/CalendarAstronomer$SolarLongitude;->value:D
invoke-virtual {p0, v0, v1, p2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunTime(DZ)J
move-result-wide v0
return-wide v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
return-wide v0
.end method
.method public local(J)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/util/Date;
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I
move-result v1
int-to-long v1, v1
sub-long v1, p1, v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public setDate(Ljava/util/Date;)V
.registers 4
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V
return-void
.end method
.method public setJulianDay(D)V
.registers 7
const-wide v0, 0x4194997000000000L
mul-double/2addr v0, p1
double-to-long v0, v0
const-wide v2, -0xbfc83e532200L
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->clearCache()V
iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->julianDay:D
return-void
.end method
.method public setTime(J)V
.registers 3
iput-wide p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer;->time:J
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->clearCache()V
return-void
.end method