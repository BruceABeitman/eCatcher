.class public Lcom/spotify/music/spotlets/optintrial/TrialAlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 13
const/high16 v4, 0x1000
const/16 v9, 0x18
const/4 v8, 0x0
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const/16 v1, 0x539
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/spotify/music/MainActivity;
invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v2
invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
new-instance v2, Landroid/support/v4/app/al;
invoke-direct {v2, p1}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V
const v3, 0x7f0f0294
invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v3
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e000e
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;
move-result-object v1
const v3, 0x7f0f0293
invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/al;->a(J)Landroid/support/v4/app/al;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/al;->d()Landroid/support/v4/app/al;
move-result-object v1
const v3, 0x7f0900bd
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
const v4, 0x7f0d0017
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I
move-result v4
const v5, 0x7f0d0016
invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
invoke-virtual {v1, v3, v4, v0}, Landroid/support/v4/app/al;->a(III)Landroid/support/v4/app/al;
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
invoke-virtual {v2}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;
move-result-object v1
invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
.end method