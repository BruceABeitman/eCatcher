.class final Lcom/google/android/gms/appstate/AppStateManager$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 14
move-object v4, p4
check-cast v4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/appstate/AppStateManager$1;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gb;
move-result-object v0
return-object v0
.end method
.method public b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gb;
.registers 14
new-instance v0, Lcom/google/android/gms/internal/gb;
invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fe()Ljava/lang/String;
move-result-object v5
invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fg()Ljava/util/List;
move-result-object v1
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/String;
invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Ljava/lang/String;
move-object v1, p1
move-object v2, p2
move-object v3, p5
move-object v4, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
return-object v0
.end method
.method public getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method