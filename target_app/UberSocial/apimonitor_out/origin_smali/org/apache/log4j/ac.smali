.class public Lorg/apache/log4j/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Hashtable; = null

.field static b:I = 0x0

.field static final c:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput v0, Lorg/apache/log4j/ac;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    :cond_a
    return-void
.end method

.method public static a(I)V
    .registers 3

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge p0, v1, :cond_f

    invoke-virtual {v0, p0}, Ljava/util/Stack;->setSize(I)V

    :cond_f
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v1

    if-nez v1, :cond_1e

    new-instance v0, Lorg/apache/log4j/ad;

    invoke-direct {v0, p0, v2}, Lorg/apache/log4j/ad;-><init>(Ljava/lang/String;Lorg/apache/log4j/ad;)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lorg/apache/log4j/ad;

    invoke-direct {v0, p0, v2}, Lorg/apache/log4j/ad;-><init>(Ljava/lang/String;Lorg/apache/log4j/ad;)V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_2d
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ad;

    new-instance v2, Lorg/apache/log4j/ad;

    invoke-direct {v2, p0, v0}, Lorg/apache/log4j/ad;-><init>(Ljava/lang/String;Lorg/apache/log4j/ad;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d
.end method

.method public static a(Ljava/util/Stack;)V
    .registers 3

    if-eqz p0, :cond_b

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static b()Ljava/util/Stack;
    .registers 1

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    goto :goto_7
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ad;

    iget-object v0, v0, Lorg/apache/log4j/ad;->a:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static d()I
    .registers 1

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    goto :goto_7
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ad;

    iget-object v0, v0, Lorg/apache/log4j/ad;->b:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/apache/log4j/ac;->h()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ad;

    iget-object v0, v0, Lorg/apache/log4j/ad;->b:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public static g()V
    .registers 2

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_10

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/apache/log4j/ac;->i()V

    :cond_10
    return-void
.end method

.method private static h()Ljava/util/Stack;
    .registers 2

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_11

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static i()V
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget-object v3, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_9
    sget v0, Lorg/apache/log4j/ac;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/log4j/ac;->b:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_17

    monitor-exit v3

    goto :goto_5

    :catchall_14
    move-exception v0

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    sput v0, Lorg/apache/log4j/ac;->b:I

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sget-object v0, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    move v2, v1

    :goto_26
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x4

    if-gt v2, v0, :cond_44

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3f

    add-int/lit8 v0, v2, 0x1

    :goto_3d
    move v2, v0

    goto :goto_26

    :cond_3f
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_3d

    :cond_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_14

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_49
    if-ge v1, v2, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Lazy NDC removal for thread ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "] ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v5, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ")."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    sget-object v3, Lorg/apache/log4j/ac;->a:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method
