.class public Lorg/apache/b/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_12

    if-eqz p2, :cond_a

    :goto_7
    iput-object p1, p0, Lorg/apache/b/a/c/a/b;->a:Ljava/util/ArrayList;

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/b/a/c/a/b;->a:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/b/a/c/a/b;
    .registers 3

    new-instance v0, Lorg/apache/b/a/c/a/a/l;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/b/a/c/a/a/l;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lorg/apache/b/a/c/a/c;->a()Lorg/apache/b/a/c/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/b/a/c/a/a/l;->a()Lorg/apache/b/a/c/a/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/b/a/c/a/c;->a(Lorg/apache/b/a/c/a/a/c;)Lorg/apache/b/a/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .registers 5

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_c
    :try_start_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "> "

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Goodbye."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_3d
    invoke-static {v0}, Lorg/apache/b/a/c/a/b;->a(Ljava/lang/String;)Lorg/apache/b/a/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/b/a/c/a/b;->c()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    goto :goto_c

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_c
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/c/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lorg/apache/b/a/c/a/a;
    .registers 3

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/b/a/c/a/b;->a()I

    move-result v0

    if-gt v0, p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/apache/b/a/c/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/c/a/a;

    return-object v0
.end method

.method public b()Lorg/apache/b/a/c/a/h;
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lorg/apache/b/a/c/a/b;->a()I

    move-result v3

    if-ge v0, v3, :cond_3b

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/b;->a(I)Lorg/apache/b/a/c/a/a;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/b/a/c/a/g;

    if-nez v3, :cond_1c

    move v0, v2

    :goto_12
    if-nez v0, :cond_1f

    new-instance v0, Lorg/apache/b/a/c/a/h;

    iget-object v1, p0, Lorg/apache/b/a/c/a/b;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/c/a/h;-><init>(Ljava/util/ArrayList;Z)V

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_25
    invoke-virtual {p0}, Lorg/apache/b/a/c/a/b;->a()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/b;->a(I)Lorg/apache/b/a/c/a/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/b/a/c/a/a;->a(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_35
    new-instance v0, Lorg/apache/b/a/c/a/h;

    invoke-direct {v0, v2, v1}, Lorg/apache/b/a/c/a/h;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1b

    :cond_3b
    move v0, v1

    goto :goto_12
.end method

.method public c()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/b/a/c/a/b;->a()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/a/b;->a(I)Lorg/apache/b/a/c/a/a;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
