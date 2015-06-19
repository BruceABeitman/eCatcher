.class  Lcom/tencent/stat/s;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tencent/stat/b;
.field final synthetic b:Lcom/tencent/stat/n;
.method constructor <init>(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V
.registers 3
iput-object p1, p0, Lcom/tencent/stat/s;->b:Lcom/tencent/stat/n;
iput-object p2, p0, Lcom/tencent/stat/s;->a:Lcom/tencent/stat/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/tencent/stat/s;->b:Lcom/tencent/stat/n;
iget-object v1, p0, Lcom/tencent/stat/s;->a:Lcom/tencent/stat/b;
invoke-static {v0, v1}, Lcom/tencent/stat/n;->a(Lcom/tencent/stat/n;Lcom/tencent/stat/b;)V
return-void
.end method