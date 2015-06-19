.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->downloadSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

.field private final synthetic val$sceneItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->val$sceneItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
    invoke-static {v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->val$sceneItem:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->downloadTempate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mPopupWindow:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$11(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;

    invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$5;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
