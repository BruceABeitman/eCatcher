.class Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;
.super Ljava/lang/Object;
.source "PGEditCamera360Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->loadEditPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/16 v12, 0xb

    const/16 v11, 0x9

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->countPhotoSize(Landroid/util/DisplayMetrics;)V

    const/4 v10, 0x0

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_33

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->sharePath:Ljava/lang/String;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    if-nez v10, :cond_5d

    :cond_3d
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;

    sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoSize:I

    invoke-static {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5d

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    if-eqz v10, :cond_cd

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v4, 0x32

    :try_start_6e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_a4

    :goto_71
    const/4 v1, 0x0

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->isShowOrg:Z
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;

    sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoSize:I

    invoke-static {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_b9

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mOrgPath:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_a9

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5c

    :catch_a4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_71

    :cond_a9
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->hasOrgPath:Z
    invoke-static {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;Z)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_b9
    if-nez v1, :cond_5c

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v2, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5c

    :cond_cd
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->mEditHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5c
.end method
