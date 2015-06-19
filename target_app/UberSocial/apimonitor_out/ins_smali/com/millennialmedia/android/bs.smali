.class  Lcom/millennialmedia/android/bs;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/android/b;
.field static final a:J = -0x4L
.field private static final f:Ljava/util/Map; = null
.field private static final g:Ljava/util/Map; = null
.field private static final h:Ljava/lang/String; = "MMAdImplController"
.field volatile b:J
.field volatile c:Lcom/millennialmedia/android/cq;
.field volatile d:Ljava/lang/ref/WeakReference;
.field  e:Lcom/millennialmedia/android/bt;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Lcom/millennialmedia/android/bp;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "MMAdImplController"
const-string v1, "**************** creating new controller."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
iget-wide v0, p1, Lcom/millennialmedia/android/bp;->q:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_23
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/bs;->a(Lcom/millennialmedia/android/bp;)V
invoke-static {p1}, Lcom/millennialmedia/android/bs;->d(Lcom/millennialmedia/android/bp;)Lcom/millennialmedia/android/cq;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
:cond_22
:goto_22
return-void
:cond_23
instance-of v0, p1, Lcom/millennialmedia/android/ce;
if-nez v0, :cond_22
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->q()Z
move-result v0
if-eqz v0, :cond_44
new-instance v0, Lcom/millennialmedia/android/cq;
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-wide v2, p1, Lcom/millennialmedia/android/bp;->k:J
invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/cq;-><init>(Landroid/content/Context;J)V
iput-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/millennialmedia/android/cq;->k:Z
goto :goto_22
:cond_44
new-instance v0, Lcom/millennialmedia/android/cq;
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
iget-wide v2, p1, Lcom/millennialmedia/android/bp;->k:J
invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/cq;-><init>(Landroid/content/Context;J)V
iput-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
goto :goto_22
.end method
.method static declared-synchronized a(J)Lcom/millennialmedia/android/bp;
.registers 7
const/4 v2, 0x0
const-class v3, Lcom/millennialmedia/android/bs;
monitor-enter v3
const-wide/16 v0, -0x4
cmp-long v0, p0, v0
if-nez v0, :cond_d
move-object v0, v2
:goto_b
monitor-exit v3
return-object v0
:cond_d
:try_start_d
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bs;
if-nez v0, :cond_2f
sget-object v1, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_2f
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bs;
:cond_2f
if-eqz v0, :cond_3a
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
:try_end_39
.catchall {:try_start_d .. :try_end_39} :catchall_3c
goto :goto_b
:cond_3a
move-object v0, v2
goto :goto_b
:catchall_3c
move-exception v0
monitor-exit v3
throw v0
.end method
.method static b(Landroid/content/Context;)V
.registers 4
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_a
iget-object v0, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_a
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->d()Lcom/millennialmedia/android/bo;
move-result-object v0
if-eqz v0, :cond_a
instance-of v2, v0, Lcom/millennialmedia/android/ch;
if-eqz v2, :cond_a
check-cast v0, Lcom/millennialmedia/android/ch;
invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->n()V
goto :goto_a
:cond_38
return-void
.end method
.method static declared-synchronized b(Lcom/millennialmedia/android/bp;)V
.registers 6
const-class v2, Lcom/millennialmedia/android/bs;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_7b
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-object v1, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->t()Z
move-result v0
if-eqz v0, :cond_57
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iget-object v3, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_3d
:cond_3d
const-string v0, "MMAdImplController"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " - Has a controller"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_55
:try_end_55
.catchall {:try_start_3 .. :try_end_55} :catchall_78
:cond_55
monitor-exit v2
return-void
:try_start_57
:cond_57
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3d
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
new-instance v3, Ljava/lang/ref/WeakReference;
iget-object v4, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_77
.catchall {:try_start_57 .. :try_end_77} :catchall_78
goto :goto_3d
:catchall_78
move-exception v0
monitor-exit v2
throw v0
:cond_7b
:try_start_7b
const-string v0, "MMAdImplController"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "*****************************************assignAdViewController for "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bs;
if-nez v0, :cond_d1
sget-object v1, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_b9
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bs;
:cond_b9
if-nez v0, :cond_d1
new-instance v0, Lcom/millennialmedia/android/bs;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/bs;-><init>(Lcom/millennialmedia/android/bp;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->t()Z
move-result v1
if-eqz v1, :cond_e7
sget-object v1, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_d1
:cond_d1
iput-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, v0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_55
instance-of v0, p0, Lcom/millennialmedia/android/ce;
if-nez v0, :cond_55
invoke-static {p0}, Lcom/millennialmedia/android/bs;->h(Lcom/millennialmedia/android/bp;)V
goto/16 :goto_55
:cond_e7
sget-object v1, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
new-instance v4, Ljava/lang/ref/WeakReference;
invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_f7
.catchall {:try_start_7b .. :try_end_f7} :catchall_78
goto :goto_d1
.end method
.method static declared-synchronized c(Lcom/millennialmedia/android/bp;)Z
.registers 6
const/4 v0, 0x0
const-class v1, Lcom/millennialmedia/android/bs;
monitor-enter v1
if-nez p0, :cond_8
:goto_6
:cond_6
monitor-exit v1
return v0
:try_start_8
:cond_8
const-string v2, "MMAdImplController"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "attachWebViewFromOverlay with "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v2, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v2, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v2}, Lcom/millennialmedia/android/cq;->d()V
:cond_31
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->q:J
invoke-static {v2, v3}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;
move-result-object v2
if-eqz v2, :cond_6
iget-object v3, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v3, :cond_6
iget-object v3, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v3, v3, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-nez v3, :cond_61
iget-object v3, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v3, :cond_6
iget-object v3, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v3, v3, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v3, :cond_6
iget-object v0, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v3, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v3, v3, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iput-object v3, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bp;->a(Lcom/millennialmedia/android/cq;)V
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
const/4 v3, 0x0
iput-object v3, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
:cond_61
iget-object v0, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->q()V
iget-object v0, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v2}, Lcom/millennialmedia/android/bp;->c()Lcom/millennialmedia/android/cu;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/cq;->setWebViewClient(Landroid/webkit/WebViewClient;)V
:try_end_73
.catchall {:try_start_8 .. :try_end_73} :catchall_75
const/4 v0, 0x1
goto :goto_6
:catchall_75
move-exception v0
monitor-exit v1
throw v0
.end method
.method static declared-synchronized d(Lcom/millennialmedia/android/bp;)Lcom/millennialmedia/android/cq;
.registers 7
const/4 v0, 0x0
const-class v1, Lcom/millennialmedia/android/bs;
monitor-enter v1
:try_start_4
const-string v2, "MMAdImplController"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "getWebViewFromExistingLayout("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " taking from "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, p0, Lcom/millennialmedia/android/bp;->q:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->q:J
invoke-static {v2, v3}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;
move-result-object v2
if-eqz v2, :cond_45
iget-object v3, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v3, :cond_45
iget-object v0, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-object v2, v2, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
const/4 v3, 0x0
iput-object v3, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
:cond_45
:try_end_45
.catchall {:try_start_4 .. :try_end_45} :catchall_47
monitor-exit v1
return-object v0
:catchall_47
move-exception v0
monitor-exit v1
throw v0
.end method
.method static d()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " SAVED:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static declared-synchronized e(Lcom/millennialmedia/android/bp;)V
.registers 7
const-class v1, Lcom/millennialmedia/android/bs;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_d3
if-nez v0, :cond_9
:goto_7
:cond_7
monitor-exit v1
return-void
:try_start_9
:cond_9
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->t()Z
move-result v0
if-eqz v0, :cond_d6
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_35
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_35
:goto_35
const-string v0, "MMAdImplController"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "****************RemoveAdviewcontroller - "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/millennialmedia/android/bp;->l:Z
if-eqz v0, :cond_67
sget-object v0, Lcom/millennialmedia/android/bs;->f:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_67
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
const/4 v2, 0x0
iput-object v2, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
const-string v2, "MMAdImplController"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "****************RemoveAdviewcontroller - controllers "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Lcom/millennialmedia/android/bs;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v2, :cond_7
const-string v2, "MMAdImplController"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "****************RemoveAdviewcontroller - controller!=null, expanding="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-boolean v4, v4, Lcom/millennialmedia/android/cq;->f:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {p0, v2}, Lcom/millennialmedia/android/bp;->a(Lcom/millennialmedia/android/cq;)V
iget-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
const/4 v3, 0x0
iput-boolean v3, v2, Lcom/millennialmedia/android/cq;->f:Z
iget-boolean v2, p0, Lcom/millennialmedia/android/bp;->l:Z
if-eqz v2, :cond_7
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->q:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-nez v2, :cond_7
iget-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
const-string v3, "<html></html>"
const-string v4, "text/html"
const-string v5, "UTF-8"
invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/cq;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v2}, Lcom/millennialmedia/android/cq;->d()V
const/4 v2, 0x0
iput-object v2, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
:try_end_d1
.catchall {:try_start_9 .. :try_end_d1} :catchall_d3
goto/16 :goto_7
:catchall_d3
move-exception v0
monitor-exit v1
throw v0
:cond_d6
:try_start_d6
sget-object v0, Lcom/millennialmedia/android/bs;->g:Ljava/util/Map;
iget-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
new-instance v3, Ljava/lang/ref/WeakReference;
iget-object v4, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_e8
.catchall {:try_start_d6 .. :try_end_e8} :catchall_d3
goto/16 :goto_35
.end method
.method private static declared-synchronized h(Lcom/millennialmedia/android/bp;)V
.registers 6
const-class v1, Lcom/millennialmedia/android/bs;
monitor-enter v1
:try_start_3
iget-object v2, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_40
iget-object v0, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->c()Lcom/millennialmedia/android/cu;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/millennialmedia/android/cq;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-wide v3, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-virtual {v0, v3, v4}, Lcom/millennialmedia/android/cq;->a(J)Z
move-result v0
if-nez v0, :cond_40
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->q()Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x2
invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v3, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v3}, Lcom/millennialmedia/android/cq;->z()Z
move-result v3
if-eqz v3, :cond_36
iget-object v3, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v3, p0}, Lcom/millennialmedia/android/cq;->b(Lcom/millennialmedia/android/bp;)V
:goto_36
:cond_36
iget-object v3, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v3}, Lcom/millennialmedia/android/cq;->y()V
iget-object v2, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/bp;->a(Lcom/millennialmedia/android/cq;Landroid/widget/RelativeLayout$LayoutParams;)V
:try_end_40
.catchall {:try_start_3 .. :try_end_40} :catchall_4a
:cond_40
monitor-exit v1
return-void
:try_start_42
:cond_42
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x1
invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
:try_end_49
.catchall {:try_start_42 .. :try_end_49} :catchall_4a
goto :goto_36
:catchall_4a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private i(Lcom/millennialmedia/android/bp;)V
.registers 5
iget-object v0, p1, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
if-nez v0, :cond_19
new-instance v0, Lcom/millennialmedia/android/cc;
const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/cc;-><init>(Ljava/lang/String;I)V
const-string v1, "MMAdImplController"
invoke-virtual {v0}, Lcom/millennialmedia/android/cc;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
:cond_18
:goto_18
return-void
:cond_19
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->q()Z
move-result v0
if-nez v0, :cond_25
invoke-direct {p0, p1}, Lcom/millennialmedia/android/bs;->j(Lcom/millennialmedia/android/bp;)Z
move-result v0
if-nez v0, :cond_18
:cond_25
monitor-enter p0
:try_start_26
iget-object v0, p0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
if-eqz v0, :cond_44
const-string v0, "MMAdImplController"
const/16 v1, 0xc
invoke-static {v1}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/millennialmedia/android/cc;
const/16 v1, 0xc
invoke-direct {v0, v1}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {p1, v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
monitor-exit p0
goto :goto_18
:catchall_41
move-exception v0
monitor-exit p0
:try_end_43
.catchall {:try_start_26 .. :try_end_43} :catchall_41
throw v0
:cond_44
:try_start_44
new-instance v0, Lcom/millennialmedia/android/bt;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/bt;-><init>(Lcom/millennialmedia/android/bs;Lcom/millennialmedia/android/bs$1;)V
iput-object v0, p0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
iget-object v0, p0, Lcom/millennialmedia/android/bs;->e:Lcom/millennialmedia/android/bt;
invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
monitor-exit p0
:try_end_52
.catchall {:try_start_44 .. :try_end_52} :catchall_41
goto :goto_18
.end method
.method private declared-synchronized j(Lcom/millennialmedia/android/bp;)Z
.registers 7
const/4 v0, 0x1
monitor-enter p0
:try_start_2
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v2
iget-object v3, p1, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/millennialmedia/android/as;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_25
const-string v1, "MMAdImplController"
const-string v2, "There is a download in progress. Defering call for new ad"
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/millennialmedia/android/cc;
const/16 v2, 0xc
invoke-direct {v1, v2}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {p1, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
:goto_23
:try_end_23
.catchall {:try_start_2 .. :try_end_23} :catchall_48
monitor-exit p0
return v0
:cond_25
:try_start_25
const-string v2, "MMAdImplController"
const-string v3, "No download in progress."
invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/a;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v2
if-eqz v2, :cond_4b
const-string v3, "MMAdImplController"
const-string v4, "Last ad wasn\'t fully downloaded. Download again."
invoke-static {v3, v4}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/millennialmedia/android/cp;->b(Lcom/millennialmedia/android/bp;)V
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3, v2, p0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)Z
:try_end_47
.catchall {:try_start_25 .. :try_end_47} :catchall_48
goto :goto_23
:catchall_48
move-exception v0
monitor-exit p0
throw v0
:cond_4b
:try_start_4b
const-string v0, "MMAdImplController"
const-string v1, "No incomplete downloads."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_52
.catchall {:try_start_4b .. :try_end_52} :catchall_48
const/4 v0, 0x0
goto :goto_23
.end method
.method  a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/ai;)I
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p2}, Lcom/millennialmedia/android/ai;->a()Z
move-result v0
if-eqz v0, :cond_1e
const-string v0, "MMAdImplController"
const-string v1, "%s is expired."
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p2}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x15
:goto_1d
return v0
:cond_1e
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/millennialmedia/android/ai;->d(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "MMAdImplController"
const-string v1, "%s is not on disk."
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p2}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x16
goto :goto_1d
:cond_3e
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v0
iget-object v1, p1, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
iget-wide v2, p2, Lcom/millennialmedia/android/ai;->g:J
invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/as;->a(Ljava/lang/String;J)Z
move-result v0
if-nez v0, :cond_66
const-string v0, "MMAdImplController"
const-string v1, "%s cannot be shown at this time."
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p2}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x18
goto :goto_1d
:cond_66
const/16 v0, 0x64
goto :goto_1d
.end method
.method public a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string v0, "http.agent"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  a()V
.registers 7
const/16 v5, 0x19
const/16 v4, 0x10
const/4 v3, 0x3
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-nez v0, :cond_21
const-string v1, "MMAdImplController"
invoke-static {v5}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/millennialmedia/android/cc;
invoke-direct {v1, v5}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
:goto_20
return-void
:cond_21
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->g()Z
move-result v1
if-nez v1, :cond_30
new-instance v1, Lcom/millennialmedia/android/cc;
invoke-direct {v1, v4}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
goto :goto_20
:cond_30
invoke-static {}, Lcom/millennialmedia/android/co;->d()Z
move-result v1
if-nez v1, :cond_48
const-string v1, "MMAdImplController"
invoke-static {v3}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/millennialmedia/android/cc;
invoke-direct {v1, v3}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
goto :goto_20
:cond_48
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v1
iget-boolean v1, v1, Lcom/millennialmedia/android/as;->b:Z
if-eqz v1, :cond_64
const-string v1, "MMAdImplController"
const-string v2, "The server is no longer allowing ads."
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/millennialmedia/android/cc;
invoke-direct {v1, v4}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
goto :goto_20
:cond_64
:try_start_64
const-string v1, "MMAdImplController"
const-string v2, "adLayout - requestAd"
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/millennialmedia/android/bs;->i(Lcom/millennialmedia/android/bp;)V
:try_end_6e
.catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6e} :catch_6f
goto :goto_20
:catch_6f
move-exception v0
const-string v1, "MMAdImplController"
const-string v2, "There was an exception with the ad request. "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_20
.end method
.method  a(Lcom/millennialmedia/android/HttpMMHeaders;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V
:cond_9
return-void
.end method
.method public a(Lcom/millennialmedia/android/ai;)V
.registers 2
return-void
.end method
.method public a(Lcom/millennialmedia/android/ai;Z)V
.registers 7
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-nez v0, :cond_16
const-string v0, "MMAdImplController"
const/16 v1, 0x19
invoke-static {v1}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
return-void
:cond_16
if-eqz p2, :cond_27
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:cond_27
if-eqz p2, :cond_2d
invoke-static {v0}, Lcom/millennialmedia/android/cp;->f(Lcom/millennialmedia/android/bp;)V
goto :goto_15
:cond_2d
new-instance v1, Lcom/millennialmedia/android/cc;
const/16 v2, 0xf
invoke-direct {v1, v2}, Lcom/millennialmedia/android/cc;-><init>(I)V
invoke-static {v0, v1}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/cc;)V
goto :goto_15
.end method
.method  a(Lcom/millennialmedia/android/bp;)V
.registers 6
iget-wide v0, p1, Lcom/millennialmedia/android/bp;->q:J
invoke-static {v0, v1}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;
move-result-object v0
if-eqz v0, :cond_16
iget-wide v1, p1, Lcom/millennialmedia/android/bp;->q:J
iput-wide v1, p0, Lcom/millennialmedia/android/bs;->b:J
iget-object v1, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-wide v2, p1, Lcom/millennialmedia/android/bp;->k:J
iput-wide v2, v1, Lcom/millennialmedia/android/bs;->b:J
iget-wide v1, p1, Lcom/millennialmedia/android/bp;->k:J
iput-wide v1, v0, Lcom/millennialmedia/android/bp;->q:J
:cond_16
return-void
.end method
.method  a(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
:cond_f
return-void
.end method
.method  a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/cq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/bp;)V
:cond_11
return-void
.end method
.method  b()Lcom/millennialmedia/android/HttpMMHeaders;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->A()Lcom/millennialmedia/android/HttpMMHeaders;
move-result-object v0
goto :goto_5
.end method
.method  b(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_13
iget-object v1, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/cq;->a(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/bp;)V
:cond_13
return-void
.end method
.method  c()Ljava/lang/String;
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_1e
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/bs;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
:goto_15
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1d
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
:cond_1d
return-object v0
:cond_1e
move-object v0, v1
goto :goto_15
.end method
.method  e()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/cq;->b(Lcom/millennialmedia/android/bp;)V
:cond_11
return-void
.end method
.method  f(Lcom/millennialmedia/android/bp;)I
.registers 5
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/ai;->a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
move-result v1
if-eqz v1, :cond_1b
const/4 v0, 0x0
:goto_1a
return v0
:cond_1b
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/bs;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/ai;)I
move-result v0
goto :goto_1a
:cond_20
const-string v0, "MMAdImplController"
const-string v1, "No next ad."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x14
goto :goto_1a
.end method
.method  g(Lcom/millennialmedia/android/bp;)I
.registers 6
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v0
if-eqz v0, :cond_49
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/ai;->a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
move-result v1
if-eqz v1, :cond_44
invoke-static {p1}, Lcom/millennialmedia/android/cp;->c(Lcom/millennialmedia/android/bp;)V
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->k()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
iget-wide v2, p1, Lcom/millennialmedia/android/bp;->k:J
invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/ai;->a(Landroid/content/Context;J)V
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v0
invoke-virtual {p1}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v1
iget-object v2, p1, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/as;->c(Landroid/content/Context;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_43
return v0
:cond_44
invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/bs;->a(Lcom/millennialmedia/android/bp;Lcom/millennialmedia/android/ai;)I
move-result v0
goto :goto_43
:cond_49
const/16 v0, 0x14
goto :goto_43
.end method
.method public toString()Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/bs;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
if-eqz v0, :cond_2b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "-LinkInC="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v2, p0, Lcom/millennialmedia/android/bs;->b:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " w/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method