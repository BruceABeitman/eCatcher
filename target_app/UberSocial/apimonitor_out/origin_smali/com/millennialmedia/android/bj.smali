.class Lcom/millennialmedia/android/bj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/ba;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/bj;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/millennialmedia/android/bj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/millennialmedia/android/ba;->e()V

    :cond_19
    iget-object v1, v0, Lcom/millennialmedia/android/ba;->c:Landroid/os/Handler;

    iget-object v0, v0, Lcom/millennialmedia/android/ba;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method
