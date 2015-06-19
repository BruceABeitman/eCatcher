.class final Lcom/bbm/ui/c/dz;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Lcom/bbm/ui/b/f;
.field final synthetic a:Lcom/bbm/ui/b/a;
.field final synthetic b:Lcom/bbm/ui/c/dy;
.method constructor <init>(Lcom/bbm/ui/c/dy;Lcom/bbm/ui/b/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/dz;->b:Lcom/bbm/ui/c/dy;
iput-object p2, p0, Lcom/bbm/ui/c/dz;->a:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/c/dz;->b:Lcom/bbm/ui/c/dy;
iget-object v0, v0, Lcom/bbm/ui/c/dy;->a:Lcom/bbm/ui/c/du;
invoke-static {v0}, Lcom/bbm/ui/c/du;->h(Lcom/bbm/ui/c/du;)V
iget-object v0, p0, Lcom/bbm/ui/c/dz;->a:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
return-void
.end method