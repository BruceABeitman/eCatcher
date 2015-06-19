.class  Lcom/twidroid/fragments/d/g$1;
.super Lcom/twidroid/ui/a/p;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/d/g;
.method constructor <init>(Lcom/twidroid/fragments/d/g;Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/d/g$1;->a:Lcom/twidroid/fragments/d/g;
invoke-direct {p0, p2, p3}, Lcom/twidroid/ui/a/p;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/d/g$1;->a:Lcom/twidroid/fragments/d/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p1}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method