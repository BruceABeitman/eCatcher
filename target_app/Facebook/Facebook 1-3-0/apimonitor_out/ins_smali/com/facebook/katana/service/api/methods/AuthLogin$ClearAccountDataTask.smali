.class  Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;
.super Lcom/facebook/katana/UserTask;
.source "AuthLogin.java"
.field private final mErrorCode:I
.field private final mEx:Ljava/lang/Exception;
.field private final mReasonPhrase:Ljava/lang/String;
.field private final mUsername:Ljava/lang/String;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
.method public constructor <init>(Lcom/facebook/katana/service/api/methods/AuthLogin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 7
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
sget-object v0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mHandler:Landroid/os/Handler;
invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V
iput-object p2, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mUsername:Ljava/lang/String;
iput p3, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mErrorCode:I
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mReasonPhrase:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mEx:Ljava/lang/Exception;
return-void
.end method
.method protected doInBackground()V
.registers 7
const/4 v0, 0x1
:try_start_1
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
#getter for: Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/AuthLogin;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogin;)Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/facebook/katana/provider/UserValuesManager;->loadActiveSessionInfo(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_22
new-instance v1, Lcom/facebook/katana/service/api/FacebookSessionInfo;
invoke-direct {v1, v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_22
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mUsername:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_1d
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_48
move-result v4
if-eqz v4, :cond_45
const/4 v4, 0x0
move v0, v4
:goto_22
:cond_22
if-eqz v0, :cond_44
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
#getter for: Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/AuthLogin;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogin;)Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->clearPrivateData(Landroid/content/Context;)V
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
#getter for: Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/AuthLogin;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogin;)Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v4
if-eqz v4, :cond_44
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
#getter for: Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;
invoke-static {v4}, Lcom/facebook/katana/service/api/methods/AuthLogin;->access$0(Lcom/facebook/katana/service/api/methods/AuthLogin;)Landroid/content/Context;
move-result-object v4
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mUsername:Ljava/lang/String;
invoke-static {v4, v5}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->removeSessionInfo(Landroid/content/Context;Ljava/lang/String;)V
:cond_44
return-void
:cond_45
const/4 v4, 0x1
move v0, v4
goto :goto_22
:catch_48
move-exception v4
goto :goto_22
.end method
.method protected onPostExecute()V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
#getter for: Lcom/facebook/katana/service/api/methods/AuthLogin;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
invoke-static {v0}, Lcom/facebook/katana/service/api/methods/AuthLogin;->access$1(Lcom/facebook/katana/service/api/methods/AuthLogin;)Lcom/facebook/katana/service/api/methods/ApiMethodListener;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->this$0:Lcom/facebook/katana/service/api/methods/AuthLogin;
iget v2, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mErrorCode:I
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mReasonPhrase:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;->mEx:Ljava/lang/Exception;
invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method