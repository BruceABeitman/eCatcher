.class final Lcom/google/android/gms/plus/Plus$1;
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
check-cast v4, Lcom/google/android/gms/plus/Plus$PlusOptions;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/Plus$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/e;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/e;
.registers 17
if-nez p4, :cond_8
new-instance p4, Lcom/google/android/gms/plus/Plus$PlusOptions;
const/4 v0, 0x0
invoke-direct {p4, v0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$1;)V
:cond_8
new-instance v9, Lcom/google/android/gms/plus/internal/e;
new-instance v0, Lcom/google/android/gms/plus/internal/h;
invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fe()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fh()[Ljava/lang/String;
move-result-object v2
iget-object v3, p4, Lcom/google/android/gms/plus/Plus$PlusOptions;->abp:Ljava/util/Set;
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/String;
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
new-instance v8, Lcom/google/android/gms/plus/internal/PlusCommonExtras;
invoke-direct {v8}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
move-object v1, v9
move-object v2, p1
move-object v3, p2
move-object v4, p5
move-object/from16 v5, p6
move-object v6, v0
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
return-object v9
.end method
.method public getPriority()I
.registers 2
const/4 v0, 0x2
return v0
.end method