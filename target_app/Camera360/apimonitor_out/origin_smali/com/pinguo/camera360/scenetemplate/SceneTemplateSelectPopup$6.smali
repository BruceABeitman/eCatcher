.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    iput p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    iget v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$6;->val$type:I

    #calls: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneSync(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$14(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;I)V

    return-void
.end method