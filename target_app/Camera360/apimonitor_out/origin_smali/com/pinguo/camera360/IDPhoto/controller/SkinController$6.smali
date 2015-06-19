.class Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "SkinController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->makeSkinEffectForEdgeCut(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

.field private final synthetic val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

.field private final synthetic val$alphaPath:Ljava/lang/String;

.field private final synthetic val$alphaSavePath:Ljava/lang/String;

.field private final synthetic val$bgPath:Ljava/lang/String;

.field private final synthetic val$bgSavePath:Ljava/lang/String;

.field private final synthetic val$orgBitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$quality:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$orgBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    iput-object p4, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgSavePath:Ljava/lang/String;

    iput p6, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$quality:I

    iput-object p7, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaPath:Ljava/lang/String;

    iput-object p8, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaSavePath:Ljava/lang/String;

    invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public rendererAction()V
    .registers 9

    const-string/jumbo v5, "SkinController"

    const-string/jumbo v6, "makeSkinEffect"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->getRendererPointer()I

    move-result v4

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>()V

    invoke-virtual {v0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setRendererPointer(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitFaceLiftParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitFaceLiftParams(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v5}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitSkinParams()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitSkinParams(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$orgBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$orgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhotoToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4b

    const-string/jumbo v5, "SkinController"

    const-string/jumbo v6, "fail"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    :goto_4a
    return-void

    :cond_4b
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgPath:Ljava/lang/String;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgSavePath:Ljava/lang/String;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$bgSavePath:Ljava/lang/String;

    iget v7, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$quality:I

    invoke-virtual {v0, v5, v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhotoToJpg(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string/jumbo v5, "SkinController"

    const-string/jumbo v6, "fail"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    goto :goto_4a

    :cond_6e
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaPath:Ljava/lang/String;

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaSavePath:Ljava/lang/String;

    if-eqz v5, :cond_94

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->clearInitSkinParams()V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$alphaSavePath:Ljava/lang/String;

    iget v7, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$quality:I

    invoke-virtual {v0, v5, v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhotoToJpg(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_94

    const-string/jumbo v5, "SkinController"

    const-string/jumbo v6, "fail"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    goto :goto_4a

    :cond_94
    iget-object v5, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$6;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->success(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string/jumbo v5, "SkinController"

    const-string/jumbo v6, "success"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
