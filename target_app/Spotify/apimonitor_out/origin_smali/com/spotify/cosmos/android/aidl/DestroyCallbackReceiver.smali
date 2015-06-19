.class public Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLocal:Z

.field private mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

.field private final mReceiverLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;

    invoke-direct {v0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;-><init>()V

    sput-object v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiverLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mLocal:Z

    iput-object p1, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mLocal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .registers 1

    return-void
.end method

.method public sendOnDestroy()V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mLocal:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalRunnable;-><init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->onDestroy()V

    goto :goto_13

    :cond_18
    iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_26

    if-eqz v0, :cond_24

    :try_start_1f
    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    invoke-interface {v0}, Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;->onDestroy()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_29

    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_29
    move-exception v0

    goto :goto_24
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v1, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    if-nez v0, :cond_f

    new-instance v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$LocalDestroyCallbackReceiver;-><init>(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver$1;)V

    iput-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    :cond_f
    iget-object v0, p0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->mReceiver:Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;

    invoke-interface {v0}, Lcom/spotify/cosmos/android/aidl/IDestroyCallbackReceiver;->asBinder()Landroid/os/IBinder;

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
