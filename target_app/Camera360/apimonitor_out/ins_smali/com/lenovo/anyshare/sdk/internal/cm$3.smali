.class  Lcom/lenovo/anyshare/sdk/internal/cm$3;
.super Ljava/lang/Object;
.source "QuietUpgrade.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cm;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cm;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cm$3;->a:Lcom/lenovo/anyshare/sdk/internal/cm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm$3;->a:Lcom/lenovo/anyshare/sdk/internal/cm;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->b(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V
return-void
.end method