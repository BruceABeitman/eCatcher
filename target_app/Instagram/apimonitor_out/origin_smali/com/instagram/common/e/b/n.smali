.class final Lcom/instagram/common/e/b/n;
.super Landroid/os/Handler;
.source "IgImageCache.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/e/b/h;


# direct methods
.method private constructor <init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/e/b/n;->a:Lcom/instagram/common/e/b/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/e/b/n;-><init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/e/b/m;

    invoke-static {v0}, Lcom/instagram/common/e/b/m;->a(Lcom/instagram/common/e/b/m;)V

    :goto_23
    return-void

    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/common/e/b/m;

    invoke-static {v0}, Lcom/instagram/common/e/b/m;->b(Lcom/instagram/common/e/b/m;)V

    goto :goto_23

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method
