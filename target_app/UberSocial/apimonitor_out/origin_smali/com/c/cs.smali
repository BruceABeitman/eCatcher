.class public abstract Lcom/c/cs;
.super Lcom/c/co;


# static fields
.field private static b:Lcom/c/cs;

.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Lcom/c/dg;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "(pri\u001ekby:J;cs:\u0005?hl+\u0019"

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

    packed-switch v5, :pswitch_data_44

    const/16 v5, 0x6a

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

    sput-object v0, Lcom/c/cs;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/cs;->b:Lcom/c/cs;

    return-void

    :pswitch_38
    const/16 v5, 0x4b

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0x11

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x1c

    goto :goto_19

    :pswitch_41
    const/16 v5, 0x4e

    goto :goto_19

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/c/co;-><init>()V

    return-void
.end method

.method public static a(Lcom/c/b;)Lcom/c/cs;
    .registers 2

    sget-object v0, Lcom/c/cs;->b:Lcom/c/cs;

    if-nez v0, :cond_a

    new-instance v0, Lcom/c/cw;

    invoke-direct {v0, p0}, Lcom/c/cw;-><init>(Lcom/c/b;)V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/c/cs;->b:Lcom/c/cs;

    invoke-virtual {v0, p0}, Lcom/c/cs;->b(Lcom/c/b;)Lcom/c/cs;

    move-result-object v0

    goto :goto_9
.end method

.method public static a(Lcom/c/cs;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/cs;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/cs;->a:Lcom/c/dg;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/c/cs;->a:Lcom/c/dg;

    invoke-virtual {p0}, Lcom/c/cs;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/c/dg;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    invoke-super {p0}, Lcom/c/co;->a()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/c/dg;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/c/cs;->a:Lcom/c/dg;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Lcom/c/b;)Lcom/c/cs;
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()Ljava/util/Collection;
.end method
