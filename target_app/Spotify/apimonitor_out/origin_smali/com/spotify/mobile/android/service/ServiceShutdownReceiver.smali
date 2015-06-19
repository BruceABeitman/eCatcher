.class public Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;
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
            "Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/spotify/mobile/android/service/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/service/n;->a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/m;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b:Landroid/os/Handler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/service/ae;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/spotify/mobile/android/service/ae;-><init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b()V

    goto :goto_13

    :cond_18
    iget-object v1, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_26

    if-eqz v0, :cond_24

    :try_start_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/m;->a()V
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

.method protected b()V
    .registers 1

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v1, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;

    if-nez v0, :cond_f

    new-instance v0, Lcom/spotify/mobile/android/service/af;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/service/af;-><init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;

    :cond_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->d:Lcom/spotify/mobile/android/service/m;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/m;->asBinder()Landroid/os/IBinder;

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
