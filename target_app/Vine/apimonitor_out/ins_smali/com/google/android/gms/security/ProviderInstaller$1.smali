.class final Lcom/google/android/gms/security/ProviderInstaller$1;
.super Landroid/os/AsyncTask;
.field final synthetic adY:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
.field final synthetic qr:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->qr:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->adY:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Integer;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->qr:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
:try_end_5
.catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_5} :catch_b
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_5} :catch_15
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_a
:catch_15
move-exception v0
iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_a
.end method
.method protected d(Ljava/lang/Integer;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
if-nez v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->adY:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
invoke-interface {v0}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstalled()V
:goto_b
return-void
:cond_c
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->Z(I)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/security/ProviderInstaller$1;->adY:Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-interface {v1, v2, v0}, Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;->onProviderInstallFailed(ILandroid/content/Intent;)V
goto :goto_b
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/google/android/gms/security/ProviderInstaller$1;->b([Ljava/lang/Void;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/google/android/gms/security/ProviderInstaller$1;->d(Ljava/lang/Integer;)V
return-void
.end method