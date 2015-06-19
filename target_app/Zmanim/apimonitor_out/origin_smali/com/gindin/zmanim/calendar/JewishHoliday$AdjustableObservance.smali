.class abstract Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;
.source "JewishHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/calendar/JewishHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AdjustableObservance"
.end annotation


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;-><init>(IILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V

    return-void
.end method


# virtual methods
.method protected abstract getDateAdjustment(Lcom/gindin/zmanim/calendar/HebrewCalendar;)I
.end method

.method public isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
    .registers 6

    iget v1, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->month:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_b

    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_b
    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->getDateAdjustment(Lcom/gindin/zmanim/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V

    invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->isSameDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z

    move-result v1

    goto :goto_a
.end method

.method public isOn(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
    .registers 5

    iget v1, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->month:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_b

    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_b
    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->getDateAdjustment(Lcom/gindin/zmanim/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V

    invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;->isSameDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z

    move-result v1

    goto :goto_a
.end method
