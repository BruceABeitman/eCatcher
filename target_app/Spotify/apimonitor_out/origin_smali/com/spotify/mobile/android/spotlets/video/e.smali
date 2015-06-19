.class final Lcom/spotify/mobile/android/spotlets/video/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/spotify/mobile/android/spotlets/video/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/c;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/video/c;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_38

    goto :goto_10

    :pswitch_17
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->c()V

    goto :goto_10

    :pswitch_25
    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->c(Lcom/spotify/mobile/android/spotlets/video/c;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/video/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/video/e;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_17
        :pswitch_25
    .end packed-switch
.end method
