.class Lcom/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Lcom/c/aw;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "ppx\u000e\u0003q"

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

    packed-switch v5, :pswitch_data_40

    const/16 v5, 0x6c

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

    sput-object v0, Lcom/c/w;->b:Ljava/lang/String;

    return-void

    :pswitch_35
    const/4 v5, 0x3

    goto :goto_19

    :pswitch_37
    const/16 v5, 0x15

    goto :goto_19

    :pswitch_3a
    const/16 v5, 0x16

    goto :goto_19

    :pswitch_3d
    const/16 v5, 0x7d

    goto :goto_19

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_35
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/c/w;->a:Lcom/c/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/SensorManager;
    .registers 3

    iget-object v0, p0, Lcom/c/w;->a:Lcom/c/aw;

    invoke-static {v0}, Lcom/c/aw;->a(Lcom/c/aw;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/c/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/w;->a()Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method
