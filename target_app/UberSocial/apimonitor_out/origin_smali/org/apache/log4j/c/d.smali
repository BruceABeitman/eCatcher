.class public Lorg/apache/log4j/c/d;
.super Lorg/apache/log4j/c/aa;
.source "SourceFile"


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/c/aa;-><init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/log4j/c/d;->a:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/log4j/c/d;->a:J

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/c/d;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/apache/log4j/c/d;->a:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/c/d;->a:J
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/c/d;->b:Lorg/apache/log4j/k/e;

    const-string v2, "Write failure."

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f
.end method
