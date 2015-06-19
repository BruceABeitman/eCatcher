.class Lorg/apache/log4j/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Lorg/apache/log4j/c;

.field private b:Lorg/apache/log4j/c/c;

.field private c:Lorg/apache/log4j/c/b;

.field private d:Z


# direct methods
.method constructor <init>(Lorg/apache/log4j/c/c;Lorg/apache/log4j/c;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/o;->d:Z

    iput-object p1, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    iput-object p2, p0, Lorg/apache/log4j/o;->a:Lorg/apache/log4j/c;

    iget-object v0, p2, Lorg/apache/log4j/c;->i:Lorg/apache/log4j/c/b;

    iput-object v0, p0, Lorg/apache/log4j/o;->c:Lorg/apache/log4j/c/b;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/o;->setDaemon(Z)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/o;->setPriority(I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Dispatcher-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/o;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/o;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v1, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lorg/apache/log4j/o;->d:Z

    iget-object v0, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v0}, Lorg/apache/log4j/c/c;->d()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 4

    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v0}, Lorg/apache/log4j/c/c;->d()I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lorg/apache/log4j/o;->d:Z

    if-eqz v0, :cond_16

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_47

    :goto_10
    iget-object v0, p0, Lorg/apache/log4j/o;->c:Lorg/apache/log4j/c/b;

    invoke-virtual {v0}, Lorg/apache/log4j/c/b;->m()V

    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_47
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_44

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v0}, Lorg/apache/log4j/c/c;->a()Lorg/apache/log4j/k/k;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v2}, Lorg/apache/log4j/c/c;->f()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lorg/apache/log4j/o;->b:Lorg/apache/log4j/c/c;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_47

    iget-object v1, p0, Lorg/apache/log4j/o;->a:Lorg/apache/log4j/c;

    iget-object v1, v1, Lorg/apache/log4j/c;->i:Lorg/apache/log4j/c/b;

    monitor-enter v1

    :try_start_34
    iget-object v2, p0, Lorg/apache/log4j/o;->c:Lorg/apache/log4j/c/b;

    if-eqz v2, :cond_3f

    if-eqz v0, :cond_3f

    iget-object v2, p0, Lorg/apache/log4j/o;->c:Lorg/apache/log4j/c/b;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/c/b;->a(Lorg/apache/log4j/k/k;)I

    :cond_3f
    monitor-exit v1

    goto :goto_0

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_41

    throw v0

    :catch_44
    move-exception v0

    :try_start_45
    monitor-exit v1

    goto :goto_10

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v0
.end method
