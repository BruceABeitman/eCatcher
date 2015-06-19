.class  Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;
.source "JewishHoliday.java"
.field private final forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
.method constructor <init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
.registers 12
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;-><init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V
iput-object p5, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
return-void
.end method
.method protected getCountOffset()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getDescription()Ljava/lang/String;
.registers 8
const/4 v6, 0x1
invoke-super {p0}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;->getDescription()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
if-nez v2, :cond_b
move-object v2, v0
:goto_a
return-object v2
:cond_b
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
invoke-virtual {v3, v6}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->get(I)I
move-result v3
iget v4, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->month:I
iget v5, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->date:I
invoke-virtual {v2, v3, v4, v5}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->set(III)V
iget-object v2, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v3
invoke-static {v2, v3}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->isSameDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v2
if-eqz v2, :cond_46
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->getCountOffset()I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_a
:cond_46
const/4 v1, 0x1
:goto_47
iget v2, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->length:I
if-ge v1, v2, :cond_81
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v2
const/4 v3, 0x5
invoke-virtual {v2, v3, v6}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->add(II)V
iget-object v2, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->forDate:Lcom/gindin/zmanim/calendar/HebrewCalendar;
invoke-static {}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$600()Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v3
invoke-static {v2, v3}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->isSameDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;Lcom/gindin/zmanim/calendar/HebrewCalendar;)Z
move-result v2
if-eqz v2, :cond_7e
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
add-int/lit8 v3, v1, 0x1
invoke-virtual {p0}, Lcom/gindin/zmanim/calendar/JewishHoliday$DatedObservance;->getCountOffset()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_a
:cond_7e
add-int/lit8 v1, v1, 0x1
goto :goto_47
:cond_81
move-object v2, v0
goto :goto_a
.end method