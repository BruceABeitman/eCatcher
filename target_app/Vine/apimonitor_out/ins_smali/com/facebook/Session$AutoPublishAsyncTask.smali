.class  Lcom/facebook/Session$AutoPublishAsyncTask;
.super Landroid/os/AsyncTask;
.source "Session.java"
.field private final mApplicationContext:Landroid/content/Context;
.field private final mApplicationId:Ljava/lang/String;
.field final synthetic this$0:Lcom/facebook/Session;
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/content/Context;)V
.registers 5
iput-object p1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;
invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 5
:try_start_0
iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationContext:Landroid/content/Context;
iget-object v2, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->mApplicationId:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/facebook/Settings;->publishInstallAndWait(Landroid/content/Context;Ljava/lang/String;)Z
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9
:goto_7
const/4 v1, 0x0
return-object v1
:catch_9
move-exception v0
const-string v1, "Facebook-publish"
invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_7
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/facebook/Session$AutoPublishAsyncTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 5
iget-object v1, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/Session$AutoPublishAsyncTask;->this$0:Lcom/facebook/Session;
const/4 v2, 0x0
#setter for: Lcom/facebook/Session;->autoPublishAsyncTask:Lcom/facebook/Session$AutoPublishAsyncTask;
invoke-static {v0, v2}, Lcom/facebook/Session;->access$902(Lcom/facebook/Session;Lcom/facebook/Session$AutoPublishAsyncTask;)Lcom/facebook/Session$AutoPublishAsyncTask;
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method