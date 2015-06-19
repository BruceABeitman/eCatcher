.class final Lcom/squareup/okhttp/internal/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;
.end annotation


# instance fields
.field final synthetic a:Ljava/io/OutputStream;

.field private b:Lcom/squareup/okhttp/internal/a/e;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/j$1;->a:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/squareup/okhttp/internal/a/e;->a:Lcom/squareup/okhttp/internal/a/e;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/j$1;->b:Lcom/squareup/okhttp/internal/a/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/j$1;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/q;->a(JJJ)V

    :cond_8
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/j$1;->b:Lcom/squareup/okhttp/internal/a/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/e;->b()V

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/squareup/okhttp/internal/a/j$1;->a:Ljava/io/OutputStream;

    iget-object v5, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v6, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->b:I

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    if-ne v1, v4, :cond_8

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/m;->a()Lcom/squareup/okhttp/internal/a/m;

    move-result-object v1

    iput-object v1, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    sget-object v1, Lcom/squareup/okhttp/internal/a/n;->a:Lcom/squareup/okhttp/internal/a/n;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/n;->a(Lcom/squareup/okhttp/internal/a/m;)V

    goto :goto_8

    :cond_46
    return-void
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/j$1;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/j$1;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
