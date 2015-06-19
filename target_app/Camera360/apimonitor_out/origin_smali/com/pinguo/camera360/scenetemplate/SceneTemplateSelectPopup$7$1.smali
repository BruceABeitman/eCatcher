.class Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$1;
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

    iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7$1;->this$1:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$7;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
    invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->onRefreshComplete()V

    return-void
.end method
