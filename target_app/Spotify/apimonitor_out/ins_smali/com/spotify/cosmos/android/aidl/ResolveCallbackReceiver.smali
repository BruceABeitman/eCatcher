.class public Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mHandler:Landroid/os/Handler;
.field private mLocal:Z
.field private mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
.field private final mReceiverLock:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$1;
invoke-direct {v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$1;-><init>()V
sput-object v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
return-void
.end method
.method public constructor <init>(Landroid/os/Handler;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method static synthetic access$000(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public destroy()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;
iget-boolean v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
iget-boolean v3, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
if-eqz v2, :cond_2d
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
iget-object v3, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_31
:cond_2b
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
if-nez v2, :cond_2b
:cond_31
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
iget-object v3, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_45
:cond_3f
move v0, v1
goto :goto_4
:cond_41
iget-object v2, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
if-nez v2, :cond_3f
:cond_45
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
iget-object v3, p1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getId()I
.registers 2
invoke-virtual {p0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->hashCode()I
move-result v0
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
if-eqz v0, :cond_2a
const/4 v0, 0x1
:goto_e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
:goto_1b
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
if-eqz v2, :cond_28
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
:cond_28
add-int/2addr v0, v1
return v0
:cond_2a
move v0, v1
goto :goto_e
:cond_2c
move v0, v1
goto :goto_1b
.end method
.method protected onError(Ljava/lang/Throwable;)V
.registers 2
return-void
.end method
.method protected onResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 2
return-void
.end method
.method public sendOnError(Ljava/lang/Throwable;)V
.registers 5
iget-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;
invoke-direct {v1, p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$2;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Ljava/lang/Throwable;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_12
return-void
:cond_13
invoke-virtual {p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onError(Ljava/lang/Throwable;)V
goto :goto_12
:cond_17
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
monitor-enter v1
:try_start_1a
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_29
if-eqz v0, :cond_27
:try_start_1e
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;->onError(Ljava/lang/String;)V
:goto_27
:cond_27
:try_end_27
.catchall {:try_start_1e .. :try_end_27} :catchall_29
.catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2c
:try_start_27
monitor-exit v1
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_29
goto :goto_12
:catchall_29
move-exception v0
monitor-exit v1
throw v0
:catch_2c
move-exception v0
goto :goto_27
.end method
.method public sendOnResolved(Lcom/spotify/cosmos/router/Response;)V
.registers 9
iget-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mLocal:Z
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;
invoke-direct {v1, p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalRunnable;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/router/Response;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_12
return-void
:cond_13
invoke-virtual {p0, p1}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->onResolved(Lcom/spotify/cosmos/router/Response;)V
goto :goto_12
:cond_17
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
monitor-enter v1
:try_start_1a
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_35
if-eqz v0, :cond_33
:try_start_1e
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getStatus()I
move-result v2
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getUri()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getHeaders()Ljava/util/Map;
move-result-object v4
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B
move-result-object v5
invoke-interface {v0, v2, v3, v4, v5}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;->onResolved(ILjava/lang/String;Ljava/util/Map;[B)V
:goto_33
:cond_33
:try_end_33
.catchall {:try_start_1e .. :try_end_33} :catchall_35
.catch Landroid/os/TransactionTooLargeException; {:try_start_1e .. :try_end_33} :catch_38
.catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_51
:try_start_33
monitor-exit v1
:try_end_34
.catchall {:try_start_33 .. :try_end_34} :catchall_35
goto :goto_12
:catchall_35
move-exception v0
monitor-exit v1
throw v0
:catch_38
move-exception v0
:try_start_39
new-instance v0, Lcom/spotify/cosmos/router/Response;
const/16 v2, 0x19d
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getUri()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const-string v5, "Response too large"
sget-object v6, Lcom/spotify/cosmos/router/Response;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v5
invoke-direct {v0, v2, v3, v4, v5}, Lcom/spotify/cosmos/router/Response;-><init>(ILjava/lang/String;Ljava/util/Map;[B)V
invoke-virtual {p0, v0}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->sendOnResolved(Lcom/spotify/cosmos/router/Response;)V
:try_end_50
.catchall {:try_start_39 .. :try_end_50} :catchall_35
goto :goto_33
:catch_51
move-exception v0
goto :goto_33
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiverLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
if-nez v0, :cond_f
new-instance v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;
const/4 v2, 0x0
invoke-direct {v0, p0, v2}, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$LocalResolveCallbackReceiver;-><init>(Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver$1;)V
iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
:cond_f
iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;
invoke-interface {v0}, Lcom/spotify/cosmos/android/aidl/IResolveCallbackReceiver;->asBinder()Landroid/os/IBinder;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
monitor-exit v1
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_1a
return-void
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method