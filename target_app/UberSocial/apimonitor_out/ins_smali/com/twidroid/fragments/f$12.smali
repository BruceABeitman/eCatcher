.class  Lcom/twidroid/fragments/f$12;
.super Lcom/ubermedia/ui/c;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/f$12;->a:Lcom/twidroid/fragments/f;
invoke-direct {p0}, Lcom/ubermedia/ui/c;-><init>()V
return-void
.end method
.method public a(Landroid/view/View;Ljava/lang/String;)V
.registers 5
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_11
iget-object v1, p0, Lcom/twidroid/fragments/f$12;->a:Lcom/twidroid/fragments/f;
invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method