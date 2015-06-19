.class final Lcom/instagram/android/fragment/et;
.super Lcom/instagram/api/j/f;
.source "ShortUrlFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/es;
.method constructor <init>(Lcom/instagram/android/fragment/es;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/feed/b/a/c;)V
.registers 4
if-eqz p1, :cond_17
invoke-virtual {p1}, Lcom/instagram/android/feed/b/a/c;->c()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {p1}, Lcom/instagram/android/feed/b/a/c;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/es;->a(Lcom/instagram/android/fragment/es;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/es;->c(Z)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-static {v0}, Lcom/instagram/android/fragment/es;->a(Lcom/instagram/android/fragment/es;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/eu;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/fragment/eu;-><init>(Lcom/instagram/android/fragment/et;Lcom/instagram/android/feed/b/a/c;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_17
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/es;->a(Lcom/instagram/android/fragment/es;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {v0}, Lcom/instagram/android/fragment/es;->u()Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_15
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {v0}, Lcom/instagram/android/fragment/es;->ah()V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/feed/b/a/c;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/et;->a(Lcom/instagram/android/feed/b/a/c;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/es;->a(Lcom/instagram/android/fragment/es;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/et;->a:Lcom/instagram/android/fragment/es;
invoke-virtual {v0}, Lcom/instagram/android/fragment/es;->u()Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_15
return-void
.end method