.class public Lcom/gindin/zmanim/times/BeinHashmashot;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "BeinHashmashot.java"
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "2 Stars"
.method public constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 4
sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {p1}, Lcom/gindin/zmanim/times/BeinHashmashot;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
return-void
.end method
.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/gindin/zmanim/times/BeinHashmashot$1;
const-string v2, "13 Degrees"
const-string v3, "Based on Rabainu Tam\'s calculation as the time the sun is 13\u00b0 below geometric zenith (90\u00b0)."
sget-object v4, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v1, v2, v3, v4, p0}, Lcom/gindin/zmanim/times/BeinHashmashot$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/gindin/zmanim/times/BeinHashmashot$2;
const-string v2, "58.5 Minutes"
const-string v3, "Based on Rabainu Tam\'s calculation as a 58.5 minute offset after sunset."
sget-object v4, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v1, v2, v3, v4, p0}, Lcom/gindin/zmanim/times/BeinHashmashot$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/gindin/zmanim/times/BeinHashmashot$3;
const-string v2, "13.5 Minutes"
const-string v3, "Based on 13.5 minutes (3/4 of an 18 minute mil before shkiah calculated as 7.083\u00b0."
sget-object v4, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v1, v2, v3, v4, p0}, Lcom/gindin/zmanim/times/BeinHashmashot$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/gindin/zmanim/times/BeinHashmashot$4;
const-string v2, "2 Stars"
const-string v3, "Based on Rabainu Tam\'s calculation in the opinion of the Divray Yosef (see Yisrael Vehazmanim) of 5/18th (27.77%) of the time between alot (calculated as 19.8\u00b0 before sunrise) and sunrise."
sget-object v4, Lcom/gindin/zmanim/times/Zmanim$Type;->BeinHashmashot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v1, v2, v3, v4, p0}, Lcom/gindin/zmanim/times/BeinHashmashot$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
.registers 2
const-string v0, "2 Stars"
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/BeinHashmashot;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
move-result-object v0
return-object v0
.end method