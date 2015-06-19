.class public Lcom/instagram/android/c2dm/ClearNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearNotificationReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/android/c2dm/c;->b(Landroid/content/Intent;)V
return-void
.end method