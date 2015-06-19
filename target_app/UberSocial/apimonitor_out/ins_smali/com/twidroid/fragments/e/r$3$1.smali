.class  Lcom/twidroid/fragments/e/r$3$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/fragments/e/r$3;
.method constructor <init>(Lcom/twidroid/fragments/e/r$3;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/r$3$1;->b:Lcom/twidroid/fragments/e/r$3;
iput-object p2, p0, Lcom/twidroid/fragments/e/r$3$1;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/r$3$1;->b:Lcom/twidroid/fragments/e/r$3;
iget-object v0, v0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/r$3$1;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$3$1;->b:Lcom/twidroid/fragments/e/r$3;
iget-object v0, v0, Lcom/twidroid/fragments/e/r$3;->a:Lcom/twidroid/fragments/e/r;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
return-void
.end method