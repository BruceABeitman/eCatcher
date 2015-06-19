.class final Lcom/instagram/l/l;
.super Ljava/lang/Object;
.source "QuickExperimentManagerImpl.java"
.field final synthetic a:Lcom/instagram/l/k;
.method constructor <init>(Lcom/instagram/l/k;)V
.registers 2
iput-object p1, p0, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/common/analytics/b;
const-string v2, "qe_exposure"
invoke-direct {v1, v2, v5}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v2, "device_id"
iget-object v3, p0, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;
invoke-static {v3}, Lcom/instagram/l/k;->c(Lcom/instagram/l/k;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "experiments"
const-string v3, ","
iget-object v4, p0, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;
invoke-static {v4}, Lcom/instagram/l/k;->b(Lcom/instagram/l/k;)Ljava/util/Set;
move-result-object v4
invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
new-instance v0, Lcom/instagram/l/a/a;
iget-object v1, p0, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;
invoke-static {v1}, Lcom/instagram/l/k;->c(Lcom/instagram/l/k;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p1, v5}, Lcom/instagram/l/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/l/m;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/instagram/l/m;-><init>(Lcom/instagram/l/l;B)V
invoke-virtual {v0, v1}, Lcom/instagram/l/a/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
iget-object v1, p0, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;
invoke-static {v1}, Lcom/instagram/l/k;->d(Lcom/instagram/l/k;)Lcom/instagram/common/a/a/m;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method