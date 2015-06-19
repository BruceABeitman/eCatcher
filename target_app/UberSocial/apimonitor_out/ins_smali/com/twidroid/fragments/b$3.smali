.class  Lcom/twidroid/fragments/b$3;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
iget-object v2, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-static {v2}, Lcom/twidroid/fragments/b;->j(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/twidroid/net/a/c/c;->c(J)Z
iget-object v2, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-static {v2}, Lcom/twidroid/fragments/b;->k(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->a(Ljava/lang/Long;)Z
:try_end_36
.catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_36} :catch_37
goto :goto_8
:catch_37
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
:goto_3b
return-object v0
:try_start_3c
:cond_3c
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->l(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->j(Landroid/content/Context;)Z
:try_end_4b
.catch Lcom/ubermedia/net/a/a/a; {:try_start_3c .. :try_end_4b} :catch_37
const/4 v0, 0x0
goto :goto_3b
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$3;->a([Ljava/lang/Void;)Ljava/lang/Exception;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 3
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/fragments/b;->c(Lcom/twidroid/fragments/b;Z)Z
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->N()V
return-void
.end method
.method protected a(Ljava/lang/Exception;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/b;->d(Lcom/twidroid/fragments/b;Z)Z
if-nez p1, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->b()V
iget-object v0, p0, Lcom/twidroid/fragments/b$3;->a:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->m(Lcom/twidroid/fragments/b;)V
:cond_1a
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Exception;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b$3;->a(Ljava/lang/Exception;)V
return-void
.end method