.class  Lcom/pinguo/camera360/camera/controller/SceneCamera$4;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "SceneCamera.java"
.field private final synthetic val$callback:Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;
.field private final synthetic val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method constructor <init>(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;->val$callback:Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-static {}, Lcom/pinguo/camera360/scenetemplate/SceneTemplateInstall;->installDefSceneTemplate()Z
const/4 v0, 0x0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Object;)V
.registers 3
invoke-super {p0, p1}, Lcom/pinguo/lib/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;->val$progressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$4;->val$callback:Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;->onSceneInitFinish()V
return-void
.end method