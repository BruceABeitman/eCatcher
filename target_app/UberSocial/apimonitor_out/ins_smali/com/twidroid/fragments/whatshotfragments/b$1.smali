.class  Lcom/twidroid/fragments/whatshotfragments/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/twidroid/fragments/whatshotfragments/a;
.field final synthetic b:Lcom/twidroid/fragments/whatshotfragments/b;
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/b;Lcom/twidroid/fragments/whatshotfragments/a;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/b$1;->b:Lcom/twidroid/fragments/whatshotfragments/b;
iput-object p2, p0, Lcom/twidroid/fragments/whatshotfragments/b$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/b$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;
invoke-static {v0, p2}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/fragments/whatshotfragments/a;Z)Z
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/b$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;
invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/a;->d(Lcom/twidroid/fragments/whatshotfragments/a;)Z
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/b$1;->a:Lcom/twidroid/fragments/whatshotfragments/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:cond_17
return-void
.end method