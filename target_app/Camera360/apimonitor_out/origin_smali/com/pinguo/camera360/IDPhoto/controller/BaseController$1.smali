.class Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;
.super Landroid/os/Handler;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/controller/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/BaseController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->getEnterChild()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->enterChildViewFinish()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/BaseController$1;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/BaseController;

    invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->backMainViewFinish()V

    goto :goto_1a

    :cond_21
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->isCancel()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a
.end method
