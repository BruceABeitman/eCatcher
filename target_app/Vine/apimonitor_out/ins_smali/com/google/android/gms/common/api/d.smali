.class public Lcom/google/android/gms/common/api/d;
.super Landroid/support/v4/app/Fragment;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field private DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field private Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
.field private Er:Lcom/google/android/gms/common/ConnectionResult;
.field private Es:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
iput-object p2, p0, Lcom/google/android/gms/common/api/d;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-void
.end method
.method public isInitialized()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
packed-switch p1, :pswitch_data_28
:cond_5
move v0, v1
:goto_6
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
iput-boolean v1, p0, Lcom/google/android/gms/common/api/d;->Es:Z
:goto_f
return-void
:pswitch_10
invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
move-result v2
if-nez v2, :cond_5
goto :goto_6
:pswitch_1b
const/4 v2, -0x1
if-ne p2, v2, :cond_5
goto :goto_6
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
goto :goto_f
nop
:pswitch_data_28
.packed-switch 0x1
:pswitch_1b
:pswitch_10
.end packed-switch
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Es:Z
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
return-void
.end method
.method public onConnected(Landroid/os/Bundle;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Es:Z
return-void
.end method
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Es:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z
move-result v1
if-eqz v1, :cond_32
add-int/lit8 v0, v0, 0x1
shl-int/lit8 v0, v0, 0x10
add-int/lit8 v0, v0, 0x1
:try_start_23
invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
:try_end_2a
.catch Landroid/content/IntentSender$SendIntentException; {:try_start_23 .. :try_end_2a} :catch_2b
goto :goto_6
:catch_2b
move-exception v0
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
goto :goto_6
:cond_32
invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I
move-result v0
invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z
move-result v0
if-eqz v0, :cond_49
invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I
move-result v0
invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x2
invoke-static {v0, v1, p0, v2, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(ILandroid/app/Activity;Landroid/support/v4/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
goto :goto_6
:cond_49
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
goto :goto_6
.end method
.method public onConnectionSuspended(I)V
.registers 2
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/google/android/gms/common/api/d; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_25
const-string v0, "resolving_error"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Es:Z
const-string v0, "connection_result_status"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
if-eqz v1, :cond_25
const-string v0, "resolution_pending_intent"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
new-instance v2, Lcom/google/android/gms/common/ConnectionResult;
invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
iput-object v2, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
:cond_25
const-string v1, " - Lcom/google/android/gms/common/api/d; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/gms/common/api/d; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "resolving_error"
iget-boolean v1, p0, Lcom/google/android/gms/common/api/d;->Es:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
if-eqz v0, :cond_24
const-string v0, "connection_result_status"
iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "resolution_pending_intent"
iget-object v1, p0, Lcom/google/android/gms/common/api/d;->Er:Lcom/google/android/gms/common/ConnectionResult;
invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_24
const-string v1, " - Lcom/google/android/gms/common/api/d; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/google/android/gms/common/api/d; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V
iget-boolean v0, p0, Lcom/google/android/gms/common/api/d;->Es:Z
if-nez v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
:cond_10
const-string v1, " - Lcom/google/android/gms/common/api/d; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/common/api/d; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/common/api/d;->Eq:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
:cond_c
const-string v1, " - Lcom/google/android/gms/common/api/d; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method