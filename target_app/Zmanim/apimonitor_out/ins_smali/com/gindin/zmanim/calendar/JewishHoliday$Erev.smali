.class  Lcom/gindin/zmanim/calendar/JewishHoliday$Erev;
.super Lcom/gindin/zmanim/calendar/JewishHoliday;
.source "JewishHoliday.java"
.field private final showCandles:Z
.method private constructor <init>(Lcom/gindin/zmanim/calendar/JewishHoliday;)V
.registers 7
iget v0, p1, Lcom/gindin/zmanim/calendar/JewishHoliday;->month:I
iget v1, p1, Lcom/gindin/zmanim/calendar/JewishHoliday;->date:I
const/4 v2, 0x1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Erev "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
#getter for: Lcom/gindin/zmanim/calendar/JewishHoliday;->name:Ljava/lang/String;
invoke-static {p1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->access$500(Lcom/gindin/zmanim/calendar/JewishHoliday;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/gindin/zmanim/calendar/JewishHoliday;-><init>(IIILjava/lang/String;)V
invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/JewishHoliday;->showCandlelighting()Z
move-result v0
iput-boolean v0, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$Erev;->showCandles:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/gindin/zmanim/calendar/JewishHoliday;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Erev;-><init>(Lcom/gindin/zmanim/calendar/JewishHoliday;)V
return-void
.end method
.method public showCandlelighting()Z
.registers 2
iget-boolean v0, p0, Lcom/gindin/zmanim/calendar/JewishHoliday$Erev;->showCandles:Z
return v0
.end method