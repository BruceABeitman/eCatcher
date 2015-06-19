.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->syncFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7f080314

    iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    move-result-object v4

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mOrientation:I
    invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$8(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    #setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
    invoke-static {v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$9(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/lib/ui/RotateTextToast;)V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$2;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$10(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    return-void
.end method
