.class  Lcom/gindin/zmanim/calendar/JewishHoliday$Sukkot;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;
.source "JewishHoliday.java"
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$Sukkot;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-void
.end method
.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
.registers 8
const/4 v1, 0x0
const/16 v2, 0xf
const/4 v3, 0x6
const-string v4, "Sukkot"
move-object v0, p0
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;-><init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-void
.end method
.method public getForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday;
.registers 3
new-instance v0, Lcom/gindin/zmanim/calendar/JewishHoliday$Sukkot;
invoke-direct {v0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Sukkot;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
return-object v0
.end method