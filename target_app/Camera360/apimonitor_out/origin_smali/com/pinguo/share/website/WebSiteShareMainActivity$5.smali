.class Lcom/pinguo/share/website/WebSiteShareMainActivity$5;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Lcom/pinguo/share/website/IShareProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity;->doShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    return-object v0
.end method


# virtual methods
.method public finish(Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/share/website/ShareResultBean;",
            ">;I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    if-eqz v1, :cond_d

    :try_start_6
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v1, v1, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    invoke-virtual {v1}, Lcom/pinguo/share/ui/ShareProcessBar;->dismiss()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_25

    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mPaused:Z
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$23(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_2a
    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_24
.end method

.method public noActive()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;

    invoke-direct {v1, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$2;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noBind()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->goToBind()V
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$9(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V

    return-void
.end method

.method public noLocationIdForJiepang()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public noNet()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$1;

    invoke-direct {v1, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$1;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processBefore(Lcom/pinguo/share/website/WebShareBean;)V
    .registers 11

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #calls: Lcom/pinguo/share/website/WebSiteShareMainActivity;->isCloudShare()Z
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$24(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Z

    move-result v6

    if-nez v6, :cond_47

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B

    move-result-object v6

    if-nez v6, :cond_47

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v6, v7

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4d

    :try_start_35
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebShareBean;->setMedia([B)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_47

    :cond_4d
    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$21(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_76

    invoke-static {}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$12()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shareBitmapConfig:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$21(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-virtual {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7, v8}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mShareFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$25(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/share/util/ShareModuleUtil;->getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :try_start_a0
    sget-object v6, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    const/16 v7, 0x5f

    invoke-static {v6, v3, v7}, Lcom/pinguo/Camera360Lib/utils/FileUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;I)Z
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a7} :catch_f2

    :goto_a7
    invoke-static {}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$12()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "resize upload file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_dc

    const-string/jumbo v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_dc

    sget-object v6, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/pinguo/share/ShareAccess;->hasSoundInfoInFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_dc

    sget-object v6, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/pinguo/share/ShareAccess;->processSoundPhoto(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_dc
    :try_start_dc
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v7, Lcom/pinguo/share/ShareConstants;->NORMAL_SHARE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebShareBean;->setMedia([B)V
    :try_end_ea
    .catch Ljava/io/FileNotFoundException; {:try_start_dc .. :try_end_ea} :catch_ec

    goto/16 :goto_47

    :catch_ec
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_47

    :catch_f2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7
.end method

.method public rate(I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reBind(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$17(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDialog(Lcom/pinguo/share/website/WebShareBean;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    :cond_e
    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    new-instance v1, Lcom/pinguo/share/ui/ShareProcessBar;

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {v1, v2}, Lcom/pinguo/share/ui/ShareProcessBar;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    iput v3, v0, Lcom/pinguo/share/ui/ShareProcessBar;->nowrate:I

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareProcessBar;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$21(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareProcessBar;->setImageView(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    invoke-virtual {v0, v3}, Lcom/pinguo/share/ui/ShareProcessBar;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    new-instance v1, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;

    invoke-direct {v1, p0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$5$3;-><init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/ShareProcessBar;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    invoke-virtual {v0}, Lcom/pinguo/share/ui/ShareProcessBar;->show()V

    iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    iget-object v0, v0, Lcom/pinguo/share/website/WebSiteShareMainActivity;->mProgressDialog:Lcom/pinguo/share/ui/ShareProcessBar;

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$5;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mNowOrientation:I
    invoke-static {v1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$7(Lcom/pinguo/share/website/WebSiteShareMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/pinguo/share/ui/ShareProcessBar;->setOrientation(IZ)V

    return-void
.end method
