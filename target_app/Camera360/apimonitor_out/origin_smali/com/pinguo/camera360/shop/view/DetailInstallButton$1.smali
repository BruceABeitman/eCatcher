.class Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;
.super Ljava/lang/Object;
.source "DetailInstallButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/view/DetailInstallButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onUninstallClick(Landroid/view/View;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstallingClick(Landroid/view/View;)V

    goto :goto_1a

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$0(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/DetailInstallButton$1;->this$0:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    #getter for: Lcom/pinguo/camera360/shop/view/DetailInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->access$1(Lcom/pinguo/camera360/shop/view/DetailInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;->onInstalledClick(Landroid/view/View;)V

    goto :goto_1a
.end method
