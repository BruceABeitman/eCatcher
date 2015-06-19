.class public final Lcom/instagram/common/l/b/b;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"
.implements Lcom/instagram/common/l/a/a;
.field private a:Landroid/os/Handler;
.field private b:Lcom/instagram/common/t/a;
.field private c:Z
.field private d:Z
.field private e:Z
.field private f:Ljava/util/List;
.method private constructor <init>(Lcom/instagram/common/t/a;)V
.registers 5
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/instagram/common/l/b/b;->a:Landroid/os/Handler;
iput-boolean v2, p0, Lcom/instagram/common/l/b/b;->c:Z
iput-boolean v2, p0, Lcom/instagram/common/l/b/b;->d:Z
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/common/l/b/b;->f:Ljava/util/List;
iput-object p1, p0, Lcom/instagram/common/l/b/b;->b:Lcom/instagram/common/t/a;
invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/a/b;->a(Lcom/instagram/common/l/a/a;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/t/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/l/b/b;-><init>(Lcom/instagram/common/t/a;)V
return-void
.end method
.method public static a()Lcom/instagram/common/l/b/b;
.registers 1
sget-object v0, Lcom/instagram/common/l/b/d;->a:Lcom/instagram/common/l/b/b;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/common/l/b/b;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/l/b/b;->c:Z
return v0
.end method
.method static synthetic a(Lcom/instagram/common/l/b/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/common/l/b/b;->d:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/common/l/b/b;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/l/b/b;->d:Z
return v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/b/b;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/l/b/a;
invoke-interface {v0}, Lcom/instagram/common/l/b/a;->a()V
goto :goto_6
:cond_16
return-void
.end method
.method static synthetic c(Lcom/instagram/common/l/b/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/l/b/b;->c()V
return-void
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/b/b;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/l/b/a;
invoke-interface {v0}, Lcom/instagram/common/l/b/a;->b()V
goto :goto_6
:cond_16
return-void
.end method
.method static synthetic d(Lcom/instagram/common/l/b/b;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/l/b/b;->e:Z
return v0
.end method
.method public final a(Landroid/app/Activity;)V
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/common/l/b/b;->b:Lcom/instagram/common/t/a;
invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V
iput-boolean v1, p0, Lcom/instagram/common/l/b/b;->c:Z
iget-boolean v0, p0, Lcom/instagram/common/l/b/b;->e:Z
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
iput-boolean v1, p0, Lcom/instagram/common/l/b/b;->e:Z
iget-object v0, p0, Lcom/instagram/common/l/b/b;->a:Landroid/os/Handler;
new-instance v1, Lcom/instagram/common/l/b/c;
invoke-direct {v1, p0}, Lcom/instagram/common/l/b/c;-><init>(Lcom/instagram/common/l/b/b;)V
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_c
.end method
.method public final a(Lcom/instagram/common/l/b/a;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/l/b/b;->f:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/instagram/common/l/b/b;->f:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method public final b(Landroid/app/Activity;)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/common/l/b/b;->b:Lcom/instagram/common/t/a;
invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V
iput-boolean v1, p0, Lcom/instagram/common/l/b/b;->c:Z
iget-boolean v0, p0, Lcom/instagram/common/l/b/b;->d:Z
if-eqz v0, :cond_11
iput-boolean v1, p0, Lcom/instagram/common/l/b/b;->d:Z
invoke-direct {p0}, Lcom/instagram/common/l/b/b;->d()V
:cond_11
return-void
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/l/b/b;->d:Z
return v0
.end method