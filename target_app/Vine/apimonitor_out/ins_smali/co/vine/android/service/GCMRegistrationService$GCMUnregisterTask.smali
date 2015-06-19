.class  Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;
.super Landroid/os/AsyncTask;
.source "GCMRegistrationService.java"
.field private mRegId:Ljava/lang/String;
.field private mSessionKey:Ljava/lang/String;
.field private mUserId:J
.field final synthetic this$0:Lco/vine/android/service/GCMRegistrationService;
.method public constructor <init>(Lco/vine/android/service/GCMRegistrationService;Ljava/lang/String;JLjava/lang/String;)V
.registers 6
iput-object p1, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mRegId:Ljava/lang/String;
iput-wide p3, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mUserId:J
iput-object p5, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mSessionKey:Ljava/lang/String;
return-void
.end method
.method private getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
return-object v0
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 7
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-static {v0}, Lco/vine/android/service/GCMRegistrationService;->access$100(Lco/vine/android/service/GCMRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
move-result-object v0
if-nez v0, :cond_15
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
move-result-object v1
#setter for: Lco/vine/android/service/GCMRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
invoke-static {v0, v1}, Lco/vine/android/service/GCMRegistrationService;->access$102(Lco/vine/android/service/GCMRegistrationService;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
:cond_15
const-string v0, "GCMRegService"
const-string v1, "Unregistering..."
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#getter for: Lco/vine/android/service/GCMRegistrationService;->mAppController:Lco/vine/android/client/AppController;
invoke-static {v0}, Lco/vine/android/service/GCMRegistrationService;->access$400(Lco/vine/android/service/GCMRegistrationService;)Lco/vine/android/client/AppController;
move-result-object v0
iget-object v1, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mRegId:Ljava/lang/String;
iget-wide v2, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mUserId:J
iget-object v4, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->mSessionKey:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3, v4}, Lco/vine/android/client/AppController;->clearGcmRegId(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
invoke-direct {p0}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lco/vine/android/service/GCMRegistrationService;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v0, 0x0
return-object v0
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 5
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-static {v1, v2}, Lco/vine/android/service/GCMNotificationService;->getClearNotificationIntent(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/service/GCMRegistrationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
invoke-direct {p0}, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Lco/vine/android/service/GCMNotificationService;->getClearNotificationIntent(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lco/vine/android/service/GCMRegistrationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
iget-object v0, p0, Lco/vine/android/service/GCMRegistrationService$GCMUnregisterTask;->this$0:Lco/vine/android/service/GCMRegistrationService;
#calls: Lco/vine/android/service/GCMRegistrationService;->stopService()V
invoke-static {v0}, Lco/vine/android/service/GCMRegistrationService;->access$500(Lco/vine/android/service/GCMRegistrationService;)V
return-void
.end method