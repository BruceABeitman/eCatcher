.class public final Lorg/apache/log4j/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_4e

    :goto_d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_23
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_27
    if-eqz v0, :cond_44

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_27

    :catch_31
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3d
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :catch_4e
    move-exception v2

    goto :goto_d
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)[Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lorg/apache/log4j/n;->b(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
