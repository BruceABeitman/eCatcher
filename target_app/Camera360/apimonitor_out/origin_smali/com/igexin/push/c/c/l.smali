.class public Lcom/igexin/push/c/c/l;
.super Lcom/igexin/push/c/c/e;


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V

    const/16 v0, 0x24

    iput v0, p0, Lcom/igexin/push/c/c/l;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/push/c/c/l;->j:B

    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/c/l;->a:J

    return-void
.end method

.method public d()[B
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/igexin/push/c/c/l;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/igexin/a/a/b/g;->a(J[BI)I

    return-object v0
.end method