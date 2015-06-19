.class  Lcom/twidroid/fragments/f$18;
.super Lcom/twidroid/c/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/UberSocialApplication;
.field final synthetic b:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/f$18;->b:Lcom/twidroid/fragments/f;
iput-object p3, p0, Lcom/twidroid/fragments/f$18;->a:Lcom/twidroid/UberSocialApplication;
invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(I)V
.registers 7
iget-object v0, p0, Lcom/twidroid/fragments/f$18;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f$18;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/fragments/f$18;->a:Lcom/twidroid/UberSocialApplication;
iget-object v2, p0, Lcom/twidroid/fragments/f$18;->b:Lcom/twidroid/fragments/f;
invoke-virtual {v2}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/f$18;->b:Lcom/twidroid/fragments/f;
invoke-static {v3}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/f$18;->b:Lcom/twidroid/fragments/f;
invoke-static {v4}, Lcom/twidroid/fragments/f;->c(Lcom/twidroid/fragments/f;)Lcom/twidroid/net/c/a/f;
move-result-object v4
invoke-static {v1, v2, v3, v0, v4}, Lcom/twidroid/net/c/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/f$18;->dismiss()V
return-void
.end method