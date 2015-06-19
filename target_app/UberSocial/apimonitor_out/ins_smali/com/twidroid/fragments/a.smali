.class public Lcom/twidroid/fragments/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field  a:Lcom/twidroid/UberSocialApplication;
.field  b:Landroid/view/View;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/a;->setRetainInstance(Z)V
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iput-object v0, p0, Lcom/twidroid/fragments/a;->a:Lcom/twidroid/UberSocialApplication;
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f03003d
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/a;->b:Landroid/view/View;
iget-object v0, p0, Lcom/twidroid/fragments/a;->b:Landroid/view/View;
return-object v0
.end method
.method public onDestroyView()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/a;->b:Landroid/view/View;
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iput-object v0, p0, Lcom/twidroid/fragments/a;->a:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/fragments/a;->a:Lcom/twidroid/UberSocialApplication;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/twidroid/fragments/a;->b:Landroid/view/View;
iget-object v1, p0, Lcom/twidroid/fragments/a;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->s()I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
:cond_22
return-void
.end method