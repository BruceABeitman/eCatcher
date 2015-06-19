.class final Lcom/google/android/gms/panorama/Panorama$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/panorama/Panorama$1;->g(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ih;
move-result-object v0
return-object v0
.end method
.method public final g(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ih;
.registers 8
new-instance v0, Lcom/google/android/gms/internal/ih;
invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ih;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-object v0
.end method
.method public final getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method