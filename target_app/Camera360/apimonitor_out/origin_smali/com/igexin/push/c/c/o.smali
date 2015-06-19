.class public Lcom/igexin/push/c/c/o;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/igexin/push/c/c/o;->b:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/igexin/push/c/c/o;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/c/o;->a:J

    const/16 v0, 0x8

    array-length v1, p1

    if-le v1, v0, :cond_1e

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9

    :try_start_12
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/push/c/c/o;->b:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    :goto_1c
    add-int/lit8 v0, v0, 0x9

    :cond_1e
    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/igexin/push/c/c/o;->b:Ljava/lang/String;

    goto :goto_1c
.end method

.method public d()[B
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/igexin/push/c/c/o;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    return-object v0
.end method
