.class public Lcom/instagram/common/e/b/h;
.super Ljava/lang/Object;
.source "IgImageCache.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Lcom/instagram/common/e/b/h;
.field private final c:Landroid/content/Context;
.field private final d:Ljava/lang/String;
.field private final e:Landroid/os/Handler;
.field private final f:Landroid/os/Handler;
.field private final g:Lcom/instagram/common/e/b/e;
.field private final h:Ljava/lang/Object;
.field private final i:Ljava/util/Map;
.field private final j:Ljava/util/Set;
.field private final k:Ljava/util/Deque;
.field private l:Lcom/instagram/common/e/a/i;
.field private final m:Lcom/instagram/common/e/b/l;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/common/e/b/h;
sput-object v0, Lcom/instagram/common/e/b/h;->a:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/e/b/e;
invoke-direct {v0}, Lcom/instagram/common/e/b/e;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->g:Lcom/instagram/common/e/b/e;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->h:Ljava/lang/Object;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->i:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->j:Ljava/util/Set;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
sget-object v0, Lcom/instagram/common/e/a/g;->a:Lcom/instagram/common/e/a/i;
iput-object v0, p0, Lcom/instagram/common/e/b/h;->l:Lcom/instagram/common/e/a/i;
new-instance v0, Lcom/instagram/common/e/b/l;
invoke-direct {v0, p0, v2}, Lcom/instagram/common/e/b/l;-><init>(Lcom/instagram/common/e/b/h;B)V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/e/b/h;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/common/e/b/h;->d:Ljava/lang/String;
new-instance v0, Lcom/instagram/common/e/b/n;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/common/e/b/n;-><init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;B)V
iput-object v0, p0, Lcom/instagram/common/e/b/h;->e:Landroid/os/Handler;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "BitmapDecodingThread"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Lcom/instagram/common/e/b/i;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, p0, v0, v2}, Lcom/instagram/common/e/b/i;-><init>(Lcom/instagram/common/e/b/h;Landroid/os/Looper;B)V
iput-object v1, p0, Lcom/instagram/common/e/b/h;->f:Landroid/os/Handler;
return-void
.end method
.method public static a()Lcom/instagram/common/e/b/h;
.registers 1
sget-object v0, Lcom/instagram/common/e/b/h;->b:Lcom/instagram/common/e/b/h;
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/common/e/b/h;
.registers 3
new-instance v0, Lcom/instagram/common/e/b/h;
invoke-direct {v0, p0, p1}, Lcom/instagram/common/e/b/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V
sput-object v0, Lcom/instagram/common/e/b/h;->b:Lcom/instagram/common/e/b/h;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/b/l;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
return-object v0
.end method
.method private a(Lcom/instagram/common/e/a/g;Lcom/instagram/common/e/b/c;)Z
.registers 7
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/common/e/b/h;->g:Lcom/instagram/common/e/b/e;
invoke-virtual {p1}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/e/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/e/b/d;
if-eqz v0, :cond_22
invoke-virtual {p2}, Lcom/instagram/common/e/b/c;->d()Lcom/instagram/common/e/b/k;
move-result-object v2
if-nez v2, :cond_17
move v0, v1
:goto_16
return v0
:cond_17
iget-object v3, p1, Lcom/instagram/common/e/a/g;->c:Ljava/lang/String;
invoke-virtual {v0}, Lcom/instagram/common/e/b/d;->a()Landroid/graphics/Bitmap;
move-result-object v0
invoke-interface {v2, v3, v0}, Lcom/instagram/common/e/b/k;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
move v0, v1
goto :goto_16
:cond_22
const/4 v0, 0x0
goto :goto_16
.end method
.method static synthetic b(Lcom/instagram/common/e/b/h;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->h:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/common/e/b/h;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->i:Ljava/util/Map;
return-object v0
.end method
.method private c()V
.registers 4
iget-object v1, p0, Lcom/instagram/common/e/b/h;->h:Ljava/lang/Object;
monitor-enter v1
:goto_3
:try_start_3
iget-object v0, p0, Lcom/instagram/common/e/b/h;->j:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
const/4 v2, 0x4
if-ge v0, v2, :cond_2a
iget-object v0, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z
move-result v0
if-nez v0, :cond_2a
iget-object v0, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/e/b/m;
iget-object v2, p0, Lcom/instagram/common/e/b/h;->j:Ljava/util/Set;
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v2, Lcom/instagram/common/e/b/a;->a:Ljava/util/concurrent/Executor;
invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:try_end_26
.catchall {:try_start_3 .. :try_end_26} :catchall_27
goto :goto_3
:catchall_27
move-exception v0
monitor-exit v1
throw v0
:try_start_2a
:cond_2a
monitor-exit v1
:try_end_2b
.catchall {:try_start_2a .. :try_end_2b} :catchall_27
return-void
.end method
.method static synthetic d(Lcom/instagram/common/e/b/h;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->j:Ljava/util/Set;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/common/e/b/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/e/b/h;->c()V
return-void
.end method
.method static synthetic f(Lcom/instagram/common/e/b/h;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->e:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/common/e/b/h;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->c:Landroid/content/Context;
return-object v0
.end method
.method static synthetic h(Lcom/instagram/common/e/b/h;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->d:Ljava/lang/String;
return-object v0
.end method
.method static synthetic i(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/b/e;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->g:Lcom/instagram/common/e/b/e;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/a/i;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/b/h;->l:Lcom/instagram/common/e/a/i;
return-object v0
.end method
.method public final a(Lcom/instagram/common/e/a/c;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
invoke-static {v0, p1}, Lcom/instagram/common/e/b/l;->a(Lcom/instagram/common/e/b/l;Lcom/instagram/common/e/a/c;)V
return-void
.end method
.method public final a(Lcom/instagram/common/e/a/f;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
invoke-static {v0, p1}, Lcom/instagram/common/e/b/l;->a(Lcom/instagram/common/e/b/l;Lcom/instagram/common/e/a/f;)V
return-void
.end method
.method public final a(Lcom/instagram/common/e/a/i;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/e/b/h;->l:Lcom/instagram/common/e/a/i;
return-void
.end method
.method final a(Lcom/instagram/common/e/b/c;)V
.registers 10
invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->c()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/e/b/h;->l:Lcom/instagram/common/e/a/i;
invoke-interface {v1, v0}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;
move-result-object v6
invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->g()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/common/e/b/h;->g:Lcom/instagram/common/e/b/e;
invoke-virtual {v6}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/e/b/e;->b(Ljava/lang/Object;)Ljava/lang/Object;
:cond_19
invoke-direct {p0, v6, p1}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/g;Lcom/instagram/common/e/b/c;)Z
move-result v0
if-eqz v0, :cond_20
:goto_1f
return-void
:cond_20
iget-object v7, p0, Lcom/instagram/common/e/b/h;->h:Ljava/lang/Object;
monitor-enter v7
:try_start_23
iget-object v0, p0, Lcom/instagram/common/e/b/h;->i:Ljava/util/Map;
invoke-virtual {v6}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/e/b/m;
if-eqz v0, :cond_58
invoke-static {v0, p1, v6}, Lcom/instagram/common/e/b/m;->a(Lcom/instagram/common/e/b/m;Lcom/instagram/common/e/b/c;Lcom/instagram/common/e/a/g;)V
iget-object v1, p0, Lcom/instagram/common/e/b/h;->j:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_50
invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->f()Z
move-result v1
if-eqz v1, :cond_50
sget-object v1, Lcom/instagram/common/e/b/h;->a:Ljava/lang/Class;
iget-object v1, v6, Lcom/instagram/common/e/a/g;->c:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
:goto_50
:cond_50
invoke-direct {p0}, Lcom/instagram/common/e/b/h;->c()V
monitor-exit v7
:try_end_54
.catchall {:try_start_23 .. :try_end_54} :catchall_55
goto :goto_1f
:catchall_55
move-exception v0
monitor-exit v7
throw v0
:cond_58
:try_start_58
invoke-direct {p0, v6, p1}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/g;Lcom/instagram/common/e/b/c;)Z
move-result v0
if-eqz v0, :cond_60
monitor-exit v7
goto :goto_1f
:cond_60
new-instance v0, Lcom/instagram/common/e/b/m;
iget-object v2, v6, Lcom/instagram/common/e/a/g;->b:Ljava/lang/String;
invoke-virtual {v6}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v3
iget-object v4, v6, Lcom/instagram/common/e/a/g;->d:Ljava/lang/String;
const/4 v5, 0x0
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/common/e/b/m;-><init>(Lcom/instagram/common/e/b/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
invoke-static {v0, p1, v6}, Lcom/instagram/common/e/b/m;->a(Lcom/instagram/common/e/b/m;Lcom/instagram/common/e/b/c;Lcom/instagram/common/e/a/g;)V
iget-object v1, p0, Lcom/instagram/common/e/b/h;->i:Ljava/util/Map;
invoke-virtual {v6}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/common/e/b/c;->f()Z
move-result v1
if-eqz v1, :cond_87
iget-object v1, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
goto :goto_50
:cond_87
iget-object v1, p0, Lcom/instagram/common/e/b/h;->k:Ljava/util/Deque;
invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
:try_end_8c
.catchall {:try_start_58 .. :try_end_8c} :catchall_55
goto :goto_50
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/instagram/common/e/b/h;->f:Landroid/os/Handler;
iget-object v1, p0, Lcom/instagram/common/e/b/h;->f:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final b()J
.registers 3
iget-object v0, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
invoke-virtual {v0}, Lcom/instagram/common/e/b/l;->b()Lcom/c/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/c/a/a;->a()J
move-result-wide v0
return-wide v0
.end method
.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 10
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_14
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can\'t fetch the image on UI thread."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/instagram/common/e/b/h;->l:Lcom/instagram/common/e/a/i;
invoke-interface {v0, p1}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;
move-result-object v4
new-instance v0, Lcom/instagram/common/e/b/r;
iget-object v1, p0, Lcom/instagram/common/e/b/h;->m:Lcom/instagram/common/e/b/l;
invoke-virtual {v4}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;
move-result-object v5
iget-object v6, v4, Lcom/instagram/common/e/a/g;->d:Ljava/lang/String;
iget-object v7, v4, Lcom/instagram/common/e/a/g;->b:Ljava/lang/String;
move v4, v3
invoke-direct/range {v0 .. v7}, Lcom/instagram/common/e/b/r;-><init>(Lcom/instagram/common/e/b/t;Lcom/instagram/common/e/b/s;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/instagram/common/e/b/r;->a()Lcom/instagram/common/e/b/d;
move-result-object v0
if-nez v0, :cond_31
:goto_30
return-object v2
:cond_31
invoke-virtual {v0}, Lcom/instagram/common/e/b/d;->a()Landroid/graphics/Bitmap;
move-result-object v2
goto :goto_30
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/common/e/b/c;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/instagram/common/e/b/c;-><init>(Ljava/lang/String;Lcom/instagram/common/e/b/k;)V
invoke-virtual {p0, v0}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/b/c;)V
return-void
.end method