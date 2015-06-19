.class final Lcom/squareup/okhttp/internal/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJJ)V
    .registers 10

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_18
    return-void
.end method
