.class Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;
.super Lus/pinguo/androidsdk/PGRendererMethod;
.source "SkinController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->makeSkinEffect(Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

.field private final synthetic val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

.field private final synthetic val$orgBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;Landroid/graphics/Bitmap;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$orgBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-direct {p0}, Lus/pinguo/androidsdk/PGRendererMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public rendererAction()V
    .registers 6

    const-string/jumbo v3, "SkinController"

    const-string/jumbo v4, "makeSkinEffect"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->getRendererPointer()I

    move-result v2

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;-><init>()V

    invoke-virtual {v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setRendererPointer(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitFaceLiftParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitFaceLiftParams(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/SkinController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->mFaceRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/controller/SkinController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/SkinController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->getInitSkinParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->setInitSkinParams(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$orgBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$orgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditFaceRendererMethod;->makeSkinPhotoToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4b

    const-string/jumbo v3, "SkinController"

    const-string/jumbo v4, "fail"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    invoke-interface {v3}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->fail()V

    :goto_4a
    return-void

    :cond_4b
    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/controller/SkinController$5;->val$actionListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;->success(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const-string/jumbo v3, "SkinController"

    const-string/jumbo v4, "success"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method
