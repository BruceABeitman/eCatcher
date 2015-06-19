.class final Lcom/gindin/zmanim/times/Chatzot$1;
.super Lcom/gindin/zmanim/times/Zman;
.source "Chatzot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/times/Chatzot;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;ZLcom/gindin/zmanim/calendar/ZmanimCalendar;)V
    .registers 6

    iput-object p5, p0, Lcom/gindin/zmanim/times/Chatzot$1;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gindin/zmanim/times/Zman;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Z)V

    return-void
.end method


# virtual methods
.method protected calculate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/times/Chatzot$1;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getChatzos()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
