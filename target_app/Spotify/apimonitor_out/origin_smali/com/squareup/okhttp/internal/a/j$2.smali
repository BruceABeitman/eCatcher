.class final Lcom/squareup/okhttp/internal/a/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field private b:Lcom/squareup/okhttp/internal/a/e;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/j$2;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/squareup/okhttp/internal/a/e;->a:Lcom/squareup/okhttp/internal/a/e;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/j$2;->b:Lcom/squareup/okhttp/internal/a/e;

    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/j$2;->b:Lcom/squareup/okhttp/internal/a/e;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/e;->b()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/a/i;->d(I)Lcom/squareup/okhttp/internal/a/m;

    move-result-object v0

    iget v1, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    rsub-int v1, v1, 0x800

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/j$2;->a:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v4, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    const-wide/16 v0, -0x1

    :goto_3e
    return-wide v0

    :cond_3f
    iget v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget-wide v2, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    int-to-long v0, v1

    goto :goto_3e
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/j$2;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/j$2;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
