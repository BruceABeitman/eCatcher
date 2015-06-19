.class  Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;
.super Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;
.source "SceneTemplateSelectPopup.java"
.field final synthetic this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
.method private constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-direct {p0, p1, v0, v0}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;-><init>(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
.registers 3
invoke-super {p0, p1}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPage;->doInBackground([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/util/List;)V
.registers 14
const/4 v11, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v6
if-nez v6, :cond_74
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
new-instance v7, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
iget-object v8, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mContext:Landroid/content/Context;
invoke-static {v8}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$3(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Landroid/content/Context;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mIconSize:I
invoke-static {v9}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$4(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)I
move-result v9
const/4 v10, 0x4
invoke-static {v10}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v10
sub-int/2addr v9, v10
iget-object v10, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneTemplateModel:Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
invoke-static {v10}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$0(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneTemplateModel;
move-result-object v10
invoke-direct {v7, v8, p1, v9, v10}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/pinguo/camera360/scenetemplate/SceneTemplateModel;)V
#setter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v6, v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$5(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
invoke-virtual {v6, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v6
invoke-virtual {v6, v11}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setVisibility(I)V
:goto_4e
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastSceneUpdateTime()J
move-result-wide v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/32 v4, 0x5265c00
sub-long v6, v0, v2
cmp-long v6, v6, v4
if-ltz v6, :cond_90
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$1()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "Update scene template as first init!"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v7, 0x3
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneAsync(I)V
:goto_73
return-void
:cond_74
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mGridview:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$6(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
move-result-object v6
invoke-virtual {v6, v11}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setVisibility(I)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v6
invoke-virtual {v6, p1}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->setList(Ljava/util/List;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
#getter for: Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->mSceneAdapter:Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
invoke-static {v6}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$2(Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;)Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/scenetemplate/SceneItemAdapter;->notifyDataSetChanged()V
goto :goto_4e
:cond_90
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->access$1()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "Update scene template as enter scene!"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup$LoadViewPageWithUpdate;->this$0:Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateSelectPopup;->updateSceneAsync(I)V
goto :goto_73
.end method