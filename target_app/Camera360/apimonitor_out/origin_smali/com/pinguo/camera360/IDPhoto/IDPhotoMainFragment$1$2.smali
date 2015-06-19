.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/IDPhoto/model/CutFaceRendererMethod$OnBitmapMadeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

.field private final synthetic val$faceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

.field private final synthetic val$time1:J


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;JLus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    iput-wide p2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->val$time1:J

    iput-object p4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->val$faceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    return-object v0
.end method


# virtual methods
.method public onBitmapMade(Landroid/graphics/Bitmap;I)V
    .registers 24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "CutFaceRenderer time:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->val$time1:J

    move-wide/from16 v19, v0

    sub-long v19, v10, v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-eqz v17, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v17

    if-eqz v17, :cond_48

    :cond_47
    :goto_47
    return-void

    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "madeBitmap: width:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", height:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v17, v16, 0x3

    mul-int/lit8 v9, v17, 0x3

    div-int/lit8 v17, v4, 0x3

    mul-int/lit8 v8, v17, 0x3

    move/from16 v0, v16

    if-ne v9, v0, :cond_86

    if-eq v8, v4, :cond_9e

    :cond_86
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "resize bitmap to divider by 3"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapWidth:I
    invoke-static/range {v17 .. v18}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mBitmapHeight:I
    invoke-static/range {v17 .. v18}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "outFaceBitmap: outWidth:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", outHeight:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v12, v10

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x244

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_107

    const/16 v17, 0x30c

    move/from16 v0, v17

    if-ge v4, v0, :cond_144

    :cond_107
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "face detect fail with cutout pic too small:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_47

    :cond_144
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "7_face_cut_success"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mFaceInfoRate:Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->saveAssistPhoto(Landroid/graphics/Bitmap;Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    #setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mOrgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$15(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->val$faceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setRendererPointer(I)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_183
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v5, v0, :cond_1f3

    :goto_189
    if-eqz v6, :cond_21f

    move-object v7, v6

    :goto_18c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "9_skin_effect_end"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "faceRendererMethod time:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v19, v14, v12

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-eqz v17, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-object/from16 v17, v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    new-instance v18, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_47

    :cond_1f3
    :try_start_1f3
    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "8_make_skin_effect"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->val$faceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhoto(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_20a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f3 .. :try_end_20a} :catch_20d

    move-result-object v6

    goto/16 :goto_189

    :catch_20d
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "makeSkinPhoto fail with OOM"

    invoke-static/range {v17 .. v18}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_183

    :cond_21f
    move-object/from16 v7, p1

    goto/16 :goto_18c
.end method
