.class  Lcom/facebook/a/h;
.super Lcom/facebook/bv;
.source "SourceFile"
.field final synthetic g:Lcom/facebook/a/e;
.method private constructor <init>(Lcom/facebook/a/e;)V
.registers 2
iput-object p1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-direct {p0}, Lcom/facebook/bv;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/a/e;Lcom/facebook/a/e$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/a/h;-><init>(Lcom/facebook/a/e;)V
return-void
.end method
.method public a()Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {v1}, Lcom/facebook/a/e;->c(Lcom/facebook/a/e;)J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/facebook/bv;->a(Landroid/os/Bundle;J)V
iget-object v1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {v1}, Lcom/facebook/a/e;->d(Lcom/facebook/a/e;)[Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/a/e;->a([Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/util/List;)V
sget-object v1, Lcom/facebook/c;->e:Lcom/facebook/c;
invoke-static {v0, v1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Lcom/facebook/c;)V
iget-object v1, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {v1}, Lcom/facebook/a/e;->e(Lcom/facebook/a/e;)J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/facebook/bv;->b(Landroid/os/Bundle;J)V
:cond_3a
return-object v0
.end method
.method public a(Landroid/os/Bundle;)V
.registers 5
iget-object v0, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {p1}, Lcom/facebook/bv;->c(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {p1}, Lcom/facebook/bv;->e(Landroid/os/Bundle;)J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;J)J
iget-object v0, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {p1}, Lcom/facebook/bv;->f(Landroid/os/Bundle;)Ljava/util/List;
move-result-object v1
invoke-static {v1}, Lcom/facebook/a/e;->a(Ljava/util/List;)[Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;[Ljava/lang/String;)[Ljava/lang/String;
iget-object v0, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
invoke-static {p1}, Lcom/facebook/bv;->i(Landroid/os/Bundle;)J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/facebook/a/e;->b(Lcom/facebook/a/e;J)J
return-void
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/facebook/a/h;->g:Lcom/facebook/a/e;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;Ljava/lang/String;)Ljava/lang/String;
return-void
.end method