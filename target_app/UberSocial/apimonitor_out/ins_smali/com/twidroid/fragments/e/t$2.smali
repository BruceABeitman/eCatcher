.class  Lcom/twidroid/fragments/e/t$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/fragments/e/t;
.method constructor <init>(Lcom/twidroid/fragments/e/t;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-static {v0}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;Z)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-static {v0}, Lcom/twidroid/fragments/e/t;->b(Lcom/twidroid/fragments/e/t;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0, v2}, Lcom/twidroid/fragments/e/t;->b(Z)V
:goto_19
:cond_19
return-void
:cond_1a
const-string v0, "NearbyFragment"
const-string v1, "only coordinates update?"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_19
const-string v0, "NearbyFragment"
const-string v1, "Adapter was empty."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-static {v0}, Lcom/twidroid/fragments/e/t;->b(Lcom/twidroid/fragments/e/t;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$2;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0, v2}, Lcom/twidroid/fragments/e/t;->b(Z)V
goto :goto_19
.end method