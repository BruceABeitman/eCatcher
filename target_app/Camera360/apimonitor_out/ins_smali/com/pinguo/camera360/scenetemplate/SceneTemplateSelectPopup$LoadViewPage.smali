.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;
.super Landroid/os/AsyncTask;
.source "SceneTemplateSelectPopup.java"
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method private constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;)V
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->doInBackground([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
aget-object v0, p1, v0
check-cast v0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;->getTemplateList()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->onPostExecute(Ljava/util/List;)V
return-void
.end method
.method protected onPostExecute(Ljava/util/List;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$1()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onPostExecute adapter"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
new-instance v1, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
iget-object v2, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I
invoke-static {v3}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$4(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
move-result v3
const/4 v4, 0x4
invoke-static {v4}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v4
sub-int/2addr v3, v4
iget-object v4, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
invoke-static {v4}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
move-result-object v4
invoke-direct {v1, v2, p1, v3, v4}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/pinguo/camera360/scenetemplate/SceneTemplateModel;)V
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v0, v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$5(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setVisibility(I)V
return-void
.end method