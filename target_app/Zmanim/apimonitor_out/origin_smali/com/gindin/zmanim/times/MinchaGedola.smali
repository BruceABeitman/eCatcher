.class Lcom/gindin/zmanim/times/MinchaGedola;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "MinchaGedola.java"


# static fields
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "GR\'A"


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
    .registers 4

    sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-static {p1}, Lcom/gindin/zmanim/times/MinchaGedola;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/gindin/zmanim/times/Zmanim;-><init>(Lcom/gindin/zmanim/times/Zmanim$Type;Ljava/util/List;)V

    return-void
.end method

.method private static buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gindin/zmanim/calendar/ZmanimCalendar;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gindin/zmanim/times/Zman;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/gindin/zmanim/times/MinchaGedola$1;

    const-string v1, "GR\'A"

    const-string v2, "GR\'A and the Baal Hatanya, based on the day as calculated from sunrise to sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/MinchaGedola$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/MinchaGedola$2;

    const-string v1, "MG\'A 16.1 deg"

    const-string v2, "Magen Avraham, based on the day starting and ending 16.1 degrees below the horizon."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/MinchaGedola$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/MinchaGedola$3;

    const-string v1, "MG\'A 72 Minutes"

    const-string v2, "Magen Avraham, based onthe day starting 72 minutes before sunrise and ending 72 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/MinchaGedola$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/MinchaGedola$4;

    const-string v1, "Chacham Yosef Harari-Raful"

    const-string v2, "Based on the day starting 1/10th of the day before sunrise and and is usually calculated as ending 40 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->MinchaGedola:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/MinchaGedola$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method


# virtual methods
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
    .registers 2

    const-string v0, "GR\'A"

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/MinchaGedola;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;

    move-result-object v0

    return-object v0
.end method
