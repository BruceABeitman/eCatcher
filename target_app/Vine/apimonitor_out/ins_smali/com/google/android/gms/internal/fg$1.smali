.class final Lcom/google/android/gms/internal/fg$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 14
move-object v4, p4
check-cast v4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fg$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fy;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fy;
.registers 8
new-instance v0, Lcom/google/android/gms/internal/fy;
invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/fy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-object v0
.end method
.method public getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method