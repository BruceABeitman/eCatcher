.class  Lcom/twidroid/fragments/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/ui/widgets/c;
.field final synthetic a:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/b$1;->a:Lcom/twidroid/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/b$1;->a:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/b$1;->a:Lcom/twidroid/fragments/b;
invoke-static {v0}, Lcom/twidroid/fragments/b;->b(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/b$1;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/b;->b()V
:cond_1c
return-void
.end method