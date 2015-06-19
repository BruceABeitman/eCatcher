.class  Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;
.super Landroid/os/AsyncTask;
.source "IdCameraPictureFragment.java"
.field  dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
.method private constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
return-void
.end method
.method private doSyncDeletedPhoto(Ljava/util/List;)V
.registers 8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_21
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_21
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_11
:goto_11
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_22
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1b
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_3e
:cond_21
return-void
:cond_22
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_11
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v5
invoke-virtual {v5, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->deleteForPath(Ljava/lang/String;)I
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_3e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_1b
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->doInBackground([Ljava/util/List;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
.registers 5
const/4 v2, 0x0
aget-object v1, p1, v2
:try_start_3
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->doSyncDeletedPhoto(Ljava/util/List;)V
:try_end_6
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8
:goto_6
const/4 v2, 0x0
return-object v2
:catch_8
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$0(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Landroid/support/v4/view/ViewPager;
move-result-object v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
new-instance v1, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->idPhotoPaths:Ljava/util/ArrayList;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$1(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Ljava/util/ArrayList;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;-><init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Ljava/util/ArrayList;)V
#setter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$2(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$0(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Landroid/support/v4/view/ViewPager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$3(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mEmptyTipsLayout:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$4(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->mIdPhotoAdapter:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$3(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->getCount()I
move-result v0
if-nez v0, :cond_4e
const/4 v0, 0x0
:goto_3c
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
#calls: Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->updateCountTip()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$5(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;)V
:cond_44
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_4d
return-void
:cond_4e
const/4 v0, 0x4
goto :goto_3c
.end method
.method protected onPreExecute()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x0
const-string/jumbo v2, ""
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$SyncDeletedPhotoTask;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method