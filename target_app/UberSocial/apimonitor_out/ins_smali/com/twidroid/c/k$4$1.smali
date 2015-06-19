.class  Lcom/twidroid/c/k$4$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/c/k$4;
.method constructor <init>(Lcom/twidroid/c/k$4;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/c/k$4$1;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
iget-object v0, v0, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;
invoke-static {v0}, Lcom/twidroid/c/k;->a(Lcom/twidroid/c/k;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->c()V
iget-object v0, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
iget-object v0, v0, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;
invoke-static {v0}, Lcom/twidroid/c/k;->a(Lcom/twidroid/c/k;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, -0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_29
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
iget-object v2, v2, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;
invoke-static {v2}, Lcom/twidroid/c/k;->a(Lcom/twidroid/c/k;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;)V
:try_end_44
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45
goto :goto_29
:catch_45
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_49
const/4 v0, 0x0
return-object v0
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/c/k$4$1;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
iget-object v0, v0, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;
iget-object v0, v0, Lcom/twidroid/c/k;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/twidroid/c/k$4$1;->a:Lcom/twidroid/c/k$4;
iget-object v1, v1, Lcom/twidroid/c/k$4;->a:Lcom/twidroid/c/k;
iget-object v1, v1, Lcom/twidroid/c/k;->c:Landroid/content/Context;
const v2, 0x7f0c00e2
invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
return-void
.end method