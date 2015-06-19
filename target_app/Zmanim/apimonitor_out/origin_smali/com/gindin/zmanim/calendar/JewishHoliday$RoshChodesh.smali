.class Lcom/gindin/zmanim/calendar/JewishHoliday$RoshChodesh;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;
.source "JewishHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/calendar/JewishHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoshChodesh"
.end annotation


# direct methods
.method private constructor <init>(IIILjava/lang/String;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rosh Chodesh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/gindin/zmanim/calendar/JewishHoliday$Observance;-><init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Lcom/gindin/zmanim/calendar/JewishHoliday$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gindin/zmanim/calendar/JewishHoliday$RoshChodesh;-><init>(IIILjava/lang/String;)V

    return-void
.end method
