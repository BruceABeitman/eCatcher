.class Lus/pinguo/androidsdk/pgedit/PGEditController$3;
.super Landroid/os/Handler;
.source "PGEditController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1aa

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_make_photo_fail"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :pswitch_28
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditController;->showEditPhoto(Landroid/graphics/Bitmap;)V
    invoke-static {v4, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditController;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3, v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->refreshShowBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditController;->refreshStep()V
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$25(Lus/pinguo/androidsdk/pgedit/PGEditController;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditController;->backLastMenu()V
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$26(Lus/pinguo/androidsdk/pgedit/PGEditController;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :pswitch_58
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showPhotoForStep(Landroid/graphics/Bitmap;)V

    goto :goto_9

    :pswitch_62
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->sendBroadCastForSuccess()V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mControllerActionListener:Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController$PGEditControllerActionListener;->activityFinish()V

    goto :goto_9

    :pswitch_6f
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mHasInit:Z
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$27(Lus/pinguo/androidsdk/pgedit/PGEditController;)Z

    move-result v3

    if-nez v3, :cond_82

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mHasInit:Z
    invoke-static {v3, v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$28(Lus/pinguo/androidsdk/pgedit/PGEditController;Z)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->loadEditPhoto()V

    goto :goto_9

    :cond_82
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isFinished()Z

    move-result v3

    if-nez v3, :cond_b8

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    instance-of v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->getEditRendererMethod()Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditAdjustRendererMethod;->reInit()V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    invoke-virtual {v3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V

    goto/16 :goto_9

    :cond_b8
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    if-eqz v3, :cond_df

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    instance-of v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;

    if-nez v3, :cond_d4

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    instance-of v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;

    if-eqz v3, :cond_df

    :cond_d4
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->changeEffect()V

    goto/16 :goto_9

    :cond_df
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_f3
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->reShow(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    :pswitch_104
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_first_show_fail"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :pswitch_121
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditProgressLinearLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->hasSD()Z

    move-result v3

    if-eqz v3, :cond_146

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_no_free_space"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_146
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_no_storage"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :pswitch_15e
    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->hasSD()Z

    move-result v3

    if-eqz v3, :cond_17c

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_no_free_space"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_17c
    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pg_sdk_edit_no_storage"

    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :pswitch_194
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showFirstForShow(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    :pswitch_19f
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->showFirstForOrg(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9

    :pswitch_data_1aa
    .packed-switch 0x2
        :pswitch_28
        :pswitch_a
        :pswitch_58
        :pswitch_62
        :pswitch_6f
        :pswitch_104
        :pswitch_121
        :pswitch_15e
        :pswitch_194
        :pswitch_19f
    .end packed-switch
.end method
