.class public Lcom/spotify/mobile/android/service/MonitorService;
.super Landroid/app/Service;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/service/ab;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/service/ab;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/ab;-><init>(Lcom/spotify/mobile/android/service/MonitorService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/MonitorService;->a:Lcom/spotify/mobile/android/service/ab;
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/service/MonitorService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/MonitorService;->a:Lcom/spotify/mobile/android/service/ab;
return-object v0
.end method