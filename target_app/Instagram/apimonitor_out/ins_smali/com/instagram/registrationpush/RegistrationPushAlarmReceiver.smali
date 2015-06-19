.class public Lcom/instagram/registrationpush/RegistrationPushAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationPushAlarmReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
new-instance v0, Lcom/instagram/registrationpush/a;
invoke-direct {v0, p1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->a()V
return-void
.end method