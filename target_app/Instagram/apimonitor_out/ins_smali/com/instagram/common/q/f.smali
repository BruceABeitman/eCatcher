.class final Lcom/instagram/common/q/f;
.super Ljava/lang/Object;
.source "NotificationController.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/q/a;
.field final synthetic b:Lcom/instagram/common/q/b;
.method constructor <init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/q/f;->b:Lcom/instagram/common/q/b;
iput-object p2, p0, Lcom/instagram/common/q/f;->a:Lcom/instagram/common/q/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/q/f;->a:Lcom/instagram/common/q/a;
invoke-virtual {v0}, Lcom/instagram/common/q/a;->a()Lcom/instagram/common/q/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/q/a;->b()V
return-void
.end method