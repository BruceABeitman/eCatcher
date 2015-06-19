.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;
.super Ljava/lang/Object;
.source "SceneTemplateSelectPopup.java"
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
return-object v0
.end method
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1$1;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;)V
const-wide/16 v2, 0x320
invoke-virtual {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_25
return-void
:cond_26
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$1;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneAsync(I)V
goto :goto_25
.end method