.class  Lcom/umeng/common/net/f;
.super Landroid/content/BroadcastReceiver;
.source "DownloadingService.java"
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/umeng/common/net/f;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0, p1, p2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
return-void
.end method