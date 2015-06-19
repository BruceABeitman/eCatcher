.class public Lcom/gindin/zmanim/calendar/HebrewDateFormatter;
.super Ljava/lang/Object;
.source "HebrewDateFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gindin/zmanim/calendar/HebrewDateFormatter$1;
    }
.end annotation


# instance fields
.field private final secularDateFormatter:Ljava/text/DateFormat;

.field private final timeFormatter:Ljava/text/DateFormat;

.field private final zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->timeFormatter:Ljava/text/DateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;

    :goto_f
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->secularDateFormatter:Ljava/text/DateFormat;

    return-void

    :cond_16
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->timeFormatter:Ljava/text/DateFormat;

    new-instance v0, Lcom/gindin/zmanim/times/ZmanRounder;

    invoke-direct {v0}, Lcom/gindin/zmanim/times/ZmanRounder;-><init>()V

    iput-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;

    goto :goto_f
.end method


# virtual methods
.method public formatHebrewDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v0

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v3

    packed-switch v2, :pswitch_data_78

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_47
    const-string v1, "Nisan"

    goto :goto_25

    :pswitch_4a
    const-string v1, "Iyar"

    goto :goto_25

    :pswitch_4d
    const-string v1, "Sivan"

    goto :goto_25

    :pswitch_50
    const-string v1, "Tamuz"

    goto :goto_25

    :pswitch_53
    const-string v1, "Av"

    goto :goto_25

    :pswitch_56
    const-string v1, "Elul"

    goto :goto_25

    :pswitch_59
    const-string v1, "Tishri"

    goto :goto_25

    :pswitch_5c
    const-string v1, "Heshvan"

    goto :goto_25

    :pswitch_5f
    const-string v1, "Kislev"

    goto :goto_25

    :pswitch_62
    const-string v1, "Tevet"

    goto :goto_25

    :pswitch_65
    const-string v1, "Shevat"

    goto :goto_25

    :pswitch_68
    invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isLeapYear()Z

    move-result v4

    if-eqz v4, :cond_71

    const-string v1, "Adar II"

    goto :goto_25

    :cond_71
    const-string v1, "Adar"

    goto :goto_25

    :pswitch_74
    const-string v1, "Adar I"

    goto :goto_25

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_74
        :pswitch_68
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method public formatSecularDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :goto_d
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->secularDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_24
    const-string v1, "Sun"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_2a
    const-string v1, "Mon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_30
    const-string v1, "Tue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_36
    const-string v1, "Wed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_3c
    const-string v1, "Thur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_42
    const-string v1, "Fri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_48
    const-string v1, "Shabbat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
    .end packed-switch
.end method

.method public formatSecularDate(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :goto_d
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->secularDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_24
    const-string v1, "Sun"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_2a
    const-string v1, "Mon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_30
    const-string v1, "Tue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_36
    const-string v1, "Wed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_3c
    const-string v1, "Thur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_42
    const-string v1, "Fri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_48
    const-string v1, "Shabbat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2a
        :pswitch_30
        :pswitch_36
        :pswitch_3c
        :pswitch_42
        :pswitch_48
    .end packed-switch
.end method

.method public formatZmanTime(Lcom/gindin/zmanim/times/Zman;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/gindin/zmanim/times/Zman;->getTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v1, "N/A"

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/gindin/zmanim/calendar/HebrewDateFormatter$1;->$SwitchMap$com$gindin$zmanim$times$Zmanim$Type:[I

    iget-object v2, p1, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-virtual {v2}, Lcom/gindin/zmanim/times/Zmanim$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    :cond_1a
    :goto_1a
    monitor-enter p0

    :try_start_1b
    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->timeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    goto :goto_8

    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v1

    :pswitch_26
    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;

    invoke-virtual {v1, v0}, Lcom/gindin/zmanim/times/ZmanRounder;->roundToLatestMinute(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1a

    :pswitch_2d
    iget-object v1, p0, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->zmanRounder:Lcom/gindin/zmanim/times/ZmanRounder;

    invoke-virtual {v1, v0}, Lcom/gindin/zmanim/times/ZmanRounder;->roundToEarliestMinute(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1a

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
