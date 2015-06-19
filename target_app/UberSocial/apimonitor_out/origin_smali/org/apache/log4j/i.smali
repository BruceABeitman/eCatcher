.class public Lorg/apache/log4j/i;
.super Lorg/apache/log4j/ap;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "System.out"

.field public static final i:Ljava/lang/String; = "System.err"


# instance fields
.field protected j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/ap;-><init>()V

    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/i;->k:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;)V
    .registers 3

    const-string v0, "System.out"

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/i;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lorg/apache/log4j/ap;-><init>()V

    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/i;->k:Z

    invoke-virtual {p0, p1}, Lorg/apache/log4j/i;->b(Lorg/apache/log4j/u;)V

    invoke-virtual {p0, p2}, Lorg/apache/log4j/i;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/i;->i()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/i;->k:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "System.out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    :goto_10
    return-void

    :cond_11
    const-string v1, "System.err"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "System.err"

    iput-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    goto :goto_10

    :cond_1e
    invoke-virtual {p0, p1}, Lorg/apache/log4j/i;->c(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] should be System.out or System.err."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    const-string v0, "Using previously set target, System.out by default."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/log4j/i;->k:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/apache/log4j/j;

    invoke-direct {v0}, Lorg/apache/log4j/j;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->b(Ljava/io/Writer;)V

    :goto_1a
    invoke-super {p0}, Lorg/apache/log4j/ap;->i()V

    return-void

    :cond_1e
    new-instance v0, Lorg/apache/log4j/k;

    invoke-direct {v0}, Lorg/apache/log4j/k;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->b(Ljava/io/Writer;)V

    goto :goto_1a

    :cond_2b
    iget-object v0, p0, Lorg/apache/log4j/i;->j:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->b(Ljava/io/Writer;)V

    goto :goto_1a

    :cond_3f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/i;->b(Ljava/io/Writer;)V

    goto :goto_1a
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i;->k:Z

    return v0
.end method

.method protected final m()V
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i;->k:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Lorg/apache/log4j/ap;->m()V

    :cond_7
    return-void
.end method
