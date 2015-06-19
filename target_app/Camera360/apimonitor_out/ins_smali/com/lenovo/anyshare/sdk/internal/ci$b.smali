.class  Lcom/lenovo/anyshare/sdk/internal/ci$b;
.super Ljava/lang/Object;
.source "WifiMaster.java"
.implements Ljava/lang/Runnable;
.field final a:Z
.field  b:I
.field final synthetic c:Lcom/lenovo/anyshare/sdk/internal/ci;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ci;Z)V
.registers 4
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->c:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->b:I
iput-boolean p2, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->a:Z
return-void
.end method
.method public run()V
.registers 3
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->b:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->b:I
const/4 v1, 0x5
if-ge v0, v1, :cond_11
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->c:Lcom/lenovo/anyshare/sdk/internal/ci;
iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->a:Z
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci;Z)Z
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$b;->c:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci;)V
goto :goto_10
.end method