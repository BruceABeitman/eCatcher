.class final Lcom/instagram/android/directshare/c/t;
.super Lcom/instagram/api/k/a/h;
.source "InboxStore.java"
.field final synthetic a:Lcom/instagram/android/directshare/c/r;
.field private final b:Z
.method private constructor <init>(Lcom/instagram/android/directshare/c/r;Z)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
iput-boolean p2, p0, Lcom/instagram/android/directshare/c/t;->b:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/directshare/c/r;ZB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/android/directshare/c/t;-><init>(Lcom/instagram/android/directshare/c/r;Z)V
return-void
.end method
.method private a(Lcom/instagram/f/a/b/a;)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->b()Lcom/instagram/f/b/a;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/f/b/a;)V
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->f()Lcom/instagram/realtimeclient/RealtimeSubscription;
move-result-object v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->f()Lcom/instagram/realtimeclient/RealtimeSubscription;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/i/f;->a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
:cond_18
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/t;->b:Z
if-eqz v0, :cond_97
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/i/f;->d()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v0
if-nez v0, :cond_8e
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->e()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v0
:goto_2a
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/android/i/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
:goto_31
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->c()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(Ljava/util/List;)V
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->e()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/i/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->d()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/i/f;->a(Ljava/util/Map;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->a()Lcom/instagram/feed/f/a;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-static {v0}, Lcom/instagram/android/directshare/c/r;->b(Lcom/instagram/android/directshare/c/r;)Lcom/instagram/feed/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;
move-result-object v0
sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;
if-eq v0, v1, :cond_74
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->c()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(I)V
:cond_74
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-static {v0}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {v0, p1}, Lcom/instagram/api/k/a/h;->a(Ljava/lang/Object;)V
goto :goto_7e
:cond_8e
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->e()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->union(Lcom/instagram/realtimeclient/RealtimePatchRange;)Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v0
goto :goto_2a
:cond_97
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/f/a/b/a;->e()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/i/f;->a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->g()V
goto :goto_31
:cond_a8
return-void
.end method
.method private b(Lcom/instagram/api/k/a/i;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;Z)Z
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-static {v0}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {v0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V
goto :goto_13
:cond_23
return-void
.end method
.method public final a()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;Z)Z
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-static {v0}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {v0}, Lcom/instagram/api/k/a/h;->a()V
goto :goto_13
:cond_23
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->a:Lcom/instagram/android/directshare/c/r;
invoke-static {v0}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/android/directshare/c/r;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/k/a/h;
invoke-virtual {v0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
goto :goto_a
:cond_1a
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/f/a/b/a;
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/f/a/b/a;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/api/k/a/i;
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/t;->b(Lcom/instagram/api/k/a/i;)V
return-void
.end method