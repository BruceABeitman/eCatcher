.class  Lcom/gindin/zmanim/calendar/JewishHoliday$YomHaAtzmaut;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;
.source "JewishHoliday.java"
.method constructor <init>()V
.registers 4
const/16 v0, 0x8
const/4 v1, 0x5
const-string v2, "Yom Ha\'Atzmaut"
invoke-direct {p0, v0, v1, v2}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;-><init>(IILjava/lang/String;)V
return-void
.end method
.method protected getDateAdjustment(Lcom/gindin/zmanim/calendar/HebrewCalendar;)I
.registers 9
const/4 v6, 0x7
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p1, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v3
iget v4, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$YomHaAtzmaut;->month:I
iget v5, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$YomHaAtzmaut;->date:I
invoke-virtual {v2, v3, v4, v5}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->set(III)V
const/4 v0, 0x0
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v2
invoke-virtual {v2, v6}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v1
const/4 v2, 0x6
if-ne v2, v1, :cond_1f
const/4 v0, -0x1
:goto_1e
:cond_1e
return v0
:cond_1f
if-ne v6, v1, :cond_23
const/4 v0, -0x2
goto :goto_1e
:cond_23
const/4 v2, 0x2
if-ne v2, v1, :cond_1e
const/4 v0, 0x1
goto :goto_1e
.end method