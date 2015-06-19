.class  Lcom/twidroid/fragments/b$6;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/model/twitter/c;
.field final synthetic b:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;Lcom/twidroid/model/twitter/c;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iput-object p2, p0, Lcom/twidroid/fragments/b$6;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/b$b;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$6;->a([Lcom/twidroid/fragments/b$b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/fragments/b$b;)Ljava/lang/String;
.registers 12
const/4 v9, 0x0
const/4 v0, 0x0
aget-object v8, p1, v0
:try_start_4
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->b()Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->x(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$6;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;
move-result-object v7
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
iget-object v1, v8, Lcom/twidroid/fragments/b$b;->a:Lcom/twidroid/model/twitter/c;
iget-object v2, v8, Lcom/twidroid/fragments/b$b;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v3}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-static {v4}, Lcom/twidroid/fragments/b;->y(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
move-result-object v4
new-instance v5, Landroid/os/Handler;
invoke-direct {v5}, Landroid/os/Handler;-><init>()V
iget-object v6, v8, Lcom/twidroid/fragments/b$b;->c:Ljava/lang/String;
iget-object v8, v8, Lcom/twidroid/fragments/b$b;->d:Lcom/twidroid/net/a/b/c;
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
move-result-object v0
:goto_3d
return-object v0
:cond_3e
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
iget-object v1, v8, Lcom/twidroid/fragments/b$b;->a:Lcom/twidroid/model/twitter/c;
iget-object v2, v8, Lcom/twidroid/fragments/b$b;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v3}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-static {v4}, Lcom/twidroid/fragments/b;->z(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
move-result-object v4
new-instance v5, Landroid/os/Handler;
invoke-direct {v5}, Landroid/os/Handler;-><init>()V
iget-object v6, v8, Lcom/twidroid/fragments/b$b;->c:Ljava/lang/String;
const/4 v7, 0x0
iget-object v8, v8, Lcom/twidroid/fragments/b$b;->d:Lcom/twidroid/net/a/b/c;
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
:try_end_5f
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5f} :catch_61
move-result-object v0
goto :goto_3d
:catch_61
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_78
iget-object v1, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v2, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v2}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_78
move-object v0, v9
goto :goto_3d
.end method
.method protected a()V
.registers 3
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->N()V
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->w(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->d(I)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$6;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->M()V
const-string v0, "attach"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "service"
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v3, v3, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
invoke-virtual {v3}, Lcom/twidroid/net/a/b/b;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
if-eqz p1, :cond_5e
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
const v1, 0x7f0c0218
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Lcom/twidroid/fragments/base/o;I)Ljava/lang/CharSequence;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$6;->b:Lcom/twidroid/fragments/b;
invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
:cond_5e
return-void
.end method