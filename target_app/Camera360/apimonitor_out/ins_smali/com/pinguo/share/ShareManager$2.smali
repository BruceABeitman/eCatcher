.class  Lcom/pinguo/share/ShareManager$2;
.super Landroid/os/AsyncTask;
.source "ShareManager.java"
.field private final synthetic val$activity:Landroid/app/Activity;
.field private final synthetic val$cloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
.field private final synthetic val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.method constructor <init>(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/ShareManager$2;->val$activity:Landroid/app/Activity;
iput-object p2, p0, Lcom/pinguo/share/ShareManager$2;->val$cloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iput-object p3, p0, Lcom/pinguo/share/ShareManager$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/pinguo/share/ShareManager$2;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
.registers 11
const/4 v0, 0x0
const-string/jumbo v3, ""
:try_start_4
iget-object v4, p0, Lcom/pinguo/share/ShareManager$2;->val$activity:Landroid/app/Activity;
invoke-static {v4}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
sget-object v6, Lcom/pinguo/share/ShareConstants;->HOST_CLOUD:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "/mobile/share/getPhotoWallLinks"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/share/ShareManager$2;->val$cloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iget-object v7, p0, Lcom/pinguo/share/ShareManager$2;->val$activity:Landroid/app/Activity;
const v8, 0x7f08004b
invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v7
sget-object v8, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->FACEBOOK:Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
invoke-virtual {v8}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->getCode()Ljava/lang/String;
move-result-object v8
invoke-virtual {v4, v5, v6, v7, v8}, Lcom/pinguo/share/net/ServiceConnection;->getPhotoWallLinks(Ljava/lang/String;Lcom/pinguo/share/CloudShareInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "200"
const-string/jumbo v5, "status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_58
const-string/jumbo v4, "data"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v5, "puburl"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_57
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_57} :catch_59
move-result-object v0
:goto_58
:cond_58
return-object v0
:catch_59
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
const-string/jumbo v4, "cx"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "photoWallResult:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_58
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/share/ShareManager$2;->onPostExecute(Ljava/lang/String;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$pd:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->cancel()V
:cond_11
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$cloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
iput-object p1, v1, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$activity:Landroid/app/Activity;
const-class v2, Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "cloudshareinfo"
iget-object v2, p0, Lcom/pinguo/share/ShareManager$2;->val$cloudShareInfo:Lcom/pinguo/share/CloudShareInfo;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/share/ShareManager$2;->val$activity:Landroid/app/Activity;
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method