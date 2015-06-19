.class  Lcom/gindin/zmanim/times/AlotHashachar;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "AlotHashachar.java"
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "16.1 deg"
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 4
sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {p1}, Lcom/gindin/zmanim/times/AlotHashachar;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
return-void
.end method
.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.registers 8
const/4 v4, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$1;
const-string v1, "120 Minutes"
const-string v2, "Before sea level sunrise, based on the time to walk the distance of 5 Mil at 24 minutes a Mil."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$2;
const-string v1, "120 Minutes Zmaniyot"
const-string v2, "GR\'A and the Baal Hatanya, based on 1/6th of the day before sea level sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$3;
const-string v1, "16.1 deg"
const-string v2, "When the sun is 16.1 degrees below the eastern geometric horizon before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/AlotHashachar$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$4;
const-string v1, "18 deg"
const-string v2, "When the sun is 18 degrees below the eastern geometric horizon before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$5;
const-string v1, "19.8 deg"
const-string v2, "When the sun is 19.8 degrees below the eastern geometric horizon before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$6;
const-string v1, "26 deg"
const-string v2, "When the sun is 26 degrees below the eastern geometric horizon before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$7;
const-string v1, "60 Minutes"
const-string v2, "Based on the time to walk 4 Mil at 15 minutes/Mil."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$8;
const-string v1, "72 Minutes"
const-string v2, "Based on the time to walk 4 Mil at 18 minutes/Mil."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/AlotHashachar$8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$9;
const-string v1, "GR\'A 72 Minutes Zmaniyot"
const-string v2, "Based on 1/10th of the day before sea level sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$10;
const-string v1, "90 Minutes"
const-string v2, "Based on the time to walk 4 Mil at 22.5 minutes a Mil."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$10;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$11;
const-string v1, "GR\'A 90 Minutes Zmaniyot"
const-string v2, "Based on 1/8th of the day before sea level sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$12;
const-string v1, "96 Minutes"
const-string v2, "Based on the time to walk the distance of 4 Mil at 24 minutes/Mil."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$12;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar$13;
const-string v1, "GR\'A 96 Minutes Zmaniyot"
const-string v2, "Based on 1/8th of the day before sea level sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->Alot:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/AlotHashachar$13;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v6
.end method
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
.registers 2
const-string v0, "16.1 deg"
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/AlotHashachar;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
move-result-object v0
return-object v0
.end method