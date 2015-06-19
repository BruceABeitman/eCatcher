.class final Lcom/google/android/gms/cast/Cast$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/cast/Cast$1;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/dq;
move-result-object v0
return-object v0
.end method
.method public final c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/dq;
.registers 16
const-string v0, "Setting the API options is required."
invoke-static {p4, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
instance-of v0, p4, Lcom/google/android/gms/cast/Cast$CastOptions;
const-string v1, "Must provide valid CastOptions!"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
check-cast p4, Lcom/google/android/gms/cast/Cast$CastOptions;
new-instance v0, Lcom/google/android/gms/internal/dq;
iget-object v3, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->wv:Lcom/google/android/gms/cast/CastDevice;
invoke-static {p4}, Lcom/google/android/gms/cast/Cast$CastOptions;->a(Lcom/google/android/gms/cast/Cast$CastOptions;)I
move-result v1
int-to-long v4, v1
iget-object v6, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->ww:Lcom/google/android/gms/cast/Cast$Listener;
move-object v1, p1
move-object v2, p2
move-object v7, p5
move-object v8, p6
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/dq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-object v0
.end method
.method public final getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method