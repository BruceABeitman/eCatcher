.class Lcom/facebook/katana/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$1;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    #getter for: Lcom/facebook/katana/ZoomButtonsController;->mIsVisible:Z
    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$0(Lcom/facebook/katana/ZoomButtonsController;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    #getter for: Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$1(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$1;->this$0:Lcom/facebook/katana/ZoomButtonsController;

    #getter for: Lcom/facebook/katana/ZoomButtonsController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->access$1(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method
