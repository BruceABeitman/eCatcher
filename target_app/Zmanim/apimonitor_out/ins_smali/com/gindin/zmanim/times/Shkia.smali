.class  Lcom/gindin/zmanim/times/Shkia;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "Shkia.java"
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 4
sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->Shkia:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {p1}, Lcom/gindin/zmanim/times/Shkia;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
return-void
.end method
.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.registers 8
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/gindin/zmanim/times/Shkia$1;
const-string v1, "Sunset"
const-string v2, "The exact sunset time."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Shkia:Lcom/gindin/zmanim/times/Zmanim$Type;
const/4 v4, 0x0
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/Shkia$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v6
.end method