.class final Lcom/bbm/ui/b/q;
.super Ljava/lang/Object;
.source "ClickableToast.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/b/p;
.method constructor <init>(Lcom/bbm/ui/b/p;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/b/q;->a:Lcom/bbm/ui/b/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/b/q;->a:Lcom/bbm/ui/b/p;
invoke-virtual {v0}, Lcom/bbm/ui/b/p;->dismiss()V
return-void
.end method