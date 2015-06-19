.class public Lcom/gindin/zmanim/calendar/ZmanimCalendar;
.super Lnet/sourceforge/zmanim/ComplexZmanimCalendar;
.source "ZmanimCalendar.java"


# static fields
.field private static final MINUTES_AFTER_SUNSET_FOR_EB_TZAIT:I = 0x2d

.field private static final MINUTES_AFTER_SUNSET_FOR_MINCHA_BEN_SION_ABBA_SHAUL:I = 0x1a

.field private static final MINUTES_AFTER_SUNSET_FOR_MINCHA_OVADIA_YOSEF:I = 0xd

.field private static final MINUTES_AFTER_SUNSET_FOR_SBH_TZAIT:I = 0x2a

.field private static final MINUTE_MILLIS:J = 0xea60L


# direct methods
.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lnet/sourceforge/zmanim/ComplexZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    return-void
.end method


# virtual methods
.method public getLatestMinchaBenSion()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x17cdc0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMinchaMishnaBerura()Ljava/util/Date;
    .registers 2

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMinchaOvadiaYosef()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0xc5c10

    invoke-virtual {p0, v0, v1, v2}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNightChatzos()Ljava/util/Date;
    .registers 8

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSunset()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSunrise()Ljava/util/Date;

    move-result-object v1

    if-eqz v2, :cond_1b

    if-nez v1, :cond_1d

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return-object v3

    :cond_1d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v3

    goto :goto_1c
.end method

.method public getTzaitEzraBessaroth()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x2932e0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTzaitSephardicBikurHolim()Ljava/util/Date;
    .registers 4

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSeaLevelSunset()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v1, 0x2673c0

    invoke-virtual {p0, v0, v1, v2}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getTimeOffset(Ljava/util/Date;J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
