.class final Lcom/spotify/music/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/spotify/music/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/music/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/music/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/music/MainActivity;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/music/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3e

    const-string v0, "Sending ourselves messages we do not know how to handle.."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_1c
    invoke-static {v0}, Lcom/spotify/music/MainActivity;->b(Lcom/spotify/music/MainActivity;)V

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->c(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "Login done, dispatching queued Intents"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->d(Lcom/spotify/music/MainActivity;)V

    goto :goto_10

    :pswitch_35
    invoke-static {v0}, Lcom/spotify/music/MainActivity;->e(Lcom/spotify/music/MainActivity;)V

    goto :goto_10

    :pswitch_39
    invoke-static {v0}, Lcom/spotify/music/MainActivity;->f(Lcom/spotify/music/MainActivity;)V

    goto :goto_10

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_35
        :pswitch_39
    .end packed-switch
.end method
