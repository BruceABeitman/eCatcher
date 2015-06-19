.class final Lcom/instagram/common/q/h;
.super Ljava/lang/Object;
.source "NotificationController.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/q/b;
.method constructor <init>(Lcom/instagram/common/q/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/q/h;->a:Lcom/instagram/common/q/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/q/h;->a:Lcom/instagram/common/q/b;
invoke-static {v0}, Lcom/instagram/common/q/b;->a(Lcom/instagram/common/q/b;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/q/a;
invoke-virtual {v0}, Lcom/instagram/common/q/a;->a()Lcom/instagram/common/q/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/q/a;->c()V
goto :goto_e
:cond_22
return-void
.end method