.class Lcom/tencent/open/PKDialog$JsListener;
.super Lcom/tencent/open/a$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/PKDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/open/PKDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/PKDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    invoke-direct {p0}, Lcom/tencent/open/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/PKDialog;Lcom/tencent/open/PKDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tencent/open/PKDialog$JsListener;-><init>(Lcom/tencent/open/PKDialog;)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$200(Lcom/tencent/open/PKDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$200(Lcom/tencent/open/PKDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v0, "onComplete"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    return-void
.end method

.method public onLoad(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$200(Lcom/tencent/open/PKDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/open/PKDialog$JsListener;->this$0:Lcom/tencent/open/PKDialog;

    #getter for: Lcom/tencent/open/PKDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/open/PKDialog;->access$200(Lcom/tencent/open/PKDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
