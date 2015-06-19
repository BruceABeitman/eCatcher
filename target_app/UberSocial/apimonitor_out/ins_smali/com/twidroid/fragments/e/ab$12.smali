.class  Lcom/twidroid/fragments/e/ab$12;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/ab;
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Exception;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->h(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->A()V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b
const/4 v0, 0x0
:goto_a
return-object v0
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "TwitterSearch"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab$12;->a([Ljava/lang/Void;)Ljava/lang/Exception;
move-result-object v0
return-object v0
.end method
.method protected a(Ljava/lang/Exception;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
if-nez p1, :cond_23
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab$12;->h()Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->i(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->j(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->clear()V
:cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Z)V
:cond_22
:goto_22
return-void
:cond_23
if-eqz p1, :cond_22
instance-of v0, p1, Lcom/ubermedia/net/a/a/a;
if-eqz v0, :cond_22
move-object v0, p1
check-cast v0, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_22
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$12;->a:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
goto :goto_22
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Exception;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab$12;->a(Ljava/lang/Exception;)V
return-void
.end method