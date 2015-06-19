.class Lcom/pinguo/share/bind/BindActivity$5;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Lcom/pinguo/share/bind/IBindProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/BindActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeThread()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0, v1}, Lcom/pinguo/share/bind/BindActivity;->access$13(Lcom/pinguo/share/bind/BindActivity;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mNowOrientation:I
    invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$14(Lcom/pinguo/share/bind/BindActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOrientation(IZ)V

    :cond_37
    return-void
.end method

.method public fail()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_16
.end method

.method public finishBind()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pinguo/share/bind/BindSharedPreferences;->setNeedUpdateDispatchBean(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$5;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopProgress()V
    .registers 1

    return-void
.end method
