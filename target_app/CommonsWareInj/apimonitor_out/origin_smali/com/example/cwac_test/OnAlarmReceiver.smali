.class public Lcom/example/cwac_test/OnAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/example/cwac_test/AppService;

    invoke-static {p1, v0}, Lcom/example/cwac_test/WakefulIntentService;->sendWakefulWork(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
