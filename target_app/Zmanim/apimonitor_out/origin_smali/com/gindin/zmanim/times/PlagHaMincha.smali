.class Lcom/gindin/zmanim/times/PlagHaMincha;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "PlagHaMincha.java"


# static fields
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "GR\'A"


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
    .registers 4

    sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-static {p1}, Lcom/gindin/zmanim/times/PlagHaMincha;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;

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

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$1;

    const-string v1, "GR\'A"

    const-string v2, "GR\'A and the Baal Hatanya, based on the day as calculated from sunrise to sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/PlagHaMincha$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$2;

    const-string v1, "MG\'A 120 Minutes"

    const-string v2, "MG\'A where the day runs from dawn to dusk. Dawn for this calculation is 120 minutes before sunrise and dusk is 120 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$3;

    const-string v1, "MG\'A 120 Minutes Zmaniyot"

    const-string v2, "MG\'A where the day runs from dawn to dusk. Dawn for this calculation is 120 minutes zemaniyot before sunrise and dusk is 120 minutes zemaniyot after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$4;

    const-string v1, "MG\'A 16.1 deg"

    const-string v2, "Based on the day starting at alot 16.1 degrees and ending at tzait 16.1 degrees. This is calculated as 10.75 hours zmaniyot after dawn"

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/PlagHaMincha$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$5;

    const-string v1, "MG\'A 18 deg"

    const-string v2, "Based on the day starting at alot 18 degrees and ending at tzait 18 degrees."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$6;

    const-string v1, "MG\'A 19.8 deg"

    const-string v2, "Based on the the day starting at alot 19.8 degrees and ending at tzait 19.8 degrees."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$7;

    const-string v1, "MG\'A 26 deg"

    const-string v2, "Based on the day starting at alot 26 degrees and ending at tzait 26 degrees."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$8;

    const-string v1, "MG\'A 60 Minutes"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 60 minutes before sunrise and dusk is 60 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$9;

    const-string v1, "MG\'A 72 Minutes"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 72 minutes before sunrise and dusk is 72 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$10;

    const-string v1, "MG\'A 72 Minutes Zmaniyot"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 72 minutes zemaniyot before sunrise and dusk is 72 zemaniyot minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$10;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$11;

    const-string v1, "MG\'A 90 Minutes"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 90 minutes before sunrise and dusk is 90 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$12;

    const-string v1, "MG\'A 90 Minutes Zmaniyot"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 90 minutes zemaniyot before sunrise and dusk is 90 zemaniyot minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$12;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$13;

    const-string v1, "MG\'A 96 Minutes"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 96 minutes before sunrise and dusk is 96 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$13;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$14;

    const-string v1, "MG\'A 96 Minutes Zmaniyot"

    const-string v2, "MG\'A, based on the day running from dawn to dusk. Dawn for this calculation is 96 minutes zemaniyot before sunrise and dusk is 96 zemaniyot minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$14;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha$15;

    const-string v1, "Chacham Yosef Harari-Raful"

    const-string v2, "Based on Chacham Yosef Harari-Raful of Yeshivat Ateret Torah, that the day starts 1/10th of the day before sunrise and and is usually calculated as ending 40 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->PlagHaMincha:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/PlagHaMincha$15;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method


# virtual methods
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
    .registers 2

    const-string v0, "GR\'A"

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/PlagHaMincha;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;

    move-result-object v0

    return-object v0
.end method
