.class public Lcom/pinguo/share/bind/MyBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyBroadCastReceiver.java"


# static fields
.field public static final ACTION_FRESH:Ljava/lang/String; = "FetchCloudBindInfoService.MyBroadCastReceiver"


# instance fields
.field protected curRan:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/share/bind/MyBroadCastReceiver;->curRan:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FetchCloudBindInfoService.MyBroadCastReceiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    return-void
.end method

.method public setRanNum(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/share/bind/MyBroadCastReceiver;->curRan:J

    return-void
.end method
