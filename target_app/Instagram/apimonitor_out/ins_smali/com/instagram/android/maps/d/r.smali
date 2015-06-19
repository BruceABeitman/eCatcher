.class final Lcom/instagram/android/maps/d/r;
.super Lcom/instagram/api/j/f;
.source "ReviewPhotoMapFragment.java"
.field final synthetic a:Lcom/instagram/android/maps/d/l;
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 10
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/List;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_b
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/instagram/android/maps/b/a;
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v0}, Lcom/instagram/android/maps/d/l;->f(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/maps/b/b;
move-result-object v7
new-instance v0, Lcom/instagram/android/maps/b/h;
invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->b()D
move-result-wide v1
invoke-interface {v5}, Lcom/instagram/android/maps/b/a;->c()D
move-result-wide v3
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V
invoke-virtual {v7, v0}, Lcom/instagram/android/maps/b/b;->a(Lcom/instagram/android/maps/b/h;)Z
goto :goto_b
:cond_2e
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v0}, Lcom/instagram/android/maps/d/l;->g(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/n;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v1}, Lcom/instagram/android/maps/d/l;->f(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/maps/b/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/b/b;->b()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/a/n;->a(Ljava/util/ArrayList;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;Z)V
invoke-super {p0}, Lcom/instagram/api/j/f;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v0}, Lcom/instagram/android/maps/d/l;->h(Lcom/instagram/android/maps/d/l;)Z
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v0}, Lcom/instagram/android/maps/d/l;->c(Lcom/instagram/android/maps/d/l;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/r;->a(Ljava/util/List;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/d/r;->a:Lcom/instagram/android/maps/d/l;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;Z)V
invoke-super {p0}, Lcom/instagram/api/j/f;->b()V
return-void
.end method