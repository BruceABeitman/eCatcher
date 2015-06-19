.class  Lcom/gindin/zmanim/calendar/JewishHoliday$RoshHashana;
.super Lcom/gindin/zmanim/calendar/JewishHoliday;
.source "JewishHoliday.java"
.method private constructor <init>()V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
const/4 v2, 0x2
const-string v3, "Rosh Hashanah"
invoke-direct {p0, v0, v1, v2, v3}, Lcom/gindin/zmanim/calendar/JewishHoliday;-><init>(IIILjava/lang/String;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V
.registers 2
invoke-direct {p0}, Lcom/gindin/zmanim/calendar/JewishHoliday$RoshHashana;-><init>()V
return-void
.end method
.method public isErev(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
.registers 7
const/4 v4, 0x1
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v0
invoke-virtual {p1, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v1
iget v2, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$RoshHashana;->month:I
iget v3, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$RoshHashana;->date:I
invoke-virtual {v0, v1, v2, v3}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->set(III)V
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v0
const/4 v1, 0x5
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v0
invoke-virtual {v0, v4, v4}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v0
invoke-static {p1, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$RoshHashana;->isSameDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v0
return v0
.end method