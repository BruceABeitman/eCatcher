.class Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;
.super Ljava/lang/Object;
.source "HebrewZmanimCalendar.java"

# interfaces
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->isTodayATaanit()Lcom/gindin/zmanim/calendar/JewishHoliday;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$HebrewDateAdjustedCallback",
        "<",
        "Lcom/gindin/zmanim/calendar/JewishHoliday;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;


# direct methods
.method constructor <init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;->this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dateAdjusted(Z)Lcom/gindin/zmanim/calendar/JewishHoliday;
    .registers 3

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;->this$0:Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;

    #getter for: Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->hebrewCalendar:Lcom/gindin/zmanim/calendar/HebrewCalendar;
    invoke-static {v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->access$000(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)Lcom/gindin/zmanim/calendar/HebrewCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/HebrewCalendar;->isTodayATaanit()Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic dateAdjusted(Z)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$3;->dateAdjusted(Z)Lcom/gindin/zmanim/calendar/JewishHoliday;

    move-result-object v0

    return-object v0
.end method
