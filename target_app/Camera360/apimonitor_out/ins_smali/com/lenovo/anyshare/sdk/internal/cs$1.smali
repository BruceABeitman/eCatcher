.class  Lcom/lenovo/anyshare/sdk/internal/cs$1;
.super Lcom/lenovo/anyshare/sdk/internal/be$d;
.source "TonePlayer.java"
.field final synthetic e:Lcom/lenovo/anyshare/sdk/internal/cs;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cs;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cs$1;->e:Lcom/lenovo/anyshare/sdk/internal/cs;
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/be$d;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs$1;->e:Lcom/lenovo/anyshare/sdk/internal/cs;
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cs$1;->e:Lcom/lenovo/anyshare/sdk/internal/cs;
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cs;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cs$1;->e:Lcom/lenovo/anyshare/sdk/internal/cs;
iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/cs;->b:[S
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/do;->a([S)Z
:cond_11
return-void
.end method