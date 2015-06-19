.class  Lcom/twidroid/fragments/whatshotfragments/e;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final b:Ljava/lang/String;
.field  c:Z
.field final synthetic d:Lcom/twidroid/fragments/whatshotfragments/c;
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/e;->d:Lcom/twidroid/fragments/whatshotfragments/c;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
iput-object p3, p0, Lcom/twidroid/fragments/whatshotfragments/e;->b:Ljava/lang/String;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Lcom/twidroid/uberchannels/models/UberTopic;
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/whatshotfragments/c;
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/e;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)Lcom/twidroid/uberchannels/models/UberTopic;
move-result-object v1
if-eqz v1, :cond_20
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/whatshotfragments/c;
iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/e;->b:Ljava/lang/String;
invoke-static {v0, v2}, Lcom/twidroid/fragments/whatshotfragments/c;->b(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/e;->c:Z
:cond_20
return-object v1
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/e;->a([Ljava/lang/Void;)Lcom/twidroid/uberchannels/models/UberTopic;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/e;->a(Lcom/twidroid/fragments/whatshotfragments/c;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/c;
check-cast p2, Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/e;->a(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/uberchannels/models/UberTopic;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/whatshotfragments/c;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->N()V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/uberchannels/models/UberTopic;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
if-eqz p2, :cond_36
iget-boolean v0, p0, Lcom/twidroid/fragments/whatshotfragments/e;->c:Z
if-nez v0, :cond_3a
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-static {p1, p2}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;
move-result-object v1
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->b(Lcom/twidroid/ui/c/h;)Z
invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->c()V
new-instance v0, Landroid/content/Intent;
const-string v1, "ubersocial.broadcast.uberbar.configchanged"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:goto_36
:cond_36
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->M()V
return-void
:cond_3a
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "ubersocial.broadcast.uberbar.viewchannel"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "ubersocial.broadcast.uberbar.viewchannel"
iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/e;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/e;->d:Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/e;->d:Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_36
.end method