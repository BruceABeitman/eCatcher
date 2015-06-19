.class public Lorg/apache/log4j/c/aa;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# instance fields
.field protected b:Lorg/apache/log4j/k/e;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lorg/apache/log4j/c/aa;->a(Lorg/apache/log4j/k/e;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/e;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to set null ErrorHandler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lorg/apache/log4j/c/aa;->b:Lorg/apache/log4j/k/e;

    return-void
.end method

.method public flush()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/c/aa;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/c/aa;->b:Lorg/apache/log4j/k/e;

    const-string v2, "Failed to flush writer,"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_5
.end method

.method public write(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_7

    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/c/aa;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v0

    iget-object v1, p0, Lorg/apache/log4j/c/aa;->b:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to write ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_7
.end method
