.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;
.super Landroid/os/AsyncTask;
.source "EdgeCutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CutoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;-><init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "1_make_cutout"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCutOutModel:Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$19(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mOrgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$20(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CutOutModel;->makeCutoutPic(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4

    const-string/jumbo v0, "EdgeCutController"

    const-string/jumbo v1, "2_make_skin_effect"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$CutoutTask;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mSkinEffectListener:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$21(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->makeSkinEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$22(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V

    return-void
.end method
