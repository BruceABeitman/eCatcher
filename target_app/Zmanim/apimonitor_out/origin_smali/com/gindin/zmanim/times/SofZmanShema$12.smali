.class final Lcom/gindin/zmanim/times/SofZmanShema$12;
.super Lcom/gindin/zmanim/times/Zman;
.source "SofZmanShema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gindin/zmanim/times/SofZmanShema;->buildZmanim(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
    .registers 5

    iput-object p4, p0, Lcom/gindin/zmanim/times/SofZmanShema$12;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-direct {p0, p1, p2, p3}, Lcom/gindin/zmanim/times/Zman;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;)V

    return-void
.end method


# virtual methods
.method protected calculate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/times/SofZmanShema$12;->val$zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;

    invoke-virtual {v0}, Lcom/gindin/zmanim/calendar/ZmanimCalendar;->getSofZmanShmaMGA90Minutes()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
