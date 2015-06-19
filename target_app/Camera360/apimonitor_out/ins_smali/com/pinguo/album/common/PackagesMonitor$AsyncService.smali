.class public Lcom/pinguo/album/common/PackagesMonitor$AsyncService;
.super Landroid/app/IntentService;
.source "PackagesMonitor.java"
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "GalleryPackagesMonitorAsync"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 2
#calls: Lcom/pinguo/album/common/PackagesMonitor;->onReceiveAsync(Landroid/content/Context;Landroid/content/Intent;)V
invoke-static {p0, p1}, Lcom/pinguo/album/common/PackagesMonitor;->access$0(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method