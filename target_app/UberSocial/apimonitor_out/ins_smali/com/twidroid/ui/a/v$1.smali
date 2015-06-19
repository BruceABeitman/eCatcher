.class  Lcom/twidroid/ui/a/v$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/ui/a/v;
.method constructor <init>(Lcom/twidroid/ui/a/v;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/v$1;->a:Lcom/twidroid/ui/a/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/v$1;->a:Lcom/twidroid/ui/a/v;
invoke-virtual {v0}, Lcom/twidroid/ui/a/v;->notifyDataSetChanged()V
return-void
.end method