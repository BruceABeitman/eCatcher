.class public Lcom/instagram/android/c2dm/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMBroadcastReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const/4 v1, 0x0
const-class v0, Lcom/instagram/android/receiver/C2DMReceiver;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const/4 v0, -0x1
invoke-virtual {p0, v0, v1, v1}, Lcom/instagram/android/c2dm/C2DMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V
return-void
.end method