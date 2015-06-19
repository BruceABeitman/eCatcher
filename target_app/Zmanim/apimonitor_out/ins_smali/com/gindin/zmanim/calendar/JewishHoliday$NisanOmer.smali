.class  Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
.source "JewishHoliday.java"
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-void
.end method
.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
.registers 5
const/4 v0, 0x7
const/16 v1, 0x10
const/16 v2, 0xe
invoke-direct {p0, v0, v1, v2, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;-><init>(IIILcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-void
.end method
.method protected newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;
.registers 3
new-instance v0, Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;
invoke-direct {v0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-object v0
.end method
.method protected bridge synthetic newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
.registers 3
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;->newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$NisanOmer;
move-result-object v0
return-object v0
.end method