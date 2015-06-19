.class Lcom/gindin/zmanim/calendar/JewishHoliday$PurimKatan;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;
.source "JewishHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/calendar/JewishHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurimKatan"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    const/4 v0, 0x5

    const/16 v1, 0xe

    const-string v2, "Purim Katan"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;-><init>(IILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V

    return-void
.end method


# virtual methods
.method public isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;->isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;->isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
