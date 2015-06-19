.class public Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.super Ljava/lang/Object;
.source "HebrewZmanimCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;,
        Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;
    }
.end annotation


# instance fields
.field private final dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

.field private final hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final today:Ljava/util/Calendar;

.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

.field private final zmanimFactory:Lcom/gindin/zmanim/times/ZmanimFactory;


# direct methods
.method public constructor <init>(Lcom/gindin/zmanim/android/location/ZmanimLocation;Lcom/gindin/zmanim/calendar/HebrewDateFormatter;Ljava/util/Calendar;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;Lcom/gindin/zmanim/calendar/HebrewDateFormatter;)V

    if-eqz p3, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->syncToSecularCalendar(Ljava/util/Calendar;Z)V

    :cond_9
    return-void
.end method

.method public constructor <init>(Lnet/sourceforge/zmanim/util/GeoLocation;Lcom/gindin/zmanim/calendar/HebrewDateFormatter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewCalendar;

    invoke-direct {v0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;-><init>()V

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->listeners:Ljava/util/List;

    if-eqz p1, :cond_2a

    new-instance v0, Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-direct {v0, p1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    :goto_20
    iput-object p2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

    new-instance v0, Lcom/gindin/zmanim/times/ZmanimFactory;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/times/ZmanimFactory;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimFactory:Lcom/gindin/zmanim/times/ZmanimFactory;

    return-void

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    goto :goto_20
.end method

.method static synthetic access$000(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewCalendar;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewDateFormatter;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

    return-object v0
.end method

.method private adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    if-eqz v2, :cond_21

    invoke-direct {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayAfterSunset()Z

    move-result v2

    if-eqz v2, :cond_21

    move v0, v3

    :goto_d
    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    invoke-virtual {v2, v4, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V

    :cond_14
    invoke-interface {p1, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;->dateAdjusted(Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V

    :cond_20
    return-object v1

    :cond_21
    const/4 v2, 0x0

    move v0, v2

    goto :goto_d
.end method

.method private isSetForToday()Z
    .registers 11

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v4, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v4}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_38

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v2, v4, :cond_38

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_38

    move v4, v7

    :goto_37
    return v4

    :cond_38
    const/4 v4, 0x0

    goto :goto_37
.end method

.method private isTodayAfterSunset()Z
    .registers 3

    invoke-direct {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isSetForToday()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    sget-object v1, Lcom/gindin/zmanim/times/Zmanim$Type;->Shkia:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-virtual {p0, v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->get(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gindin/zmanim/times/Zmanim;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/times/Zman;

    invoke-virtual {v1}, Lcom/gindin/zmanim/times/Zman;->getTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->today:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    goto :goto_7
.end method

.method private syncToSecularCalendar(Ljava/util/Calendar;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->syncToSecularCalendar(Ljava/util/Calendar;Z)V

    return-void
.end method

.method private syncToSecularCalendar(Ljava/util/Calendar;Z)V
    .registers 7

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v2, p1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->setCalendar(Ljava/util/Calendar;)V

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->setTime(Ljava/util/Date;)V

    if-eqz p2, :cond_26

    iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;

    invoke-interface {v1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;->dateChanged()V

    goto :goto_16

    :cond_26
    return-void
.end method


# virtual methods
.method public addListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public formatHebrewDate()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public formatSecularDate()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;

    invoke-virtual {v0, v1}, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->formatSecularDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->formatSecularDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public formatZmanTime(Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/gindin/zmanim/times/Zman;->getCachedFormattedTime()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;

    invoke-virtual {v1, p1}, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->formatZmanTime(Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gindin/zmanim/times/Zman;->setCachedFormattedTime(Ljava/lang/String;)V

    :cond_f
    return-object v0
.end method

.method public get(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimFactory:Lcom/gindin/zmanim/times/ZmanimFactory;

    invoke-virtual {v0, p1}, Lcom/gindin/zmanim/times/ZmanimFactory;->getOrCreate(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;

    move-result-object v0

    return-object v0
.end method

.method public getSecularDate()Ljava/util/Calendar;
    .registers 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public getTodaysDescription()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayRoshChodesh()Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayInTheOmer()Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayATaanit()Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_50
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_25

    :cond_5e
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    :cond_6c
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b
.end method

.method public getZmanimCalendar()Lcom/gindin/zmanim/calendar/ZmanimCalendar;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    return-object v0
.end method

.method public goToSecularDate(III)V
    .registers 6

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->syncToSecularCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public isTodayAHoliday()Lcom/gindin/zmanim/calendar/JewishHoliday;
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$2;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$2;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/calendar/JewishHoliday;

    return-object p0
.end method

.method public isTodayATaanit()Lcom/gindin/zmanim/calendar/JewishHoliday;
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/calendar/JewishHoliday;

    return-object p0
.end method

.method public isTodayInTheOmer()Lcom/gindin/zmanim/calendar/JewishHoliday;
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$5;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$5;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/calendar/JewishHoliday;

    return-object p0
.end method

.method public isTodayRoshChodesh()Lcom/gindin/zmanim/calendar/JewishHoliday;
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$4;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$4;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/calendar/JewishHoliday;

    return-object p0
.end method

.method public nextDay()V
    .registers 4

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->syncToSecularCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public previousDay()V
    .registers 4

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v1}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->syncToSecularCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public removeListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public showCandlelighting()Z
    .registers 2

    new-instance v0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$6;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$6;-><init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->adjustHebrewDateIfNecessary(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
