.class final Lcom/instagram/common/b/f;
.super Landroid/os/Handler;
.source "IgAsyncTask.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/common/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/b/e;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/instagram/common/b/e;->a:Lcom/instagram/common/b/a;

    iget-object v0, v0, Lcom/instagram/common/b/e;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/instagram/common/b/a;->c(Lcom/instagram/common/b/a;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Lcom/instagram/common/b/e;->a:Lcom/instagram/common/b/a;

    iget-object v0, v0, Lcom/instagram/common/b/e;->b:[Ljava/lang/Object;

    invoke-static {}, Lcom/instagram/common/b/a;->b()V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
