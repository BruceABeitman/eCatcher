.class Lcom/twidroid/net/b/a/h;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/b/a/f$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/net/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/twidroid/net/b/a/g;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/twidroid/net/b/a/g;->a:Lcom/twidroid/net/b/a/f;

    iget-object v0, v0, Lcom/twidroid/net/b/a/g;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/twidroid/net/b/a/f;->c(Lcom/twidroid/net/b/a/f;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Lcom/twidroid/net/b/a/g;->a:Lcom/twidroid/net/b/a/f;

    iget-object v0, v0, Lcom/twidroid/net/b/a/g;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/twidroid/net/b/a/f;->c([Ljava/lang/Object;)V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
