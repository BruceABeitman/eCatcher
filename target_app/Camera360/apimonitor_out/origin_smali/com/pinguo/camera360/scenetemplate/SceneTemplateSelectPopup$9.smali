.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mHandler:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$16(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;

    move-result-object v0

    const v1, 0x1001002

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$9;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    const/4 v1, 0x0

    #setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$18(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
