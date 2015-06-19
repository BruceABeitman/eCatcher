.class  Lcom/twidroid/fragments/d/k$1;
.super Lcom/twidroid/ui/a/p;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/d/k;
.method constructor <init>(Lcom/twidroid/fragments/d/k;Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/d/k$1;->a:Lcom/twidroid/fragments/d/k;
invoke-direct {p0, p2, p3}, Lcom/twidroid/ui/a/p;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/d/k$1;->a:Lcom/twidroid/fragments/d/k;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/fragments/d/k$1;->a:Lcom/twidroid/fragments/d/k;
iget-object v2, v0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
iget-object v0, p0, Lcom/twidroid/fragments/d/k$1;->a:Lcom/twidroid/fragments/d/k;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-static {v1, v2, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/User;I)V
return-void
.end method