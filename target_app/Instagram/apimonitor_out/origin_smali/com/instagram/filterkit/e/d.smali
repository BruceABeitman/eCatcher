.class public final Lcom/instagram/filterkit/e/d;
.super Ljava/lang/Object;
.source "OutputSurfaceUtil.java"


# direct methods
.method public static a(I)Lcom/instagram/filterkit/e/c;
    .registers 2

    new-instance v0, Lcom/instagram/filterkit/e/e;

    invoke-direct {v0, p0}, Lcom/instagram/filterkit/e/e;-><init>(I)V

    return-object v0
.end method

.method public static a(Lcom/instagram/filterkit/e/c;)Z
    .registers 3

    invoke-interface {p0}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v0

    const/16 v1, -0x4d2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(I)Lcom/instagram/filterkit/e/c;
    .registers 2

    new-instance v0, Lcom/instagram/filterkit/e/f;

    invoke-direct {v0, p0}, Lcom/instagram/filterkit/e/f;-><init>(I)V

    return-object v0
.end method
