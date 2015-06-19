.class final Lcom/bbm/iceberg/g;
.super Ljava/lang/Object;
.source "IcebergFetcher.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/Map;
.field final synthetic b:Lcom/bbm/iceberg/e;
.method constructor <init>(Lcom/bbm/iceberg/e;Ljava/util/Map;)V
.registers 3
iput-object p1, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iput-object p2, p0, Lcom/bbm/iceberg/g;->a:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
invoke-virtual {v0}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/i;
iget-object v1, p0, Lcom/bbm/iceberg/g;->a:Ljava/util/Map;
invoke-virtual {v0, v1}, Lcom/bbm/iceberg/i;->a(Ljava/util/Map;)Lcom/bbm/iceberg/i;
move-result-object v0
iget-object v1, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v1, v1, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
invoke-virtual {v1, v0}, Lcom/bbm/iceberg/a;->a(Lcom/bbm/iceberg/i;)V
iget-object v1, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v1, v1, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
invoke-virtual {v1}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/iceberg/a;->c:Z
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iget-object v0, v0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_55
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
invoke-virtual {v0}, Lcom/bbm/iceberg/a;->d()V
:goto_41
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iget-object v1, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v1, v1, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iget v1, v1, Lcom/bbm/iceberg/a;->k:I
iget-object v2, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v2, v2, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iget v2, v2, Lcom/bbm/iceberg/a;->j:I
invoke-virtual {v0, v1, v2}, Lcom/bbm/iceberg/a;->a(II)V
return-void
:cond_55
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iput v2, v0, Lcom/bbm/iceberg/a;->j:I
iget-object v0, p0, Lcom/bbm/iceberg/g;->b:Lcom/bbm/iceberg/e;
iget-object v0, v0, Lcom/bbm/iceberg/e;->d:Lcom/bbm/iceberg/a;
iput v2, v0, Lcom/bbm/iceberg/a;->k:I
goto :goto_41
.end method