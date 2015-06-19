.class  Lcom/twidroid/fragments/whatshotfragments/f;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final b:Ljava/lang/String;
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
iput-object p2, p0, Lcom/twidroid/fragments/whatshotfragments/f;->b:Ljava/lang/String;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Lcom/twidroid/uberchannels/models/UberTopic;
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/f;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/f;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->bt()Ljava/lang/String;
move-result-object v0
const/4 v3, -0x1
invoke-static {v1, v2, v0, v3}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_33
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_50
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/f;->b:Ljava/lang/String;
invoke-virtual {v0}, Lcom/twidroid/uberchannels/models/UberTopic;->b()I
move-result v3
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_33
:goto_4f
return-object v0
:cond_50
const/4 v0, 0x0
goto :goto_4f
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/f;->a([Ljava/lang/Void;)Lcom/twidroid/uberchannels/models/UberTopic;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/c;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/f;->a(Lcom/twidroid/fragments/whatshotfragments/c;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/whatshotfragments/c;
check-cast p2, Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/f;->a(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/uberchannels/models/UberTopic;)V
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
if-nez p2, :cond_9
:cond_5
:goto_5
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->M()V
return-void
:cond_9
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p1, Lcom/twidroid/fragments/whatshotfragments/c;->d:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v1, p2, Lcom/twidroid/uberchannels/models/UberTopic;->a:Lcom/twidroid/uberchannels/models/c;
invoke-virtual {v1}, Lcom/twidroid/uberchannels/models/c;->d()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/whatshotfragments/f$1;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/whatshotfragments/f$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/f;)V
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V
goto :goto_5
.end method