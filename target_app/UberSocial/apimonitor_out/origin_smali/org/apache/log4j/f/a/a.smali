.class public Lorg/apache/log4j/f/a/a;
.super Lorg/apache/log4j/f/g;
.source "SourceFile"


# static fields
.field private static l:Lorg/apache/log4j/f/e;

.field private static m:Ljava/io/StringWriter;

.field private static n:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/f/a/a;->l:Lorg/apache/log4j/f/e;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sput-object v0, Lorg/apache/log4j/f/a/a;->m:Ljava/io/StringWriter;

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/apache/log4j/f/a/a;->m:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/apache/log4j/f/a/a;->n:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/f/g;-><init>()V

    return-void
.end method

.method public static b(Lorg/apache/log4j/f/e;)V
    .registers 1

    sput-object p0, Lorg/apache/log4j/f/a/a;->l:Lorg/apache/log4j/f/e;

    return-void
.end method

.method public static p()Lorg/apache/log4j/f/e;
    .registers 1

    sget-object v0, Lorg/apache/log4j/f/a/a;->l:Lorg/apache/log4j/f/e;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lorg/apache/log4j/f/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/log4j/f/g;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .registers 3

    sget-object v0, Lorg/apache/log4j/f/a/a;->l:Lorg/apache/log4j/f/e;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lorg/apache/log4j/f/a/a;->l:Lorg/apache/log4j/f/e;

    invoke-virtual {p0}, Lorg/apache/log4j/f/a/a;->b()Lorg/apache/log4j/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method protected b(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    sget-object v1, Lorg/apache/log4j/f/a/a;->m:Ljava/io/StringWriter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/apache/log4j/f/a/a;->n:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object v0, Lorg/apache/log4j/f/a/a;->m:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/log4j/f/a/a;->m:Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/a/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/f/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
