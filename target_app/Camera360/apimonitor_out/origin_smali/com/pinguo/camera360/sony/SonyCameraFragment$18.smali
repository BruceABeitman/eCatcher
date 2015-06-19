.class Lcom/pinguo/camera360/sony/SonyCameraFragment$18;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;->showRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    const/4 v4, 0x0

    #setter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    invoke-static {v3, v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$20(Lcom/pinguo/camera360/sony/SonyCameraFragment;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    const/4 v4, 0x0

    #setter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mDisconnetWifi:Z
    invoke-static {v3, v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$21(Lcom/pinguo/camera360/sony/SonyCameraFragment;Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v3}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/pinguo/camera360/sony/SonyGuideActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "savewifi"

    iget-object v4, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$18;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mDisconnetWifi:Z
    invoke-static {v4}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$22(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_57
    return-void
.end method
