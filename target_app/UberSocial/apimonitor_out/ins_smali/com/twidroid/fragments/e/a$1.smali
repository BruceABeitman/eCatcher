.class  Lcom/twidroid/fragments/e/a$1;
.super Lcom/twidroid/net/a/c/a/b;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/a;
.method constructor <init>(Lcom/twidroid/fragments/e/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-direct {p0}, Lcom/twidroid/net/a/c/a/b;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
const/4 v1, 0x1
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/a;->a(Lcom/twidroid/fragments/e/a;ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 7
invoke-super {p0, p1, p2}, Lcom/twidroid/net/a/c/a/b;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->a(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_1b
const-string v0, "DirectMessageFragment"
const-string v1, "Not notifying anyone because all accounts was selected"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_1a
:cond_1a
return-void
:cond_1b
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->b(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->c(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_48
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->d(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v0
invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v2
cmp-long v0, v0, v2
if-eqz v0, :cond_1a
:cond_48
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->e(Lcom/twidroid/fragments/e/a;)V
iget-wide v0, p2, Lcom/twidroid/model/twitter/DirectMessage;->D:J
iget-object v2, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v2}, Lcom/twidroid/fragments/e/a;->f(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
cmp-long v0, v0, v2
if-eqz v0, :cond_65
const-string v0, "DirectMessageFragment"
const-string v1, "wrong acount, doing nothing(TODO: should write to db and skip UI)"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
:cond_65
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->i(Lcom/twidroid/fragments/e/a;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/e/a$1$1;
invoke-direct {v1, p0, p2}, Lcom/twidroid/fragments/e/a$1$1;-><init>(Lcom/twidroid/fragments/e/a$1;Lcom/twidroid/model/twitter/DirectMessage;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_1a
.end method
.method public b(Lcom/twidroid/model/twitter/c;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/net/a/c/a/b;->b(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$1;->a:Lcom/twidroid/fragments/e/a;
const/4 v1, 0x0
invoke-static {v0, v1, p1}, Lcom/twidroid/fragments/e/a;->b(Lcom/twidroid/fragments/e/a;ZLcom/twidroid/model/twitter/c;)V
return-void
.end method