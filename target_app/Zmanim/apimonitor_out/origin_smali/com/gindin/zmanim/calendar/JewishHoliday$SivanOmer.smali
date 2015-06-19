.class Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;
.super Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
.source "JewishHoliday.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/calendar/JewishHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SivanOmer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gindin/zmanim/calendar/JewishHoliday$Omer",
        "<",
        "Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V

    return-void
.end method

.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V
    .registers 5

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;-><init>(IIILcom/gindin/zmanim/calendar/HebrewCalendar;)V

    return-void
.end method


# virtual methods
.method protected getCountOffset()I
    .registers 2

    const/16 v0, 0x2c

    return v0
.end method

.method protected bridge synthetic newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$Omer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;->newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;

    move-result-object v0

    return-object v0
.end method

.method protected newOmerForDate(Lcom/gindin/zmanim/calendar/HebrewCalendar;)Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;
    .registers 3

    new-instance v0, Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;

    invoke-direct {v0, p1}, Lcom/gindin/zmanim/calendar/JewishHoliday$SivanOmer;-><init>(Lcom/gindin/zmanim/calendar/HebrewCalendar;)V

    return-object v0
.end method
