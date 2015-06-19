.class  Lcom/twidroid/fragments/n;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/g;-><init>(Lcom/twidroid/fragments/f;)V
return-void
.end method
.method protected varargs a([Ljava/lang/String;)Landroid/os/Bundle;
.registers 5
const/4 v0, 0x0
aget-object v1, p1, v0
:try_start_3
iget-object v0, p0, Lcom/twidroid/fragments/n;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/f;
invoke-static {v0}, Lcom/twidroid/fragments/f;->k(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->e(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
invoke-static {}, Lcom/twidroid/d/g;->a()V
const/4 v0, 0x1
aget-object v0, p1, v0
invoke-virtual {p0, v1, v0}, Lcom/twidroid/fragments/n;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_21
move-result-object v0
:goto_20
return-object v0
:catch_21
move-exception v0
move-object v2, v0
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/twidroid/fragments/n;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/n;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/f;
invoke-virtual {v1}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
const/4 v0, 0x0
goto :goto_20
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/n;->a([Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/f;
check-cast p2, Landroid/os/Bundle;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/n;->a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/f;Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/f;->M()V
if-eqz p2, :cond_5b
const-string v0, "username"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const v1, 0x7f0c017e
invoke-static {p1, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;
move-result-object v1
const v2, 0x7f0c017f
invoke-static {p1, v2}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;
move-result-object v2
if-eqz v1, :cond_44
if-eqz v2, :cond_44
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/n;->a(Ljava/lang/String;)V
:cond_44
const-string v0, "is_blocked"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Z)Z
const-string v0, "is_following"
const/4 v1, 0x0
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
invoke-static {p1, v0}, Lcom/twidroid/fragments/f;->b(Lcom/twidroid/fragments/f;I)I
invoke-virtual {p1}, Lcom/twidroid/fragments/f;->n()V
:goto_5a
return-void
:cond_5b
const-string v0, "Some error occured while unblocking!"
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/n;->a(Ljava/lang/String;)V
goto :goto_5a
.end method