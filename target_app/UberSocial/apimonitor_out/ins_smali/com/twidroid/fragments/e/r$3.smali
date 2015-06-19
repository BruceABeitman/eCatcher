.class  Lcom/twidroid/fragments/e/r$3;
.super Lcom/twidroid/net/a/c/a/b;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/r;
.method constructor <init>(Lcom/twidroid/fragments/e/r;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
invoke-direct {p0}, Lcom/twidroid/net/a/c/a/b;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
const/4 v1, 0x1
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/fragments/e/r;ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
const-string v0, "MentionsFragment"
const-string v1, "New tweet!!!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->t(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-nez v0, :cond_1a
const-string v0, "MentionsFragment"
const-string v1, "Account is null. Can\'t proceed with check."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_19
:cond_19
return-void
:cond_1a
iget v0, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I
iget-object v1, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
invoke-static {v1}, Lcom/twidroid/fragments/e/r;->u(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
if-eq v0, v1, :cond_30
const-string v0, "MentionsFragment"
const-string v1, "wrong acount, doing nothing(TODO: should write to db and skip UI)"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
:cond_30
iget-boolean v0, p2, Lcom/twidroid/model/twitter/Tweet;->ax:Z
if-eqz v0, :cond_19
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
new-instance v2, Lcom/twidroid/fragments/e/r$3$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/fragments/e/r$3$1;-><init>(Lcom/twidroid/fragments/e/r$3;Ljava/util/ArrayList;)V
invoke-static {v1, v2}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/fragments/e/r;Ljava/lang/Runnable;)V
goto :goto_19
.end method
.method public b(Lcom/twidroid/model/twitter/c;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->b(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
const/4 v1, 0x0
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/r;->b(Lcom/twidroid/fragments/e/r;ZLcom/twidroid/model/twitter/c;)V
return-void
.end method