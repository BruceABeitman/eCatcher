.class final Lcom/b/a/c;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/b/a/b;


# direct methods
.method private constructor <init>(Lcom/b/a/b;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/c;->a:Lcom/b/a/b;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/b;Ljava/io/OutputStream;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/b/a/c;-><init>(Lcom/b/a/b;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/b/a/c;->a:Lcom/b/a/b;

    invoke-static {v0}, Lcom/b/a/b;->c(Lcom/b/a/b;)Z

    goto :goto_5
.end method

.method public final flush()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/b/a/c;->a:Lcom/b/a/b;

    invoke-static {v0}, Lcom/b/a/b;->c(Lcom/b/a/b;)Z

    goto :goto_5
.end method

.method public final write(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/b/a/c;->a:Lcom/b/a/b;

    invoke-static {v0}, Lcom/b/a/b;->c(Lcom/b/a/b;)Z

    goto :goto_5
.end method

.method public final write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v0, p0, Lcom/b/a/c;->a:Lcom/b/a/b;

    invoke-static {v0}, Lcom/b/a/b;->c(Lcom/b/a/b;)Z

    goto :goto_5
.end method
