.class final Lcom/instagram/common/a/f/g;
.super Ljava/lang/Object;
.source "StreamingComponent.java"

# interfaces
.implements Lcom/instagram/common/a/f/b;


# instance fields
.field private final a:Lcom/instagram/common/a/f/h;


# direct methods
.method public constructor <init>(Lcom/instagram/common/a/f/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/a/f/g;->a:Lcom/instagram/common/a/f/h;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/a/f/g;->a:Lcom/instagram/common/a/f/h;

    invoke-interface {v0}, Lcom/instagram/common/a/f/h;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;Lcom/instagram/common/a/f/c;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/common/a/f/g;->a:Lcom/instagram/common/a/f/h;

    invoke-interface {v1}, Lcom/instagram/common/a/f/h;->d()Ljava/io/InputStream;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/instagram/common/a/f/c;->a(J)V

    const/16 v2, 0x1000

    :try_start_e
    new-array v2, v2, [B

    :goto_10
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {p2, v3, v4}, Lcom/instagram/common/a/f/c;->a(J)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_21

    goto :goto_10

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_21

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void
.end method
