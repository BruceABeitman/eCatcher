.class final Landroid/support/v4/content/r;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/content/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/content/q;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, v0, Landroid/support/v4/content/q;->a:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroid/support/v4/content/q;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Landroid/support/v4/content/ModernAsyncTask;->c(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    :pswitch_15
    iget-object v1, v0, Landroid/support/v4/content/q;->a:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v0, v0, Landroid/support/v4/content/q;->b:[Ljava/lang/Object;

    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask;->c()V

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
