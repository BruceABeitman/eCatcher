.class final Lcom/spotify/mobile/android/util/tracking/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/spotify/mobile/android/util/tracking/TrackingService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/tracking/TrackingService;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/tracking/TrackingService;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->stopSelf()V

    :cond_d
    return-void
.end method
