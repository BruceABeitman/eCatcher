.class final Lcom/gindin/zmanim/times/SofZmanShema$11;
.super Lcom/gindin/zmanim/times/Zman;
.source "SofZmanShema.java"
.field final synthetic val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 5
iput-object p4, p0, Lcom/gindin/zmanim/times/SofZmanShema$11;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {p0, p1, p2, p3}, Lcom/gindin/zmanim/times/Zman;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;)V
return-void
.end method
.method protected calculate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/times/SofZmanShema$11;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSofZmanShmaMGA72MinutesZmanis()Ljava/util/Date;
move-result-object v0
return-object v0
.end method