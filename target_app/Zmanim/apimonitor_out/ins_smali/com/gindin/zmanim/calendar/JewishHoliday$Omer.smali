.class abstract Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;
.source "JewishHoliday.java"
.method constructor <init>(IIILcom/gindin/zmanim/calendar/HebrewCalendar;)V
.registers 11
const-string v4, "Omer"
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;-><init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-void
.end method
.method public getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 3
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;->newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
move-result-object v0
return-object v0
.end method
.method protected abstract newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
.end method