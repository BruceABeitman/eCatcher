.class  Lcom/lenovo/anyshare/sdk/internal/d$1;
.super Ljava/lang/Object;
.source "DefaultChannel.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/m;
.field final synthetic b:Lcom/lenovo/anyshare/sdk/internal/d;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/d;Lcom/lenovo/anyshare/sdk/internal/m;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/d$1;->b:Lcom/lenovo/anyshare/sdk/internal/d;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/d$1;->a:Lcom/lenovo/anyshare/sdk/internal/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/d$1;->a:Lcom/lenovo/anyshare/sdk/internal/m;
invoke-interface {v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a()V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string/jumbo v1, "DefaultChannel"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "connect failed: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5
.end method