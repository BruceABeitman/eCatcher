.class public Lcom/instagram/android/fragment/j;
.super Lcom/instagram/api/j/f;
.source "AbstractFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/a;
.field private b:Z
.method protected constructor <init>(Lcom/instagram/android/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/j;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/fragment/j;->b:Z
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-static {v0, v2}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/a/e;->c(Z)V
:cond_1b
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z
invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/j;->b(Lcom/instagram/api/j/j;)V
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V
invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V
return-void
.end method
.method protected a(Lcom/instagram/feed/a/b;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-static {v0, v2}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/android/fragment/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->b()Lcom/instagram/feed/f/a;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
iget-boolean v0, p0, Lcom/instagram/android/fragment/j;->b:Z
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->b(Ljava/util/List;)V
iput-boolean v2, p0, Lcom/instagram/android/fragment/j;->b:Z
:goto_2a
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->e()Lcom/instagram/feed/survey/b;
move-result-object v0
if-eqz v0, :cond_35
iget-object v1, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v1, v0}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/feed/survey/b;)V
:cond_35
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->f()Z
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-static {}, Lcom/instagram/android/fragment/a;->Z()V
:cond_40
const-string v0, "feedFetchEnd"
invoke-static {v0}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;)V
return-void
:cond_46
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->c(Ljava/util/List;)V
goto :goto_2a
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/a/b;
invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/feed/a/b;)V
return-void
.end method
.method public b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/a;->b(Lcom/instagram/android/fragment/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->u()Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_15
return-void
.end method
.method protected b(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/j;->a:Lcom/instagram/android/fragment/a;
invoke-virtual {v0}, Lcom/instagram/android/fragment/a;->ah()V
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/j;->b:Z
return v0
.end method