.class Lcom/c/a/ea;
.super Lcom/c/a/m;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private transient a:Lcom/c/a/l;

.field private transient b:Lcom/c/a/a;

.field private transient c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v6, 0x6e

    const-string v0, ")NdC\u000b\u0000HnM\u000f\u0000Og`N5tl`\u0001\u0008Nef\u000bS"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_28

    :cond_d
    move-object v3, v0

    move v4, v2

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_12
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_40

    move v5, v6

    :goto_1a
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_26

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_12

    :cond_26
    move v1, v0

    move-object v0, v3

    :cond_28
    if-gt v1, v2, :cond_d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/ea;->d:Ljava/lang/String;

    return-void

    :pswitch_36
    move v5, v6

    goto :goto_1a

    :pswitch_38
    const/16 v5, 0x2b

    goto :goto_1a

    :pswitch_3b
    const/16 v5, 0xb

    goto :goto_1a

    :pswitch_3e
    const/4 v5, 0x5

    goto :goto_1a

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method private constructor <init>(Lcom/c/a/l;Lcom/c/a/a;)V
    .registers 4

    invoke-direct {p0}, Lcom/c/a/m;-><init>()V

    iput-object p1, p0, Lcom/c/a/ea;->a:Lcom/c/a/l;

    iput-object p2, p0, Lcom/c/a/ea;->b:Lcom/c/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/ea;->c:Z

    return-void
.end method

.method public static declared-synchronized a(Lcom/c/a/l;Lcom/c/a/a;)Lcom/c/a/ea;
    .registers 4

    const-class v1, Lcom/c/a/ea;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/c/a/ea;

    invoke-direct {v0, p0, p1}, Lcom/c/a/ea;-><init>(Lcom/c/a/l;Lcom/c/a/a;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/c/a/l;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ea;->a:Lcom/c/a/l;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/c/a/ea;->c:Z

    return-void
.end method

.method public b()Lcom/c/a/a;
    .registers 2

    iget-object v0, p0, Lcom/c/a/ea;->b:Lcom/c/a/a;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/a/ea;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/c/a/ea;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/c/a/ea;->a:Lcom/c/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
