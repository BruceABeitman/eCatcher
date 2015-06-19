.class  Lcom/twidroid/fragments/whatshotfragments/j;
.super Lcom/twidroid/fragments/whatshotfragments/g;
.source "SourceFile"
.field private static final d:Ljava/lang/String; = "username"
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/g;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
return-void
.end method
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
.registers 6
const/4 v0, 0x0
:try_start_1
aget-object v0, p1, v0
const/4 v1, 0x1
aget-object v1, p1, v1
invoke-virtual {p0, v0, v1}, Lcom/twidroid/fragments/whatshotfragments/j;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->f(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {v0, v2}, Lcom/twidroid/b/a/b;->i(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
invoke-static {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->g(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {v0, v2}, Lcom/twidroid/net/a/c/c;->c(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
const-string v0, "username"
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_3c
move-object v0, v1
:goto_3b
return-object v0
:catch_3c
move-exception v0
move-object v2, v0
const-string v0, "UnFollowTask EXCEPTION"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ": "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
const/4 v0, 0x0
goto :goto_3b
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/j;->a([Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/j;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
check-cast p2, Landroid/os/Bundle;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/j;->a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/os/Bundle;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/g;->a(Lcom/twidroid/fragments/base/o;)V
invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->e(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/ui/themes/r;
move-result-object v0
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->d(Landroid/content/Context;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
if-eqz p2, :cond_3c
const v0, 0x7f0c0177
invoke-static {p1, v0}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_38
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "username"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/j;->a(Ljava/lang/String;)V
:cond_38
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->f()V
:goto_3b
return-void
:cond_3c
const-string v0, "Some error occured while following!"
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/j;->a(Ljava/lang/String;)V
goto :goto_3b
.end method