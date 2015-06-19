.class final Lcom/bbm/iceberg/b;
.super Lcom/bbm/j/k;
.source "IcebergFetcher.java"
.field final synthetic a:Lcom/bbm/iceberg/a;
.method constructor <init>(Lcom/bbm/iceberg/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 7
iget-object v0, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
iget-object v0, v0, Lcom/bbm/iceberg/a;->f:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-static {v1, v0}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_25
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_26
iget-object v0, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v1
iput-object v1, v0, Lcom/bbm/iceberg/a;->d:Lcom/google/b/a/l;
:goto_20
iget-object v0, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
invoke-virtual {v0}, Lcom/bbm/iceberg/a;->d()V
:cond_25
return-void
:cond_26
iget-object v1, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
new-instance v2, Lcom/blackberry/a/c;
iget-object v3, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
iget-object v3, v3, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;
iget-object v4, p0, Lcom/bbm/iceberg/b;->a:Lcom/bbm/iceberg/a;
iget-object v5, v4, Lcom/bbm/iceberg/a;->g:Ljava/lang/String;
if-nez v5, :cond_38
sget-object v5, Lcom/bbm/ae;->b:Ljava/lang/String;
iput-object v5, v4, Lcom/bbm/iceberg/a;->g:Ljava/lang/String;
:cond_38
iget-object v4, v4, Lcom/bbm/iceberg/a;->g:Ljava/lang/String;
invoke-direct {v2, v3, v4, v0}, Lcom/blackberry/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, v1, Lcom/bbm/iceberg/a;->d:Lcom/google/b/a/l;
goto :goto_20
.end method