.class Lcom/c/a/an;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lcom/c/df;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Lcom/c/db;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "3h\u0007\u001ezp{\u000cX}#`\u000eW.$a\u000c\u0019K&l\u0007M]9g\u0002"

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

    packed-switch v5, :pswitch_data_42

    const/16 v5, 0xe

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

    sput-object v0, Lcom/c/a/an;->b:Ljava/lang/String;

    return-void

    :pswitch_35
    const/16 v5, 0x50

    goto :goto_19

    :pswitch_38
    const/16 v5, 0x9

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0x69

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x39

    goto :goto_19

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/db;Ljava/util/concurrent/Callable;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/c/a/an;->a:Lcom/c/db;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/db;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/an;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected done()V
    .registers 2

    iget-object v0, p0, Lcom/c/a/an;->a:Lcom/c/db;

    invoke-interface {v0, p0}, Lcom/c/db;->a(Lcom/c/df;)V

    return-void
.end method
