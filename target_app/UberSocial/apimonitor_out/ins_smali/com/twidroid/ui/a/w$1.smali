.class  Lcom/twidroid/ui/a/w$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/a/w;
.method constructor <init>(Lcom/twidroid/ui/a/w;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/w$1;->a:Lcom/twidroid/ui/a/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/w$1;->a:Lcom/twidroid/ui/a/w;
invoke-virtual {v0}, Lcom/twidroid/ui/a/w;->notifyDataSetChanged()V
return-void
.end method