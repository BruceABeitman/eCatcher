.class  Lcom/twidroid/ui/a/p$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/twidroid/ui/a/p;
.method constructor <init>(Lcom/twidroid/ui/a/p;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/p$3;->b:Lcom/twidroid/ui/a/p;
iput-object p2, p0, Lcom/twidroid/ui/a/p$3;->a:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/p$3;->b:Lcom/twidroid/ui/a/p;
iget-object v0, v0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/p$3;->b:Lcom/twidroid/ui/a/p;
iget-object v0, v0, Lcom/twidroid/ui/a/p;->b:Ljava/util/List;
iget-object v1, p0, Lcom/twidroid/ui/a/p$3;->a:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/p$3;->b:Lcom/twidroid/ui/a/p;
invoke-virtual {v0}, Lcom/twidroid/ui/a/p;->notifyDataSetChanged()V
return-void
.end method