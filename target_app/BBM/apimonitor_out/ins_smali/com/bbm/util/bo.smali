.class public Lcom/bbm/util/bo;
.super Ljava/lang/Object;
.source "HttpLoader.java"
.field private static e:I
.field private static f:Ljava/util/PriorityQueue;
.field private static g:Ljava/util/HashSet;
.field private static h:Lcom/bbm/util/bv;
.field private static i:Ljava/util/PriorityQueue;
.field protected final a:Lcom/bbm/ui/activities/ajy;
.field protected b:Z
.field protected final c:I
.field protected final d:Lcom/bbm/util/br;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x5
sput v0, Lcom/bbm/util/bo;->e:I
new-instance v0, Ljava/util/PriorityQueue;
sget v1, Lcom/bbm/util/bo;->e:I
sget-object v2, Lcom/bbm/util/bs;->h:Ljava/util/Comparator;
invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V
sput-object v0, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
new-instance v0, Ljava/util/HashSet;
sget v1, Lcom/bbm/util/bo;->e:I
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V
sput-object v0, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
const/4 v0, 0x0
sput-object v0, Lcom/bbm/util/bo;->h:Lcom/bbm/util/bv;
new-instance v0, Ljava/util/PriorityQueue;
sget v1, Lcom/bbm/util/bo;->e:I
sget-object v2, Lcom/bbm/util/bs;->h:Ljava/util/Comparator;
invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V
sput-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
return-void
.end method
.method public constructor <init>(Lcom/bbm/ui/activities/ajy;ZILcom/bbm/util/br;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/util/bo;->b:Z
iput-object p1, p0, Lcom/bbm/util/bo;->a:Lcom/bbm/ui/activities/ajy;
iput-boolean p2, p0, Lcom/bbm/util/bo;->b:Z
iput p3, p0, Lcom/bbm/util/bo;->c:I
iput-object p4, p0, Lcom/bbm/util/bo;->d:Lcom/bbm/util/br;
iget-object v0, p0, Lcom/bbm/util/bo;->a:Lcom/bbm/ui/activities/ajy;
new-instance v1, Lcom/bbm/util/bq;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/bbm/util/bq;-><init>(B)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ajy;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a()Ljava/util/PriorityQueue;
.registers 1
sget-object v0, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
return-object v0
.end method
.method private static a(Lcom/bbm/util/bs;)V
.registers 4
sget-object v1, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Queue finished "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/util/bo;->e()V
monitor-exit v1
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_24
return-void
:catchall_24
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b()Lcom/bbm/util/bv;
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/bbm/util/bo;->h:Lcom/bbm/util/bv;
return-object v0
.end method
.method static synthetic c()V
.registers 0
invoke-static {}, Lcom/bbm/util/bo;->e()V
return-void
.end method
.method static synthetic d()Ljava/util/PriorityQueue;
.registers 1
sget-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
return-object v0
.end method
.method private e(Ljava/net/URL;)Lcom/bbm/util/bs;
.registers 7
new-instance v1, Lcom/bbm/util/bs;
iget-object v0, p0, Lcom/bbm/util/bo;->a:Lcom/bbm/ui/activities/ajy;
iget-object v2, p0, Lcom/bbm/util/bo;->d:Lcom/bbm/util/br;
invoke-direct {v1, v0, v2, p0, p1}, Lcom/bbm/util/bs;-><init>(Lcom/bbm/ui/activities/ajy;Lcom/bbm/util/br;Lcom/bbm/util/bo;Ljava/net/URL;)V
sget-object v2, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v2
:try_start_c
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "Queue add "
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v3}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_2c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_58
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/bs;
iget-object v0, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "Preload remove existing "
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v0, v4}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
:cond_58
invoke-static {}, Lcom/bbm/util/bo;->e()V
monitor-exit v2
:try_end_5c
.catchall {:try_start_c .. :try_end_5c} :catchall_67
monitor-enter v1
:goto_5d
:try_start_5d
iget-boolean v0, v1, Lcom/bbm/util/bs;->e:Z
:try_end_5f
.catchall {:try_start_5d .. :try_end_5f} :catchall_6c
if-nez v0, :cond_6a
:try_start_61
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
:try_end_64
.catchall {:try_start_61 .. :try_end_64} :catchall_6c
.catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_65
goto :goto_5d
:catch_65
move-exception v0
goto :goto_5d
:catchall_67
move-exception v0
monitor-exit v2
throw v0
:cond_6a
:try_start_6a
monitor-exit v1
:try_end_6b
.catchall {:try_start_6a .. :try_end_6b} :catchall_6c
return-object v1
:catchall_6c
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static e()V
.registers 5
sget-object v2, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v2
:goto_3
:try_start_3
sget-object v0, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v0
sget v1, Lcom/bbm/util/bo;->e:I
if-ge v0, v1, :cond_48
sget-object v0, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z
move-result v0
if-nez v0, :cond_48
sget-object v0, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/bs;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Queue scheduling "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v1, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
monitor-enter v0
:try_end_3a
.catchall {:try_start_3 .. :try_end_3a} :catchall_45
const/4 v1, 0x1
:try_start_3b
iput-boolean v1, v0, Lcom/bbm/util/bs;->e:Z
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v0
:try_end_41
.catchall {:try_start_3b .. :try_end_41} :catchall_42
goto :goto_3
:catchall_42
move-exception v1
:try_start_43
monitor-exit v0
throw v1
:catchall_45
:try_end_45
.catchall {:try_start_43 .. :try_end_45} :catchall_45
move-exception v0
monitor-exit v2
throw v0
:cond_48
:try_start_48
sget-object v0, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z
move-result v0
if-eqz v0, :cond_93
sget-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z
move-result v0
if-nez v0, :cond_93
sget-object v0, Lcom/bbm/util/bo;->h:Lcom/bbm/util/bv;
if-nez v0, :cond_93
sget-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/bs;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Preload scheduling "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v3}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Lcom/bbm/util/bv;
iget-object v3, v0, Lcom/bbm/util/bs;->f:Lcom/bbm/util/bo;
iget-object v0, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
new-instance v4, Lcom/bbm/util/bp;
invoke-direct {v4}, Lcom/bbm/util/bp;-><init>()V
invoke-direct {v1, v3, v0, v4}, Lcom/bbm/util/bv;-><init>(Lcom/bbm/util/bo;Ljava/net/URL;Lcom/bbm/util/bu;)V
sput-object v1, Lcom/bbm/util/bo;->h:Lcom/bbm/util/bv;
sget-object v0, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Void;
invoke-virtual {v1, v0, v3}, Lcom/bbm/util/bv;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
:cond_93
monitor-exit v2
:try_end_94
.catchall {:try_start_48 .. :try_end_94} :catchall_45
return-void
.end method
.method public final a(Ljava/net/URL;)V
.registers 6
sget-object v1, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/bs;
iget-object v0, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;
invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Preload ignoring existing "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit v1
:goto_33
return-void
:cond_34
new-instance v0, Lcom/bbm/util/bs;
iget-object v2, p0, Lcom/bbm/util/bo;->a:Lcom/bbm/ui/activities/ajy;
iget-object v3, p0, Lcom/bbm/util/bo;->d:Lcom/bbm/util/br;
invoke-direct {v0, v2, v3, p0, p1}, Lcom/bbm/util/bs;-><init>(Lcom/bbm/ui/activities/ajy;Lcom/bbm/util/br;Lcom/bbm/util/bo;Ljava/net/URL;)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Preload add "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v2, Lcom/bbm/util/bo;->i:Ljava/util/PriorityQueue;
invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/util/bo;->e()V
monitor-exit v1
:try_end_5b
.catchall {:try_start_3 .. :try_end_5b} :catchall_5c
goto :goto_33
:catchall_5c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Ljava/net/URL;Lcom/bbm/util/bu;)V
.registers 6
new-instance v0, Lcom/bbm/util/bv;
invoke-direct {v0, p0, p1, p2}, Lcom/bbm/util/bv;-><init>(Lcom/bbm/util/bo;Ljava/net/URL;Lcom/bbm/util/bu;)V
sget-object v1, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/bv;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
return-void
.end method
.method public final a(Ljava/net/URL;Lcom/bbm/util/bx;)V
.registers 6
new-instance v0, Lcom/bbm/util/by;
invoke-direct {v0, p0, p1, p2}, Lcom/bbm/util/by;-><init>(Lcom/bbm/util/bo;Ljava/net/URL;Lcom/bbm/util/bx;)V
sget-object v1, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/by;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
return-void
.end method
.method public final b(Ljava/net/URL;)[B
.registers 8
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/bbm/util/bo;->e(Ljava/net/URL;)Lcom/bbm/util/bs;
move-result-object v2
sget-object v1, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v1
:try_start_8
sget-object v3, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_12
monitor-exit v1
:goto_11
:try_end_11
.catchall {:try_start_8 .. :try_end_11} :catchall_2f
return-object v0
:cond_12
monitor-exit v1
:try_start_13
invoke-virtual {p0, p1}, Lcom/bbm/util/bo;->d(Ljava/net/URL;)Ljava/net/URLConnection;
move-result-object v3
new-instance v1, Ljava/io/BufferedInputStream;
invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v4
invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_20
:try_end_20
.catchall {:try_start_13 .. :try_end_20} :catchall_32
invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I
move-result v0
invoke-static {v1, v0}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B
:try_end_27
.catchall {:try_start_20 .. :try_end_27} :catchall_3f
move-result-object v0
invoke-static {v2}, Lcom/bbm/util/bo;->a(Lcom/bbm/util/bs;)V
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
goto :goto_11
:catchall_2f
move-exception v0
monitor-exit v1
throw v0
:catchall_32
move-exception v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_36
invoke-static {v2}, Lcom/bbm/util/bo;->a(Lcom/bbm/util/bs;)V
if-eqz v1, :cond_3e
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_3e
throw v0
:catchall_3f
move-exception v0
goto :goto_36
.end method
.method public final c(Ljava/net/URL;)[Ljava/lang/Object;
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/bbm/util/bo;->e(Ljava/net/URL;)Lcom/bbm/util/bs;
move-result-object v3
sget-object v1, Lcom/bbm/util/bo;->f:Ljava/util/PriorityQueue;
monitor-enter v1
:try_start_8
sget-object v2, Lcom/bbm/util/bo;->g:Ljava/util/HashSet;
invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_12
monitor-exit v1
:try_end_11
.catchall {:try_start_8 .. :try_end_11} :catchall_3d
:goto_11
return-object v0
:cond_12
monitor-exit v1
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
:try_start_16
invoke-virtual {p0, p1}, Lcom/bbm/util/bo;->d(Ljava/net/URL;)Ljava/net/URLConnection;
move-result-object v4
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v5
invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_23
:try_end_23
.catchall {:try_start_16 .. :try_end_23} :catchall_40
invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I
move-result v0
invoke-static {v2, v0}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B
move-result-object v0
invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v4
const/4 v5, 0x0
aput-object v0, v1, v5
const/4 v0, 0x1
aput-object v4, v1, v0
:try_end_35
.catchall {:try_start_23 .. :try_end_35} :catchall_4d
invoke-static {v3}, Lcom/bbm/util/bo;->a(Lcom/bbm/util/bs;)V
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
move-object v0, v1
goto :goto_11
:catchall_3d
move-exception v0
monitor-exit v1
throw v0
:catchall_40
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
:goto_44
invoke-static {v3}, Lcom/bbm/util/bo;->a(Lcom/bbm/util/bs;)V
if-eqz v1, :cond_4c
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_4c
throw v0
:catchall_4d
move-exception v0
move-object v1, v2
goto :goto_44
.end method
.method protected d(Ljava/net/URL;)Ljava/net/URLConnection;
.registers 6
invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v2, "Cache-Control"
iget-boolean v1, p0, Lcom/bbm/util/bo;->b:Z
if-eqz v1, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "max-age="
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/bbm/util/bo;->c:I
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_1d
invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_21
const-string v1, "no-cache"
goto :goto_1d
.end method