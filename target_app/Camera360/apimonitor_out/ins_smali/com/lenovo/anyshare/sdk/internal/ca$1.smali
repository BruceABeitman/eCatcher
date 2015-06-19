.class  Lcom/lenovo/anyshare/sdk/internal/ca$1;
.super Ljava/lang/Object;
.source "NetworkManager.java"
.implements Lcom/lenovo/tonesdk/ToneReceiverListener;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/ca;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ca;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca$1;->a:Lcom/lenovo/anyshare/sdk/internal/ca;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResult(Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
const-string/jumbo v0, "NetworkManager"
const-string/jumbo v1, "ToneReceiverListener: onResult(%s)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca$1;->a:Lcom/lenovo/anyshare/sdk/internal/ca;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ca;->a()Lcom/lenovo/anyshare/sdk/internal/bz$a;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
if-ne v0, v1, :cond_2d
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca$1;->a:Lcom/lenovo/anyshare/sdk/internal/ca;
invoke-static {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/ca;->a(Lcom/lenovo/anyshare/sdk/internal/ca;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2d
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca$1;->a:Lcom/lenovo/anyshare/sdk/internal/ca;
iput-object p1, v0, Lcom/lenovo/anyshare/sdk/internal/ca;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca$1;->a:Lcom/lenovo/anyshare/sdk/internal/ca;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ca;->h()V
:cond_2d
return-void
.end method