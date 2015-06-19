.class final Lcom/instagram/camera/f;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# instance fields
.field final synthetic a:Lcom/instagram/camera/e;


# direct methods
.method constructor <init>(Lcom/instagram/camera/e;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/camera/f;->a:Lcom/instagram/camera/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/instagram/camera/f;->a:Lcom/instagram/camera/e;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/instagram/camera/f;->a:Lcom/instagram/camera/e;

    invoke-static {v0}, Lcom/instagram/camera/e;->a(Lcom/instagram/camera/e;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/instagram/camera/f;->a:Lcom/instagram/camera/e;

    invoke-static {v0}, Lcom/instagram/camera/e;->b(Lcom/instagram/camera/e;)V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_18

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
