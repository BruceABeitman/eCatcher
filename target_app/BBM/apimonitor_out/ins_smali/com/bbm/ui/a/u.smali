.class final Lcom/bbm/ui/a/u;
.super Ljava/lang/Object;
.source "GroupMessageListAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/a/s;
.method constructor <init>(Lcom/bbm/ui/a/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/u;->a:Lcom/bbm/ui/a/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/a/u;->a:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->e(Lcom/bbm/ui/a/s;)Z
iget-object v0, p0, Lcom/bbm/ui/a/u;->a:Lcom/bbm/ui/a/s;
invoke-virtual {v0}, Lcom/bbm/ui/a/s;->notifyDataSetChanged()V
return-void
.end method