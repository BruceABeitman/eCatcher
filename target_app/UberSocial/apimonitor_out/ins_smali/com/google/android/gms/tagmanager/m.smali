.class public Lcom/google/android/gms/tagmanager/m;
.super Ljava/lang/Object;
.field private static f:Lcom/google/android/gms/tagmanager/m;
.field private final a:Lcom/google/android/gms/tagmanager/n;
.field private final b:Landroid/content/Context;
.field private final c:Lcom/google/android/gms/tagmanager/h;
.field private final d:Ljava/util/concurrent/ConcurrentMap;
.field private final e:Lcom/google/android/gms/tagmanager/ex;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/h;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "context cannot be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/m;->c:Lcom/google/android/gms/tagmanager/h;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->c:Lcom/google/android/gms/tagmanager/h;
new-instance v1, Lcom/google/android/gms/tagmanager/m$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/m$1;-><init>(Lcom/google/android/gms/tagmanager/m;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/j;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->c:Lcom/google/android/gms/tagmanager/h;
new-instance v1, Lcom/google/android/gms/tagmanager/dl;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/dl;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/j;)V
new-instance v0, Lcom/google/android/gms/tagmanager/ex;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ex;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/m;
.registers 6
const-class v1, Lcom/google/android/gms/tagmanager/m;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/tagmanager/m;->f:Lcom/google/android/gms/tagmanager/m;
if-nez v0, :cond_2d
if-nez p0, :cond_17
const-string v0, "TagManager.getInstance requires non-null context."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
:cond_17
:try_start_17
new-instance v0, Lcom/google/android/gms/tagmanager/m$2;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/m$2;-><init>()V
new-instance v2, Lcom/google/android/gms/tagmanager/fc;
invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/fc;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/google/android/gms/tagmanager/m;
new-instance v4, Lcom/google/android/gms/tagmanager/h;
invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/h;-><init>(Lcom/google/android/gms/tagmanager/k;)V
invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/tagmanager/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/n;Lcom/google/android/gms/tagmanager/h;)V
sput-object v3, Lcom/google/android/gms/tagmanager/m;->f:Lcom/google/android/gms/tagmanager/m;
:cond_2d
sget-object v0, Lcom/google/android/gms/tagmanager/m;->f:Lcom/google/android/gms/tagmanager/m;
monitor-exit v1
:try_end_30
.catchall {:try_start_17 .. :try_end_30} :catchall_14
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/m;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/m;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/el;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/el;->a(Ljava/lang/String;)V
goto :goto_a
:cond_1a
return-void
.end method
.method public a(Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->d()V
return-object v0
.end method
.method public a(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/j;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->d()V
return-object v0
.end method
.method public a()Lcom/google/android/gms/tagmanager/h;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->c:Lcom/google/android/gms/tagmanager/h;
return-object v0
.end method
.method  a(Lcom/google/android/gms/tagmanager/el;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x2
:goto_3
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(I)V
return-void
:cond_7
const/4 v0, 0x5
goto :goto_3
.end method
.method declared-synchronized a(Landroid/net/Uri;)Z
.registers 7
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/google/android/gms/tagmanager/cc;->a()Lcom/google/android/gms/tagmanager/cc;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/cc;->a(Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_85
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cc;->d()Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/google/android/gms/tagmanager/m$3;->a:[I
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cc;->b()Lcom/google/android/gms/tagmanager/cd;
move-result-object v3
invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cd;->ordinal()I
move-result v3
aget v0, v0, v3
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_49
packed-switch v0, :pswitch_data_88
:cond_1e
const/4 v0, 0x1
:goto_1f
monitor-exit p0
return v0
:try_start_21
:pswitch_21
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2b
:cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/el;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2b
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/el;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->c()V
:try_end_48
.catchall {:try_start_21 .. :try_end_48} :catchall_49
goto :goto_2b
:catchall_49
move-exception v0
monitor-exit p0
throw v0
:try_start_4c
:pswitch_4c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_56
:cond_56
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/el;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->e()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_77
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cc;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/el;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->c()V
goto :goto_56
:cond_77
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->f()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_56
const/4 v4, 0x0
invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/el;->b(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/el;->c()V
:try_end_84
.catchall {:try_start_4c .. :try_end_84} :catchall_49
goto :goto_56
:cond_85
const/4 v0, 0x0
goto :goto_1f
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_21
:pswitch_4c
:pswitch_4c
.end packed-switch
.end method
.method public b(Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->e()V
return-object v0
.end method
.method public b(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/j;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->e()V
return-object v0
.end method
.method  b(Lcom/google/android/gms/tagmanager/el;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->d:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public c(Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->f()V
return-object v0
.end method
.method public c(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/j;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/m;->a:Lcom/google/android/gms/tagmanager/n;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/m;->b:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/m;->e:Lcom/google/android/gms/tagmanager/ex;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/n;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/m;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/ex;)Lcom/google/android/gms/tagmanager/eo;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/eo;->f()V
return-object v0
.end method