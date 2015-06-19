.class public abstract Lcom/c/a/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Lcom/c/a/bq;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "\u0014j\u0008h,Wx\u0003;x\u0007y\t;7\u0003r\u0016*+"

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

    const/16 v5, 0x58

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

    sput-object v0, Lcom/c/a/bq;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/bq;->a:Lcom/c/a/bq;

    return-void

    :pswitch_38
    const/16 v5, 0x77

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0xb

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x66

    goto :goto_19

    :pswitch_41
    const/16 v5, 0x4f

    goto :goto_19

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/c/a/bq;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lcom/c/a/bq;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/bq;
    .registers 3

    sget-object v0, Lcom/c/a/bq;->a:Lcom/c/a/bq;

    if-nez v0, :cond_a

    new-instance v0, Lcom/c/a/bu;

    invoke-direct {v0, p0, p1}, Lcom/c/a/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/c/a/bq;->a:Lcom/c/a/bq;

    invoke-virtual {v0, p0, p1}, Lcom/c/a/bq;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/bq;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/bq;
.end method

.method public abstract a(Lcom/c/bq;)Lcom/c/a/cc;
.end method

.method public abstract close()V
.end method
