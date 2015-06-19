.class final Lcom/instagram/common/q/c;
.super Ljava/lang/Object;
.source "NotificationController.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/q/a;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/instagram/common/q/c/a;
.field final synthetic d:Lcom/instagram/common/q/b;
.method constructor <init>(Lcom/instagram/common/q/b;Lcom/instagram/common/q/a;Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
.registers 5
iput-object p1, p0, Lcom/instagram/common/q/c;->d:Lcom/instagram/common/q/b;
iput-object p2, p0, Lcom/instagram/common/q/c;->a:Lcom/instagram/common/q/a;
iput-object p3, p0, Lcom/instagram/common/q/c;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/common/q/c;->c:Lcom/instagram/common/q/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/common/q/c;->a:Lcom/instagram/common/q/a;
invoke-virtual {v0}, Lcom/instagram/common/q/a;->a()Lcom/instagram/common/q/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/q/c;->b:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/common/q/c;->c:Lcom/instagram/common/q/c/a;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/q/a;->a(Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
return-void
.end method