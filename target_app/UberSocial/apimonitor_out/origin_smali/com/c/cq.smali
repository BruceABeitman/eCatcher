.class public Lcom/c/cq;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "FRBu0ZRdu>[]Wx-"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_27

    :cond_b
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_10
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_58

    const/16 v5, 0x5f

    :goto_19
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_25

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_10

    :cond_25
    move v1, v0

    move-object v0, v3

    :cond_27
    if-gt v1, v2, :cond_b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/cq;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/c/cq;->b:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/c/cq;->a:Landroid/os/Handler;

    return-void

    :pswitch_4b
    const/16 v5, 0x35

    goto :goto_19

    :pswitch_4e
    const/16 v5, 0x39

    goto :goto_19

    :pswitch_51
    const/16 v5, 0x3b

    goto :goto_19

    :pswitch_54
    const/16 v5, 0x1d

    goto :goto_19

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
        :pswitch_54
    .end packed-switch
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Looper;
    .registers 1

    sget-object v0, Lcom/c/cq;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3

    new-instance v0, Lcom/c/ax;

    invoke-direct {v0, p0}, Lcom/c/ax;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/c/cq;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)Z
    .registers 2

    sget-object v0, Lcom/c/cq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Runnable;J)Z
    .registers 4

    sget-object v0, Lcom/c/cq;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Z
    .registers 1

    invoke-static {}, Lcom/c/cq;->c()Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/c/cq;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
