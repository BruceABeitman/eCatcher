.class Lcom/pinguo/share/theme/ShareThemeMainActivity$1;
.super Ljava/lang/Object;
.source "ShareThemeMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/theme/ShareThemeMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/theme/ShareThemeMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mList:Ljava/util/List;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$0(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/share/theme/ThemeXMLStruct;

    #setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v6, v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$1(Lcom/pinguo/share/theme/ShareThemeMainActivity;Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5f

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mLoadingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$3(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eq v5, v6, :cond_5f

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mFailLoadingBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$4(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v5, v6, :cond_6e

    :cond_5f
    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    iget-object v6, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    const-class v5, Lcom/pinguo/share/theme/ThemeXMLConsole;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ViewClick, download type change to 2"

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    const/4 v6, 0x2

    #setter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->nCurrentDownloadType:I
    invoke-static {v5, v6}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$5(Lcom/pinguo/share/theme/ShareThemeMainActivity;I)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mDownloadAlertDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$6(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V

    instance-of v5, p1, Lcom/pinguo/share/theme/ThemeButton;

    if-eqz v5, :cond_b5

    move-object v1, p1

    check-cast v1, Lcom/pinguo/share/theme/ThemeButton;

    invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeButton;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6d

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/pinguo/share/theme/ThemeButton;->setClickable(Z)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0x10010

    invoke-virtual {v1}, Lcom/pinguo/share/theme/ThemeButton;->getSelect()Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6d

    :cond_b5
    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mCurrentDownloadStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$2(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/share/ShareAccess;->statShareThemeTemplateSelected(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0x10011

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/pinguo/share/theme/ShareThemeMainActivity$1;->this$0:Lcom/pinguo/share/theme/ShareThemeMainActivity;

    #getter for: Lcom/pinguo/share/theme/ShareThemeMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ShareThemeMainActivity;->access$7(Lcom/pinguo/share/theme/ShareThemeMainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6d
.end method
