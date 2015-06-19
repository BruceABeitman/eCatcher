.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;
.super Landroid/os/Handler;
.source "SceneTemplateSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SceneThemplateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_8
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_c
    new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;)V

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
    invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    :pswitch_21
    new-instance v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;

    iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;)V

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$SceneThemplateHandler;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
    invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    :pswitch_data_36
    .packed-switch 0x1001001
        :pswitch_c
        :pswitch_21
    .end packed-switch
.end method
