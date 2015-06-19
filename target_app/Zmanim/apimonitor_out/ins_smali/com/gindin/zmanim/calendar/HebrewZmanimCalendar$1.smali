.class  Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;
.super Ljava/lang/Object;
.source "HebrewZmanimCalendar.java"
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;
.field final synthetic this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;->this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic dateAdjusted(Z)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;->dateAdjusted(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public dateAdjusted(Z)Ljava/lang/String;
.registers 6
const-string v0, ""
if-eqz p1, :cond_6
const-string v0, "Or le "
:cond_6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;->this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
#getter for: Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->dateFormatter:Lcom/gindin/zmanim/calendar/HebrewDateFormatter;
invoke-static {v2}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->access$100(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewDateFormatter;
move-result-object v2
iget-object v3, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$1;->this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;
#getter for: Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;
invoke-static {v3}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->access$000(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewCalendar;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/gindin/zmanim/calendar/HebrewDateFormatter;->formatHebrewDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method