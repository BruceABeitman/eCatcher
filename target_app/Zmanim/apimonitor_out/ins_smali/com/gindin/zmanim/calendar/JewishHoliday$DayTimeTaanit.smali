.class  Lcom/gindin/zmanim/calendar/JewishHoliday$DayTimeTaanit;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;
.source "JewishHoliday.java"
.method private constructor <init>(IILjava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Ta\'anit "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$AdjustableObservance;-><init>(IILjava/lang/String;)V
return-void
.end method
.method synthetic constructor <init>(IILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/gindin/zmanim/calendar/JewishHoliday$DayTimeTaanit;-><init>(IILjava/lang/String;)V
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
iget v4, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DayTimeTaanit;->month:I
iget v5, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DayTimeTaanit;->date:I
invoke-virtual {v2, v3, v4, v5}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->set(III)V
const/4 v0, 0x0
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v2
invoke-virtual {v2, v6}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v1
if-ne v6, v1, :cond_1d
const/4 v0, 0x1
:cond_1d
return v0
.end method