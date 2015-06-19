.class final Lcom/google/android/gms/identity/intents/Address$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/identity/intents/Address$1;->f(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/hc;
move-result-object v0
return-object v0
.end method
.method public final f(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/hc;
.registers 14
instance-of v0, p1, Landroid/app/Activity;
const-string v1, "An Activity must be used for Address APIs"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
new-instance v0, Lcom/google/android/gms/identity/intents/Address$AddressOptions;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/Address$AddressOptions;-><init>()V
if-eqz p4, :cond_29
instance-of v0, p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;
const-string v1, "Must use AddressOptions with Address API"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V
check-cast p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;
:goto_17
new-instance v0, Lcom/google/android/gms/internal/hc;
move-object v1, p1
check-cast v1, Landroid/app/Activity;
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->getAccountName()Ljava/lang/String;
move-result-object v5
iget v6, p4, Lcom/google/android/gms/identity/intents/Address$AddressOptions;->theme:I
move-object v2, p2
move-object v3, p5
move-object v4, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/app/Activity;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;I)V
return-object v0
:cond_29
move-object p4, v0
goto :goto_17
.end method
.method public final getPriority()I
.registers 2
const v0, 0x7fffffff
return v0
.end method