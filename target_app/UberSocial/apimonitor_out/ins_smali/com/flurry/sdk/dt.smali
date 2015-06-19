.class public Lcom/flurry/sdk/dt;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dt;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Lcom/google/android/gms/ads/a/b;
.registers 3
const-class v1, Lcom/flurry/sdk/dt;
monitor-enter v1
:try_start_3
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
if-ne v0, v2, :cond_1c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v2, "Must be called from a background thread!"
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_19
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:cond_1c
:try_start_1c
invoke-static {}, Lcom/flurry/sdk/dt;->b()Z
:try_end_1f
.catchall {:try_start_1c .. :try_end_1f} :catchall_19
move-result v0
if-nez v0, :cond_25
const/4 v0, 0x0
:goto_23
monitor-exit v1
return-object v0
:cond_25
:try_start_25
invoke-static {}, Lcom/flurry/sdk/dt;->c()Lcom/google/android/gms/ads/a/b;
:try_end_28
.catchall {:try_start_25 .. :try_end_28} :catchall_19
move-result-object v0
goto :goto_23
.end method
.method public static b()Z
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I
move-result v1
if-nez v1, :cond_11
const/4 v0, 0x1
:goto_10
return v0
:cond_11
sget-object v2, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Google Play Services not available - connection result: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_29
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a
goto :goto_10
:catch_2a
move-exception v1
sget-object v2, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Google Play Services not available - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method private static c()Lcom/google/android/gms/ads/a/b;
.registers 6
const/4 v5, 0x6
const/4 v0, 0x0
:try_start_2
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
:try_end_d
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_f
.catch Lcom/google/android/gms/common/g; {:try_start_2 .. :try_end_d} :catch_29
.catch Lcom/google/android/gms/common/h; {:try_start_2 .. :try_end_d} :catch_43
move-result-object v0
:goto_e
return-object v0
:catch_f
move-exception v1
sget-object v2, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Exception in readAdvertisingInfo():"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v5, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_e
:catch_29
move-exception v1
sget-object v2, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Exception in readAdvertisingInfo():"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v5, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_e
:catch_43
move-exception v1
sget-object v2, Lcom/flurry/sdk/dt;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Exception in readAdvertisingInfo():"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v5, v2, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method