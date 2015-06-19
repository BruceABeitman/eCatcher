.class public Lcom/instagram/filterkit/c/e;
.super Ljava/lang/Object;
.source "SingleThreadRenderManager.java"
.implements Lcom/instagram/filterkit/c/c;
.field private static final a:Ljava/lang/Class;
.field private final b:Lcom/instagram/filterkit/c/d;
.field private final c:Lcom/instagram/filterkit/a/c;
.field private final d:Lcom/instagram/filterkit/c/b;
.field private final e:Lcom/instagram/filterkit/a/b;
.field private final f:Ljava/util/Queue;
.field private final g:Ljava/util/List;
.field private final h:Ljava/lang/Object;
.field private volatile i:Lcom/instagram/filterkit/c/h;
.field private volatile j:Lcom/instagram/filterkit/filter/IgFilter;
.field private volatile k:Lcom/instagram/filterkit/e/a;
.field private volatile l:Lcom/instagram/filterkit/e/c;
.field private volatile m:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/filterkit/c/e;
sput-object v0, Lcom/instagram/filterkit/c/e;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/filterkit/c/g;
invoke-direct {v0, p0, v1}, Lcom/instagram/filterkit/c/g;-><init>(Lcom/instagram/filterkit/c/e;B)V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;
iput-boolean v1, p0, Lcom/instagram/filterkit/c/e;->m:Z
iput-object p2, p0, Lcom/instagram/filterkit/c/e;->c:Lcom/instagram/filterkit/a/c;
iput-object p3, p0, Lcom/instagram/filterkit/c/e;->d:Lcom/instagram/filterkit/c/b;
new-instance v0, Lcom/instagram/filterkit/a/b;
invoke-direct {v0, p1}, Lcom/instagram/filterkit/a/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;
return-void
.end method
.method static synthetic a(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/a;)Lcom/instagram/filterkit/e/a;
.registers 2
iput-object p1, p0, Lcom/instagram/filterkit/c/e;->k:Lcom/instagram/filterkit/e/a;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 2
iput-object p1, p0, Lcom/instagram/filterkit/c/e;->l:Lcom/instagram/filterkit/e/c;
return-object p1
.end method
.method static synthetic b(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/a/c;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->c:Lcom/instagram/filterkit/a/c;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/a;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->k:Lcom/instagram/filterkit/e/a;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/b;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->d:Lcom/instagram/filterkit/c/b;
return-object v0
.end method
.method static synthetic e()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/filterkit/c/e;->a:Ljava/lang/Class;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/filterkit/c/e;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;
return-object v0
.end method
.method private f()Lcom/instagram/filterkit/c/h;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/filterkit/c/h;
invoke-direct {v0, p0}, Lcom/instagram/filterkit/c/h;-><init>(Lcom/instagram/filterkit/c/e;)V
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;
:cond_b
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/c/h;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/filterkit/c/e;)Ljava/util/Queue;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;
return-object v0
.end method
.method private g()V
.registers 3
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/c/h;->isAlive()Z
move-result v0
if-nez v0, :cond_11
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/filterkit/c/h;->start()V
:cond_11
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;
move-result-object v1
monitor-enter v1
:try_start_16
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;
move-result-object v0
invoke-static {v0}, Lcom/instagram/filterkit/c/h;->a(Lcom/instagram/filterkit/c/h;)Z
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->f()Lcom/instagram/filterkit/c/h;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
:try_end_25
.catchall {:try_start_16 .. :try_end_25} :catchall_26
return-void
:catchall_26
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic h(Lcom/instagram/filterkit/c/e;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z
return v0
.end method
.method static synthetic i(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/e/c;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->l:Lcom/instagram/filterkit/e/c;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/filterkit/c/e;)Lcom/instagram/filterkit/filter/IgFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->j:Lcom/instagram/filterkit/filter/IgFilter;
return-object v0
.end method
.method static synthetic k(Lcom/instagram/filterkit/c/e;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;
iget-object v1, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;
invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->b:Lcom/instagram/filterkit/c/d;
invoke-virtual {p0, v0}, Lcom/instagram/filterkit/c/e;->a(Lcom/instagram/filterkit/c/d;)V
:cond_f
return-void
.end method
.method public final a(Lcom/instagram/filterkit/c/d;)V
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->f:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "requestRender called after requestDestroy"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->g()V
return-void
.end method
.method public final a(Lcom/instagram/filterkit/e/c;)V
.registers 5
iget-object v1, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->g:Ljava/util/List;
new-instance v2, Lcom/instagram/filterkit/c/f;
invoke-direct {v2, p0, p1}, Lcom/instagram/filterkit/c/f;-><init>(Lcom/instagram/filterkit/c/e;Lcom/instagram/filterkit/e/c;)V
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_f
return-void
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/instagram/filterkit/filter/IgFilter;)V
.registers 2
iput-object p1, p0, Lcom/instagram/filterkit/c/e;->j:Lcom/instagram/filterkit/filter/IgFilter;
return-void
.end method
.method public final b()V
.registers 3
iget-object v1, p0, Lcom/instagram/filterkit/c/e;->h:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z
monitor-exit v1
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_e
invoke-direct {p0}, Lcom/instagram/filterkit/c/e;->g()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/c/e;->i:Lcom/instagram/filterkit/c/h;
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/filterkit/c/e;->m:Z
return v0
.end method
.method public final d()Lcom/instagram/filterkit/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/c/e;->e:Lcom/instagram/filterkit/a/b;
return-object v0
.end method