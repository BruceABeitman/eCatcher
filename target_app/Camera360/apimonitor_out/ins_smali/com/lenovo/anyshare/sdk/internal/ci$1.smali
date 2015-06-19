.class  Lcom/lenovo/anyshare/sdk/internal/ci$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMaster.java"
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/ci;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$1;->a:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$1;->a:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-static {v0, p2}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci;Landroid/content/Intent;)V
return-void
.end method