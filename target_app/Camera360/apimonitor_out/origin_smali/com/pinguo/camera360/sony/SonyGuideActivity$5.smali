.class Lcom/pinguo/camera360/sony/SonyGuideActivity$5;
.super Ljava/lang/Thread;
.source "SonyGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyGuideActivity;->ssdpSonyDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->startSearch()V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    #calls: Lcom/pinguo/camera360/sony/SonyGuideActivity;->startSonyCamera()V
    invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$8(Lcom/pinguo/camera360/sony/SonyGuideActivity;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$5;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->wifiConnectFail(Z)V

    goto :goto_a
.end method
