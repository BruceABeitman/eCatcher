.class final Lcom/squareup/picasso/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/picasso/af;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/af;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const-wide/16 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/ag$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/ag$1;-><init>(Lcom/squareup/picasso/ag;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_11
    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    iget-wide v1, v0, Lcom/squareup/picasso/af;->d:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/squareup/picasso/af;->d:J

    goto :goto_11

    :pswitch_1a
    iget-object v0, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    iget-wide v1, v0, Lcom/squareup/picasso/af;->e:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/squareup/picasso/af;->e:J

    goto :goto_11

    :pswitch_22
    iget-object v0, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget v3, v0, Lcom/squareup/picasso/af;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/squareup/picasso/af;->m:I

    iget-wide v3, v0, Lcom/squareup/picasso/af;->g:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/squareup/picasso/af;->g:J

    iget v1, v0, Lcom/squareup/picasso/af;->m:I

    iget-wide v2, v0, Lcom/squareup/picasso/af;->g:J

    int-to-long v4, v1

    div-long v1, v2, v4

    iput-wide v1, v0, Lcom/squareup/picasso/af;->j:J

    goto :goto_11

    :pswitch_3c
    iget-object v0, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget v3, v0, Lcom/squareup/picasso/af;->n:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/squareup/picasso/af;->n:I

    iget-wide v3, v0, Lcom/squareup/picasso/af;->h:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/squareup/picasso/af;->h:J

    iget v1, v0, Lcom/squareup/picasso/af;->m:I

    iget-wide v2, v0, Lcom/squareup/picasso/af;->h:J

    int-to-long v4, v1

    div-long v1, v2, v4

    iput-wide v1, v0, Lcom/squareup/picasso/af;->k:J

    goto :goto_11

    :pswitch_56
    iget-object v1, p0, Lcom/squareup/picasso/ag;->a:Lcom/squareup/picasso/af;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget v2, v1, Lcom/squareup/picasso/af;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/squareup/picasso/af;->l:I

    iget-wide v2, v1, Lcom/squareup/picasso/af;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/squareup/picasso/af;->f:J

    iget v0, v1, Lcom/squareup/picasso/af;->l:I

    iget-wide v2, v1, Lcom/squareup/picasso/af;->f:J

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/squareup/picasso/af;->i:J

    goto :goto_11

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_3c
        :pswitch_56
    .end packed-switch
.end method
