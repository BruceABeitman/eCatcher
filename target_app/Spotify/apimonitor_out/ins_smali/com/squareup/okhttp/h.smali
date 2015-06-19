.class public final Lcom/squareup/okhttp/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/squareup/okhttp/h;
.field private final b:I
.field private final c:J
.field private final d:Ljava/util/LinkedList;
.field private final e:Ljava/util/concurrent/ExecutorService;
.field private final f:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 4
const-string v0, "http.keepAlive"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v0, "http.keepAliveDuration"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "http.maxConnections"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v0, :cond_29
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
:goto_18
if-eqz v2, :cond_2d
invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2d
new-instance v2, Lcom/squareup/okhttp/h;
const/4 v3, 0x0
invoke-direct {v2, v3, v0, v1}, Lcom/squareup/okhttp/h;-><init>(IJ)V
sput-object v2, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/h;
:goto_28
return-void
:cond_29
const-wide/32 v0, 0x493e0
goto :goto_18
:cond_2d
if-eqz v3, :cond_3b
new-instance v2, Lcom/squareup/okhttp/h;
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
invoke-direct {v2, v3, v0, v1}, Lcom/squareup/okhttp/h;-><init>(IJ)V
sput-object v2, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/h;
goto :goto_28
:cond_3b
new-instance v2, Lcom/squareup/okhttp/h;
const/4 v3, 0x5
invoke-direct {v2, v3, v0, v1}, Lcom/squareup/okhttp/h;-><init>(IJ)V
sput-object v2, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/h;
goto :goto_28
.end method
.method private constructor <init>(IJ)V
.registers 14
const-wide/16 v8, 0x3e8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x0
const/4 v2, 0x1
const-wide/16 v3, 0x3c
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
const-string v7, "OkHttp ConnectionPool"
invoke-static {v7}, Lcom/squareup/okhttp/internal/o;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
move-result-object v7
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
iput-object v0, p0, Lcom/squareup/okhttp/h;->e:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/squareup/okhttp/h$1;
invoke-direct {v0, p0}, Lcom/squareup/okhttp/h$1;-><init>(Lcom/squareup/okhttp/h;)V
iput-object v0, p0, Lcom/squareup/okhttp/h;->f:Ljava/lang/Runnable;
iput p1, p0, Lcom/squareup/okhttp/h;->b:I
mul-long v0, p2, v8
mul-long/2addr v0, v8
iput-wide v0, p0, Lcom/squareup/okhttp/h;->c:J
return-void
.end method
.method public static a()Lcom/squareup/okhttp/h;
.registers 1
sget-object v0, Lcom/squareup/okhttp/h;->a:Lcom/squareup/okhttp/h;
return-object v0
.end method
.method static synthetic a(Lcom/squareup/okhttp/h;)Ljava/util/LinkedList;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
return-object v0
.end method
.method static synthetic b(Lcom/squareup/okhttp/h;)J
.registers 3
iget-wide v0, p0, Lcom/squareup/okhttp/h;->c:J
return-wide v0
.end method
.method static synthetic c(Lcom/squareup/okhttp/h;)I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/h;->b:I
return v0
.end method
.method public final declared-synchronized a(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/g;
.registers 10
monitor-enter p0
const/4 v2, 0x0
:try_start_2
iget-object v0, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
iget-object v1, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;
move-result-object v3
:cond_e
:goto_e
invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
if-eqz v0, :cond_80
invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/g;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->d()Lcom/squareup/okhttp/p;
move-result-object v1
iget-object v1, v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/a;
invoke-virtual {v1, p1}, Lcom/squareup/okhttp/a;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->f()Z
move-result v1
if-eqz v1, :cond_e
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v4
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->j()J
move-result-wide v6
sub-long/2addr v4, v6
iget-wide v6, p0, Lcom/squareup/okhttp/h;->c:J
cmp-long v1, v4, v6
if-gez v1, :cond_e
invoke-interface {v3}, Ljava/util/ListIterator;->remove()V
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->l()Z
:try_end_41
.catchall {:try_start_2 .. :try_end_41} :catchall_7d
move-result v1
if-nez v1, :cond_4d
:try_start_44
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->e()Ljava/net/Socket;
invoke-static {}, Lcom/squareup/okhttp/internal/k;->c()V
:try_end_4d
.catchall {:try_start_44 .. :try_end_4d} :catchall_7d
.catch Ljava/net/SocketException; {:try_start_44 .. :try_end_4d} :catch_63
:goto_4d
:cond_4d
if-eqz v0, :cond_5a
:try_start_4f
invoke-virtual {v0}, Lcom/squareup/okhttp/g;->l()Z
move-result v1
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
:cond_5a
iget-object v1, p0, Lcom/squareup/okhttp/h;->e:Ljava/util/concurrent/ExecutorService;
iget-object v2, p0, Lcom/squareup/okhttp/h;->f:Ljava/lang/Runnable;
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
:try_end_61
.catchall {:try_start_4f .. :try_end_61} :catchall_7d
monitor-exit p0
return-object v0
:catch_63
move-exception v1
:try_start_64
invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "Unable to tagSocket(): "
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljava/lang/String;)V
:try_end_7c
.catchall {:try_start_64 .. :try_end_7c} :catchall_7d
goto :goto_e
:catchall_7d
move-exception v0
monitor-exit p0
throw v0
:cond_80
move-object v0, v2
goto :goto_4d
.end method
.method public final a(Lcom/squareup/okhttp/g;)V
.registers 5
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->b()Z
move-result v0
if-eqz v0, :cond_6
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->f()Z
move-result v0
if-nez v0, :cond_17
invoke-static {p1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
goto :goto_6
:try_start_17
:cond_17
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->e()Ljava/net/Socket;
invoke-static {}, Lcom/squareup/okhttp/internal/k;->d()V
:try_end_20
.catch Ljava/net/SocketException; {:try_start_17 .. :try_end_20} :catch_35
monitor-enter p0
:try_start_21
iget-object v0, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->n()V
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->h()V
monitor-exit p0
:try_end_2d
.catchall {:try_start_21 .. :try_end_2d} :catchall_4f
iget-object v0, p0, Lcom/squareup/okhttp/h;->e:Ljava/util/concurrent/ExecutorService;
iget-object v1, p0, Lcom/squareup/okhttp/h;->f:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_6
:catch_35
move-exception v0
invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unable to untagSocket(): "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/k;->a(Ljava/lang/String;)V
invoke-static {p1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V
goto :goto_6
:catchall_4f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b(Lcom/squareup/okhttp/g;)V
.registers 4
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->l()Z
move-result v0
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_c
iget-object v0, p0, Lcom/squareup/okhttp/h;->e:Ljava/util/concurrent/ExecutorService;
iget-object v1, p0, Lcom/squareup/okhttp/h;->f:Ljava/lang/Runnable;
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
invoke-virtual {p1}, Lcom/squareup/okhttp/g;->f()Z
move-result v0
if-eqz v0, :cond_20
monitor-enter p0
:try_start_1a
iget-object v0, p0, Lcom/squareup/okhttp/h;->d:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
monitor-exit p0
:cond_20
:try_end_20
.catchall {:try_start_1a .. :try_end_20} :catchall_21
return-void
:catchall_21
move-exception v0
monitor-exit p0
throw v0
.end method