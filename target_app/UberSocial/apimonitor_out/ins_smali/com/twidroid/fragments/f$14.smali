.class  Lcom/twidroid/fragments/f$14;
.super Lcom/ubermedia/ui/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f$14;->a:Lcom/twidroid/fragments/f;
invoke-direct {p0}, Lcom/ubermedia/ui/c;-><init>()V
return-void
.end method
.method public a(Landroid/view/View;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/f$14;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/f$14;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/SingleTweetActivity;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/f$14;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:cond_1c
return-void
.end method