.class  Lcom/lenovo/anyshare/sdk/internal/cm$2;
.super Ljava/lang/Object;
.source "QuietUpgrade.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Lcom/lenovo/anyshare/sdk/internal/cm;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cm$2;->b:Lcom/lenovo/anyshare/sdk/internal/cm;
iput-boolean p2, p0, Lcom/lenovo/anyshare/sdk/internal/cm$2;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm$2;->b:Lcom/lenovo/anyshare/sdk/internal/cm;
iget-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/cm$2;->a:Z
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V
return-void
.end method