.class public final Lcom/google/android/gms/internal/hc$g;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field private final Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/android/gms/internal/hc$g;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
check-cast p1, Lcom/google/android/gms/internal/hc$g;
iget-object v1, p1, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_e
.end method
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/hc$g;->Gj:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
return-void
.end method