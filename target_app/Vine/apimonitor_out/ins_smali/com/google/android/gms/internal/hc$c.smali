.class public final Lcom/google/android/gms/internal/hc$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.field private final Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/internal/hc$c;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
check-cast p1, Lcom/google/android/gms/internal/hc$c;
iget-object v1, p1, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method
.method public onConnected(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V
return-void
.end method
.method public onConnectionSuspended(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hc$c;->Gh:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onDisconnected()V
return-void
.end method