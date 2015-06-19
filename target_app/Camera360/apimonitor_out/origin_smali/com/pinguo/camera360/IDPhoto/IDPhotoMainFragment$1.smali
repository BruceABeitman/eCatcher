.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    return-object v0
.end method


# virtual methods
.method public onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 13

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "2_preview_made"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-virtual {v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;

    invoke-direct {v8, p0, p2, v4, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;Landroid/graphics/Bitmap;II)V

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "4_doing_face_detect"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceDetector:Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;
    invoke-static {v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/pinguo/camera360/IDPhoto/model/FaceDetector;->detect(Landroid/graphics/Bitmap;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    move-result-object v8

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    invoke-static {v7, v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    invoke-static {v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    move-result-object v7

    if-eqz v7, :cond_88

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "5_face_detect_success"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v2, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;

    invoke-direct {v2}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;-><init>()V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mJpegData:[B
    invoke-static {v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)[B

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    invoke-static {v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->setInputPicFromEyeWidth([BLcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)V

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>()V

    new-instance v7, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    invoke-direct {v7, p0, v5, v6, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;JLus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;)V

    invoke-virtual {v2, v7}, Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod;->setOnBitmapMadeListener(Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;)V

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "6_start_face_cut"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGEditSdk:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
    invoke-static {v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$17(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lus/pinguo/androidsdk/pgedit/PGEditSDK;

    move-result-object v7

    invoke-virtual {v7, v2}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V

    :goto_87
    return-void

    :cond_88
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "face detect fail with no face detect"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_87
.end method
