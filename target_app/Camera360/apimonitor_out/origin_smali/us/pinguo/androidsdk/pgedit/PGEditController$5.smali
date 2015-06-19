.class Lus/pinguo/androidsdk/pgedit/PGEditController$5;
.super Ljava/lang/Object;
.source "PGEditController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;->loadEditPhoto()V
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

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->countPhotoSize(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;

    if-nez v2, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;

    sget v3, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoSize:I

    invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditStep:Lus/pinguo/androidsdk/pgedit/PGEditStep;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d

    :cond_30
    if-eqz v1, :cond_54

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :cond_54
    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d
.end method
