.class Lcom/ubermedia/a/c;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubermedia/a/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/ubermedia/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ubermedia/a/b;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/ubermedia/a/b;->a:Lcom/ubermedia/a/a;

    iget-object v0, v0, Lcom/ubermedia/a/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/ubermedia/a/a;->c(Lcom/ubermedia/a/a;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Lcom/ubermedia/a/b;->a:Lcom/ubermedia/a/a;

    iget-object v0, v0, Lcom/ubermedia/a/b;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/ubermedia/a/a;->a_([Ljava/lang/Object;)V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
