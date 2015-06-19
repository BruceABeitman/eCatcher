.class public Lorg/apache/log4j/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/e;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/apache/log4j/c/o;->a:Ljava/lang/String;

    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/apache/log4j/c/o;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/c/o;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/log4j/c/o;->c:Z

    if-eqz v0, :cond_a

    invoke-static {p1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/c/o;->c:Z

    :cond_a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/c/o;->a(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/k/k;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/k/k;)V
    .registers 6

    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_8

    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_f

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_f
    iget-boolean v0, p0, Lorg/apache/log4j/c/o;->c:Z

    if-eqz v0, :cond_19

    invoke-static {p1, p2}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/c/o;->c:Z

    :cond_19
    return-void
.end method

.method public a(Lorg/apache/log4j/a;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/apache/log4j/aa;)V
    .registers 2

    return-void
.end method

.method public b(Lorg/apache/log4j/a;)V
    .registers 2

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method
