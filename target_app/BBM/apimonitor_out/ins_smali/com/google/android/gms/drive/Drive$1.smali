.class final Lcom/google/android/gms/drive/Drive$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/drive/Drive$1;->d(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/drive/internal/n;
move-result-object v0
return-object v0
.end method
.method public final d(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/drive/internal/n;
.registers 14
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->dT()Ljava/util/List;
move-result-object v1
new-instance v0, Lcom/google/android/gms/drive/internal/n;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
new-array v2, v2, [Ljava/lang/String;
invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Ljava/lang/String;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
return-object v0
.end method
.method public final getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method