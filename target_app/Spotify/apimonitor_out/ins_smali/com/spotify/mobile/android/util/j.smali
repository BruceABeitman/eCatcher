.class public final Lcom/spotify/mobile/android/util/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/os/Handler;
.field private b:Ljava/lang/Class;
.field private c:Ljava/util/EnumSet;
.field private d:Ljava/util/EnumSet;
.field private e:Ljava/util/ArrayList;
.field private f:Ljava/lang/Runnable;
.method public constructor <init>(Ljava/lang/Class;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->a:Landroid/os/Handler;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->e:Ljava/util/ArrayList;
new-instance v0, Lcom/spotify/mobile/android/util/j$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/j$1;-><init>(Lcom/spotify/mobile/android/util/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/util/j;->b:Ljava/lang/Class;
invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/j;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/j;Ljava/util/EnumSet;)Ljava/util/EnumSet;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/j;Ljava/util/EnumSet;Ljava/util/EnumSet;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->e:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/k;->a()Ljava/util/EnumSet;
move-result-object v2
if-eqz v2, :cond_22
invoke-static {v2}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z
move-result v2
if-eqz v2, :cond_6
:cond_22
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/util/k;->a(Ljava/util/EnumSet;Ljava/util/EnumSet;)V
goto :goto_6
:cond_26
return-void
.end method
.method private a(Ljava/util/EnumSet;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
if-nez v0, :cond_e
iput-object p1, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->a:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
invoke-virtual {p1, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->a:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
goto :goto_d
:cond_21
iput-object p1, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
goto :goto_d
.end method
.method static synthetic b(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/util/j;)Ljava/util/EnumSet;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v1, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
move-result-object v0
:goto_d
invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z
move-result v2
if-nez v2, :cond_19
invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/j;->a(Ljava/util/EnumSet;)V
:cond_19
monitor-exit v1
return-void
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_22
move-result-object v0
goto :goto_d
:catchall_22
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/k;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/Enum;Z)V
.registers 6
iget-object v2, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
monitor-enter v2
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
move-result-object v0
move-object v1, v0
:goto_e
if-eqz p2, :cond_23
invoke-virtual {v1, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
move-result v0
:goto_14
if-eqz v0, :cond_19
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/util/j;->a(Ljava/util/EnumSet;)V
:cond_19
monitor-exit v2
return-void
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;
move-result-object v0
move-object v1, v0
goto :goto_e
:cond_23
invoke-virtual {v1, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z
:try_end_26
.catchall {:try_start_3 .. :try_end_26} :catchall_28
move-result v0
goto :goto_14
:catchall_28
move-exception v0
monitor-exit v2
throw v0
.end method
.method public final a(Ljava/lang/Enum;)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->c:Ljava/util/EnumSet;
invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->d:Ljava/util/EnumSet;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->a:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->f:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_10
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/util/k;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/j;->e:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method