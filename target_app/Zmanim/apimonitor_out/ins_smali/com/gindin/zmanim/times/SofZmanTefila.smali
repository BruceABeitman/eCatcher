.class  Lcom/gindin/zmanim/times/SofZmanTefila;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "SofZmanTefila.java"
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "GR\'A"
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
.registers 4
sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-static {p1}, Lcom/gindin/zmanim/times/SofZmanTefila;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V
return-void
.end method
.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.registers 8
const/4 v4, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$1;
const-string v1, "2 Hours before Chatzot"
const-string v2, "2 hours before chatzot."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$2;
const-string v1, "GR\'A"
const-string v2, "Based on the day as calculated from sunrise to sunset."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/SofZmanTefila$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$3;
const-string v1, "Chacham Yosef Harari-Raful"
const-string v2, "Based on the day starting at 1/10th of the day before sunrise and is usually calculated as ending 40 minutes after sunset."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$4;
const-string v1, "MG\'A"
const-string v2, "Based on alot being 72 minutes before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$5;
const-string v1, "MG\'A 120 Minutes"
const-string v2, "Based on alot being 120 minutes before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$6;
const-string v1, "MG\'A 16.1 deg"
const-string v2, "Based on alot being 16.1 degrees before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/SofZmanTefila$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$7;
const-string v1, "MG\'A 19.8 deg"
const-string v2, "Based on alot being 19.8 degrees before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$8;
const-string v1, "MG\'A 72 Minutes Zmaniyot"
const-string v2, "Based on alot being 72 minutes zmaniyot before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$9;
const-string v1, "MG\'A 90 Minutes"
const-string v2, "Based on alot being 90 minutes before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$10;
const-string v1, "MG\'A 90 Minutes Zmaniyot"
const-string v2, "Based on alot being 90 minutes zmaniyot before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$10;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$11;
const-string v1, "MG\'A 96 Minutes"
const-string v2, "Based on alot being 96 minutes before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila$12;
const-string v1, "MG\'A 96 Minutes Zmaniyot"
const-string v2, "Based on alot being 96 minutes zmaniyot before sunrise."
sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->SofZmanTefila:Lcom/gindin/zmanim/times/Zmanim$Type;
invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/SofZmanTefila$12;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v6
.end method
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
.registers 2
const-string v0, "GR\'A"
invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/SofZmanTefila;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;
move-result-object v0
return-object v0
.end method