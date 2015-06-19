.class final Lcom/instagram/android/l/c/s;
.super Lcom/instagram/android/l/c/u;
.source "UserListFragment.java"
.field final synthetic a:Lcom/instagram/android/l/c/a;
.method private constructor <init>(Lcom/instagram/android/l/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/l/c/s;->a:Lcom/instagram/android/l/c/a;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/instagram/android/l/c/u;-><init>(Lcom/instagram/android/l/c/a;B)V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/l/c/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/l/c/s;-><init>(Lcom/instagram/android/l/c/a;)V
return-void
.end method
.method private a(Ljava/lang/Iterable;)V
.registers 4
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;
invoke-static {v0}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;)V
goto :goto_4
:cond_17
iget-object v0, p0, Lcom/instagram/android/l/c/s;->a:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->h(Lcom/instagram/android/l/c/a;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/instagram/android/l/c/s;->a:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->e(Lcom/instagram/android/l/c/a;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/l/c/t;
invoke-direct {v1, p0}, Lcom/instagram/android/l/c/t;-><init>(Lcom/instagram/android/l/c/s;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_2d
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Iterable;
invoke-direct {p0, p1}, Lcom/instagram/android/l/c/s;->a(Ljava/lang/Iterable;)V
return-void
.end method