.class Lcom/gindin/zmanim/times/TzaitHacochavim;
.super Lcom/gindin/zmanim/times/Zmanim;
.source "TzaitHacochavim.java"


# static fields
.field private static final DEFAULT_ZMAN_NAME:Ljava/lang/String; = "8.5 deg"


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
    .registers 4

    sget-object v0, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-static {p1}, Lcom/gindin/zmanim/times/TzaitHacochavim;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;

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

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$1;

    const-string v1, "8.5 deg"

    const-string v2, "When the sun is 8.5 degrees below the western geometric horizon after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    const/4 v4, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/times/TzaitHacochavim$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$2;

    const-string v1, "MG\'A 120 Minutes"

    const-string v2, "Based on the time to walk a Mil in 24 minutes, for a total of 120 minutes based on the opinion of Ula who calculated tzait as 5 Mil after sea level shkiah."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$3;

    const-string v1, "GR\'A 120 Minutes Zmaniyot"

    const-string v2, "120 minutes zmaniyot after sea level sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$4;

    const-string v1, "16.1 deg"

    const-string v2, "When the sun is 16.1 degrees below the western geometric horizon after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$5;

    const-string v1, "18 deg"

    const-string v2, "When the sun is 18 degrees below the western geometric horizon after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$6;

    const-string v1, "19.8 deg"

    const-string v2, "When the sun is 19.8 degrees below the western geometric horizon after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$7;

    const-string v1, "26 deg"

    const-string v2, "When the sun is 26 degrees below the western geometric horizon after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$8;

    const-string v1, "Chavas Yair and Divray Malkiel"

    const-string v2, "Based on the time to walk 4 Mil at 15 minutes/Mil."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$9;

    const-string v1, "Rambam / Rabainu Tam"

    const-string v2, "Based on the time to walk 4 Mil at 18 minutes/Mil."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$10;

    const-string v1, "72 Minutes Zmaniyot"

    const-string v2, "Calculated as 72 minutes zmaniyot, or 1/10th of the day after sea level sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$10;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$11;

    const-string v1, "MG\'A 90 Minutes"

    const-string v2, "Based on the time to walk 5 Mil at 18 minutes/Mil."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$12;

    const-string v1, "GR\'A 90 Minutes Zmaniyot"

    const-string v2, "90 minutes zmaniyot after sea level sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$12;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$13;

    const-string v1, "96 Minutes"

    const-string v2, "96 minutes after sea level sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$13;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$14;

    const-string v1, "GR\'A 96 Minutes Zmaniyot"

    const-string v2, "96 minutes zmaniyot after sea level sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$14;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$15;

    const-string v1, "Chacham Yosef Harari-Raful"

    const-string v2, "Usually calculated as 40 minutes after sunset."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$15;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$16;

    const-string v1, "Geonim 5.95 deg"

    const-string v2, "Based on the sun\'s position at 5.95 degrees below the western horizon."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$16;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$17;

    const-string v1, "Geonim 7.083 deg"

    const-string v2, "Based on the sun\'s position at 7.083 degrees below the western horizon."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$17;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$18;

    const-string v1, "Geonim 8.5 deg"

    const-string v2, "Based on the sun\'s position at 8.5 degrees below the western horizon."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$18;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$19;

    const-string v1, "Seattle - EB"

    const-string v2, "Based on the Rhodesli Seattle Sephardic community\'s tradition."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$19;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim$20;

    const-string v1, "Seattle - SBH"

    const-string v2, "Based on the Turkish Seattle Sephardic community\'s tradition."

    sget-object v3, Lcom/gindin/zmanim/times/Zmanim$Type;->TzaitHacochavim:Lcom/gindin/zmanim/times/Zmanim$Type;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gindin/zmanim/times/TzaitHacochavim$20;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method


# virtual methods
.method public getDefault()Lcom/gindin/zmanim/times/Zman;
    .registers 2

    const-string v0, "8.5 deg"

    invoke-virtual {p0, v0}, Lcom/gindin/zmanim/times/TzaitHacochavim;->getByName(Ljava/lang/String;)Lcom/gindin/zmanim/times/Zman;

    move-result-object v0

    return-object v0
.end method
