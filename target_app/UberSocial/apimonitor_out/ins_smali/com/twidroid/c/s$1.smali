.class  Lcom/twidroid/c/s$1;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/c/s;
.method constructor <init>(Lcom/twidroid/c/s;Landroid/app/Activity;Ljava/util/ArrayList;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/c/s$1;->b:Lcom/twidroid/c/s;
iput-object p3, p0, Lcom/twidroid/c/s$1;->a:Ljava/util/ArrayList;
invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 6
iget-object v0, p0, Lcom/twidroid/c/s$1;->a:Ljava/util/ArrayList;
invoke-static {}, Lcom/twidroid/c/s;->a()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-static {}, Lcom/twidroid/c/s;->a()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/c/s$1;->b:Lcom/twidroid/c/s;
invoke-static {v0}, Lcom/twidroid/c/s;->a(Lcom/twidroid/c/s;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/twidroid/c/s$1;->b:Lcom/twidroid/c/s;
invoke-static {v0}, Lcom/twidroid/c/s;->b(Lcom/twidroid/c/s;)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/f;
iget-object v1, p0, Lcom/twidroid/c/s$1;->b:Lcom/twidroid/c/s;
invoke-static {v1}, Lcom/twidroid/c/s;->a(Lcom/twidroid/c/s;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v1
iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/s$1;->b:Lcom/twidroid/c/s;
invoke-static {v2}, Lcom/twidroid/c/s;->a(Lcom/twidroid/c/s;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v2
iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->az:Lcom/twidroid/model/twitter/User;
iget-wide v2, v2, Lcom/twidroid/model/twitter/User;->b:J
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/fragments/f;->a(Ljava/lang/String;J)V
:cond_40
invoke-virtual {p0}, Lcom/twidroid/c/s$1;->dismiss()V
return-void
.end method