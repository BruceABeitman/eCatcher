.class  Lcom/twidroid/fragments/f$17;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/c/u;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/f$17;->b:Lcom/twidroid/fragments/f;
iput-object p2, p0, Lcom/twidroid/fragments/f$17;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/f$17;->b:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/f$17;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f$17;->b:Lcom/twidroid/fragments/f;
invoke-static {v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;)V
return-void
.end method