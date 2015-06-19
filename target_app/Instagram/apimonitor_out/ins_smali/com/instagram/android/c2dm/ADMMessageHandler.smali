.class public Lcom/instagram/android/c2dm/ADMMessageHandler;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "ADMMessageHandler.java"
.field private static final a:Ljava/lang/Class;
.field private b:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/c2dm/ADMMessageHandler;
sput-object v0, Lcom/instagram/android/c2dm/ADMMessageHandler;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/instagram/android/c2dm/ADMMessageHandler;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/instagram/android/c2dm/ADMMessageHandler; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;->onCreate()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/c2dm/ADMMessageHandler;->b:Landroid/os/Handler;
const-string v1, " - Lcom/instagram/android/c2dm/ADMMessageHandler; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onMessage(Landroid/content/Intent;)V
.registers 4
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/c2dm/ADMMessageHandler;->getApplicationContext()Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/android/c2dm/ADMMessageHandler;->b:Landroid/os/Handler;
invoke-virtual {v0, p1}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Intent;)V
return-void
.end method
.method protected onRegistered(Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
invoke-virtual {p0}, Lcom/instagram/android/c2dm/ADMMessageHandler;->getApplicationContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/instagram/common/q/b/g;->a:Lcom/instagram/common/q/b/g;
invoke-static {v0, p1, v1}, Lcom/instagram/android/c2dm/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/common/q/b/g;)V
return-void
.end method
.method protected onRegistrationError(Ljava/lang/String;)V
.registers 3
const-string v0, "ADMMessagehandler onRegistrationError"
invoke-static {v0, p1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected onUnregistered(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
invoke-virtual {p0}, Lcom/instagram/android/c2dm/ADMMessageHandler;->getApplicationContext()Landroid/content/Context;
return-void
.end method