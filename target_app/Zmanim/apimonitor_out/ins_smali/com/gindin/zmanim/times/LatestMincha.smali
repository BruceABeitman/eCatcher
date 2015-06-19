.class  Lcom/gindin/zmanim/times/LatestMincha;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "LatestMincha.java"
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "Hacham Ovadia Yosef"
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 4
sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->LatestMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {p1}, Lcom/gindin/zmanim/times/LatestMincha;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
return-void
.end method
.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.registers 8
const/4 v4, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/gindin/zmanim/times/LatestMincha$1;
const-string v1, "Mishna Berura"
const-string v2, "Daily Halacha\'s representation of the Mishna Berura\'s ruling, that mincha must be FINISHED by sunset."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->LatestMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/LatestMincha$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/LatestMincha$2;
const-string v1, "Hacham Ovadia Yosef"
const-string v2, "Daily Halacha\'s representation of Chacham Ovadia Yosef\'s ruling that mincha can be prayed so long as you are beginning NO LATER THAN 13.5 minutes after sunset."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->LatestMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/LatestMincha$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/LatestMincha$3;
const-string v1, "Hacham Ben Sion"
const-string v2, "Daily Halacha\'s representation of Chacham Ben Sion Abba Shaul\'s ruling, that mincha can be prayed so long as you FINISH NO LATER THAN 26 minutes after sunset."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->LatestMincha:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/LatestMincha$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v6
.end method
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
.registers 2
const-string v0, "Hacham Ovadia Yosef"
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/LatestMincha;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
move-result-object v0
return-object v0
.end method