.class final Lcom/twidroid/net/c/t$8;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/UberSocialApplication;
.field final synthetic e:Landroid/app/Activity;
.field final synthetic f:Lcom/twidroid/model/twitter/Tweet;
.field final synthetic g:Lcom/twidroid/net/c/a/f;
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
.registers 7
iput-object p2, p0, Lcom/twidroid/net/c/t$8;->a:Ljava/util/ArrayList;
iput-object p3, p0, Lcom/twidroid/net/c/t$8;->b:Lcom/twidroid/UberSocialApplication;
iput-object p4, p0, Lcom/twidroid/net/c/t$8;->e:Landroid/app/Activity;
iput-object p5, p0, Lcom/twidroid/net/c/t$8;->f:Lcom/twidroid/model/twitter/Tweet;
iput-object p6, p0, Lcom/twidroid/net/c/t$8;->g:Lcom/twidroid/net/c/a/f;
invoke-direct {p0, p1}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 7
iget-object v0, p0, Lcom/twidroid/net/c/t$8;->a:Ljava/util/ArrayList;
invoke-static {}, Lcom/twidroid/net/c/t;->b()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/net/c/t$8;->b:Lcom/twidroid/UberSocialApplication;
iget-object v2, p0, Lcom/twidroid/net/c/t$8;->e:Landroid/app/Activity;
iget-object v3, p0, Lcom/twidroid/net/c/t$8;->f:Lcom/twidroid/model/twitter/Tweet;
iget-object v4, p0, Lcom/twidroid/net/c/t$8;->g:Lcom/twidroid/net/c/a/f;
invoke-static {v1, v2, v3, v0, v4}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p0}, Lcom/twidroid/net/c/t$8;->dismiss()V
return-void
.end method