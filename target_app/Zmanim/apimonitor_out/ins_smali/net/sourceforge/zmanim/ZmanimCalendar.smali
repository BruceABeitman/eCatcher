.class public Lnet/sourceforge/zmanim/ZmanimCalendar;
.super Lnet/sourceforge/zmanim/AstronomicalCalendar;
.source "ZmanimCalendar.java"
.field protected static final ZENITH_16_POINT_1:D = 106.1
.field protected static final ZENITH_8_POINT_5:D = 98.5
.field private static final serialVersionUID:J = 0x1L
.field private candleLightingOffset:D
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>()V
const-wide/high16 v0, 0x4032
iput-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D
return-void
.end method
.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
.registers 4
invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/AstronomicalCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
const-wide/high16 v0, 0x4032
iput-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-ne p0, p1, :cond_6
move v2, v5
:goto_5
return v2
:cond_6
instance-of v2, p1, Lnet/sourceforge/zmanim/ZmanimCalendar;
if-nez v2, :cond_c
move v2, v4
goto :goto_5
:cond_c
move-object v0, p1
check-cast v0, Lnet/sourceforge/zmanim/ZmanimCalendar;
move-object v1, v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
invoke-virtual {v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v2
invoke-virtual {v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v3
invoke-virtual {v2, v3}, Lnet/sourceforge/zmanim/util/GeoLocation;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
move-result-object v2
invoke-virtual {v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
move v2, v5
goto :goto_5
:cond_3c
move v2, v4
goto :goto_5
.end method
.method public getAlos72()Ljava/util/Date;
.registers 4
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
const-wide/32 v1, -0x41eb00
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getAlosHashachar()Ljava/util/Date;
.registers 3
const-wide v0, 0x405a866666666666L
invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunriseOffsetByDegrees(D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getCandelLighting()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunset()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCandleLightingOffset()D
move-result-wide v1
neg-double v1, v1
const-wide v3, 0x40ed4c0000000000L
mul-double/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getCandleLightingOffset()D
.registers 3
iget-wide v0, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D
return-wide v0
.end method
.method public getChatzos()Ljava/util/Date;
.registers 2
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunTransit()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getMinchaGedola()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J
move-result-wide v1
long-to-double v1, v1
const-wide/high16 v3, 0x401a
mul-double/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getMinchaKetana()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J
move-result-wide v1
long-to-double v1, v1
const-wide/high16 v3, 0x4023
mul-double/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getPlagHamincha()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J
move-result-wide v1
long-to-double v1, v1
const-wide v3, 0x4025800000000000L
mul-double/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getShaahZmanisGra()J
.registers 3
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
move-result-wide v0
return-wide v0
.end method
.method public getShaahZmanisMGA()J
.registers 3
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais72()Ljava/util/Date;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
move-result-wide v0
return-wide v0
.end method
.method public getSofZmanShmaGRA()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J
move-result-wide v1
const-wide/16 v3, 0x3
mul-long/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getSofZmanShmaMGA()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisMGA()J
move-result-wide v1
const-wide/16 v3, 0x3
mul-long/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getSofZmanTfilaGRA()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunrise()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisGra()J
move-result-wide v1
const-wide/16 v3, 0x4
mul-long/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getSofZmanTfilaMGA()Ljava/util/Date;
.registers 6
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAlos72()Ljava/util/Date;
move-result-object v0
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getShaahZmanisMGA()J
move-result-wide v1
const-wide/16 v3, 0x4
mul-long/2addr v1, v3
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getSolarMidnight()Ljava/util/Date;
.registers 8
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lnet/sourceforge/zmanim/ZmanimCalendar;
invoke-virtual {v0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v3
const/4 v4, 0x5
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunset()Ljava/util/Date;
move-result-object v2
invoke-virtual {v0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunrise()Ljava/util/Date;
move-result-object v1
invoke-virtual {p0, v2, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTemporalHour(Ljava/util/Date;Ljava/util/Date;)J
move-result-wide v3
const-wide/16 v5, 0x6
mul-long/2addr v3, v5
invoke-virtual {p0, v2, v3, v4}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v3
return-object v3
.end method
.method public getTzais()Ljava/util/Date;
.registers 3
const-wide v0, 0x4058a00000000000L
invoke-virtual {p0, v0, v1}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSunsetOffsetByDegrees(D)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getTzais72()Ljava/util/Date;
.registers 4
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;
move-result-object v0
const-wide/32 v1, 0x41eb00
invoke-virtual {p0, v0, v1, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x11
mul-int/lit8 v1, v0, 0x25
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/lit16 v0, v1, 0x275
mul-int/lit8 v1, v0, 0x25
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Calendar;->hashCode()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x25
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getGeoLocation()Lnet/sourceforge/zmanim/util/GeoLocation;
move-result-object v2
invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/GeoLocation;->hashCode()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x25
invoke-virtual {p0}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getAstronomicalCalculator()Lnet/sourceforge/zmanim/util/AstronomicalCalculator;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v0, v1
return v0
.end method
.method public setCandleLightingOffset(D)V
.registers 3
iput-wide p1, p0, Lnet/sourceforge/zmanim/ZmanimCalendar;->candleLightingOffset:D
return-void
.end method