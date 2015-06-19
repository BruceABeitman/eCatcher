.class final Lcom/bbm/iceberg/q;
.super Ljava/lang/Object;
.source "LocalContactList.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/bbm/iceberg/p;
.method constructor <init>(Lcom/bbm/iceberg/p;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/bbm/iceberg/q;->b:Lcom/bbm/iceberg/p;
iput-object p2, p0, Lcom/bbm/iceberg/q;->a:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/iceberg/q;->b:Lcom/bbm/iceberg/p;
iget-object v0, v0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;
invoke-static {v0}, Lcom/bbm/iceberg/n;->b(Lcom/bbm/iceberg/n;)Z
iget-object v0, p0, Lcom/bbm/iceberg/q;->b:Lcom/bbm/iceberg/p;
iget-object v0, v0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;
invoke-static {v0}, Lcom/bbm/iceberg/n;->c(Lcom/bbm/iceberg/n;)Lcom/bbm/util/cr;
move-result-object v0
iget-object v1, p0, Lcom/bbm/iceberg/q;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/iceberg/q;->b:Lcom/bbm/iceberg/p;
iget-object v0, v0, Lcom/bbm/iceberg/p;->a:Lcom/bbm/iceberg/n;
invoke-static {v0}, Lcom/bbm/iceberg/n;->d(Lcom/bbm/iceberg/n;)Lcom/bbm/util/cr;
move-result-object v0
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
return-void
.end method