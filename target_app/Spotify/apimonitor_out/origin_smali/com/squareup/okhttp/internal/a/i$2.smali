.class final Lcom/squareup/okhttp/internal/a/i$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a/i;->n()Ljava/io/InputStream;
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/a/i;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/i;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/a/i$2;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i$2;->a:Lcom/squareup/okhttp/internal/a/i;

    iget-wide v0, v0, Lcom/squareup/okhttp/internal/a/i;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final read()I
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i$2;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i$2;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->b([BII)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/i$2;->a:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
