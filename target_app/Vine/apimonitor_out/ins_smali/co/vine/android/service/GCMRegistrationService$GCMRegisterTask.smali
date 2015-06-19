.class  Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;
.super Landroid/os/AsyncTask;
.source "GCMRegistrationService.java"
.field private mUserId:J
.field final synthetic this$0:Lco/vine/android/service/GCMRegistrationService;
.method public constructor <init>(Lco/vine/android/service/GCMRegistrationService;J)V
.registers 4
iput-object p1, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-wide p2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->mUserId:J
return-void
.end method
.method private getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
return-object v0
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 8
iget-object v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-static {v2}, Lco/vine/android/service/GCMRegistrationService;->access$100(Lco/vine/android/service/GCMRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
move-result-object v2
if-nez v2, :cond_15
iget-object v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
move-result-object v3
#setter for: Lco/vine/android/service/GCMRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-static {v2, v3}, Lco/vine/android/service/GCMRegistrationService;->access$102(Lco/vine/android/service/GCMRegistrationService;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
:cond_15
:try_start_15
const-string v2, "GCMRegService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Registering with senderId="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mSenderId:Ljava/lang/String;
invoke-static {v4}, Lco/vine/android/service/GCMRegistrationService;->access$200(Lco/vine/android/service/GCMRegistrationService;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-static {v2}, Lco/vine/android/service/GCMRegistrationService;->access$100(Lco/vine/android/service/GCMRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mSenderId:Ljava/lang/String;
invoke-static {v5}, Lco/vine/android/service/GCMRegistrationService;->access$200(Lco/vine/android/service/GCMRegistrationService;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "GCM: Registration complete with regId={}"
invoke-static {v2, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#calls: Lco/vine/android/service/GCMRegistrationService;->setRegistrationId(Ljava/lang/String;)V
invoke-static {v2, v1}, Lco/vine/android/service/GCMRegistrationService;->access$300(Lco/vine/android/service/GCMRegistrationService;Ljava/lang/String;)V
iget-object v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mAppController:Lco/vine/android/client/AppController;
invoke-static {v2}, Lco/vine/android/service/GCMRegistrationService;->access$400(Lco/vine/android/service/GCMRegistrationService;)Lco/vine/android/client/AppController;
move-result-object v2
iget-wide v3, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->mUserId:J
invoke-virtual {v2, v1, v3, v4}, Lco/vine/android/client/AppController;->sendGcmRegId(Ljava/lang/String;J)Ljava/lang/String;
:try_end_5e
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_5e} :catch_60
.catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_5e} :catch_69
:goto_5e
const/4 v2, 0x0
return-object v2
:catch_60
move-exception v0
const-string v2, "GCMRegService"
const-string v3, "Failed to register with GCM service."
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5e
:catch_69
move-exception v2
goto :goto_5e
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 3
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMRegisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#calls: Lco/vine/android/service/GCMRegistrationService;->stopService()V
invoke-static {v0}, Lco/vine/android/service/GCMRegistrationService;->access$500(Lco/vine/android/service/GCMRegistrationService;)V
return-void
.end method