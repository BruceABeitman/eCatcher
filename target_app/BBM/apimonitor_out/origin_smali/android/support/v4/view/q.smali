.class final Landroid/support/v4/view/q;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/p;


# direct methods
.method constructor <init>(Landroid/support/v4/view/p;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->b(Landroid/support/v4/view/p;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v1}, Landroid/support/v4/view/p;->a(Landroid/support/v4/view/p;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_29
    :goto_29
    return-void

    :pswitch_2a
    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->c(Landroid/support/v4/view/p;)V

    goto :goto_29

    :pswitch_30
    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->d(Landroid/support/v4/view/p;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->e(Landroid/support/v4/view/p;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->d(Landroid/support/v4/view/p;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v1}, Landroid/support/v4/view/p;->a(Landroid/support/v4/view/p;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_29

    :cond_50
    iget-object v0, p0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/p;

    invoke-static {v0}, Landroid/support/v4/view/p;->f(Landroid/support/v4/view/p;)Z

    goto :goto_29

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method
