.class  Lcom/twidroid/ui/a/ai$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/a/ai$1;
.method constructor <init>(Lcom/twidroid/ui/a/ai$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/ai$1$1;->a:Lcom/twidroid/ui/a/ai$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/ai$1$1;->a:Lcom/twidroid/ui/a/ai$1;
iget-object v0, v0, Lcom/twidroid/ui/a/ai$1;->b:Lcom/twidroid/ui/a/ai;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ai;->notifyDataSetChanged()V
return-void
.end method