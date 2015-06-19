.class public final Lcom/google/zxing/client/a/t;
.super Lcom/google/zxing/client/a/u;
.source "ProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 9

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    sget-object v1, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    if-eq v3, v1, :cond_14

    sget-object v1, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    if-eq v3, v1, :cond_14

    sget-object v1, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    if-eq v3, v1, :cond_14

    sget-object v1, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    if-eq v3, v1, :cond_14

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    invoke-static {p1}, Lcom/google/zxing/client/a/t;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v4, :cond_2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_13

    const/16 v6, 0x39

    if-gt v5, v6, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2e
    sget-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    if-ne v3, v0, :cond_3d

    invoke-static {v1}, Lcom/google/zxing/e/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_36
    new-instance v2, Lcom/google/zxing/client/a/s;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/client/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_13

    :cond_3d
    move-object v0, v1

    goto :goto_36
.end method
