.class  Lcom/tencent/stat/m;
.super Ljava/lang/Object;
.implements Lcom/tencent/stat/c;
.field final synthetic a:Lcom/tencent/stat/k;
.method constructor <init>(Lcom/tencent/stat/k;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/m;->a:Lcom/tencent/stat/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()V
.registers 3
invoke-static {}, Lcom/tencent/stat/n;->b()Lcom/tencent/stat/n;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/stat/n;->a()I
move-result v0
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxBatchReportCount()I
move-result v1
if-lt v0, v1, :cond_19
invoke-static {}, Lcom/tencent/stat/n;->b()Lcom/tencent/stat/n;
move-result-object v0
invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxBatchReportCount()I
move-result v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/n;->a(I)V
:cond_19
return-void
.end method
.method public b()V
.registers 1
return-void
.end method