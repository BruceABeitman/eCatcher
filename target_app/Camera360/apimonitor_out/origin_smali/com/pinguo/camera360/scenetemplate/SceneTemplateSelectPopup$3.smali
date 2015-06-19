.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->showIsDownloadDialog(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

.field private final synthetic val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    iput-object p2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->showSceneProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$3;->val$sceneTemplate:Lcom/pinguo/camera360/scenetemplate/SceneTemplate;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->downloadSceneTemplate(Lcom/pinguo/camera360/scenetemplate/SceneTemplate;)V

    return-void
.end method
