.class Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyWifiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;

    #calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->access$0(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method