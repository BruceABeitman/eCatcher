.class Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "PushWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/push/business/web/PushWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;

    #getter for: Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->access$0(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/push/business/web/PushWebActivity$1;->this$0:Lcom/pinguo/camera360/push/business/web/PushWebActivity;

    #getter for: Lcom/pinguo/camera360/push/business/web/PushWebActivity;->process:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/pinguo/camera360/push/business/web/PushWebActivity;->access$0(Lcom/pinguo/camera360/push/business/web/PushWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    return-void
.end method
