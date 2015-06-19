.class final Lcom/instagram/common/e/b/i;
.super Landroid/os/Handler;
.source "IgImageCache.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/e/b/h;


# direct methods
.method private constructor <init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/e/b/i;->a:Lcom/instagram/common/e/b/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/e/b/i;-><init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    iget-object v0, p0, Lcom/instagram/common/e/b/i;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/e/b/j;

    invoke-direct {v1, p0, p1}, Lcom/instagram/common/e/b/j;-><init>(Lcom/instagram/common/e/b/i;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/common/e/b/i;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->j(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/a/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/b/i;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->i(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/b/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/e/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/b/d;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/instagram/common/e/b/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    goto :goto_14

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method
