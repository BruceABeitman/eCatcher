.class final Landroid/support/v4/app/NotificationCompat$Action$1;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.implements Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action;
.registers 13
new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;
check-cast p5, [Landroid/support/v4/app/RemoteInput;
move-object v5, p5
check-cast v5, [Landroid/support/v4/app/RemoteInput;
const/4 v6, 0x0
move v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Landroid/support/v4/app/NotificationCompat$1;)V
return-object v0
.end method
.method public bridge synthetic build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;
.registers 7
invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/NotificationCompat$Action$1;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
.registers 3
new-array v0, p1, [Landroid/support/v4/app/NotificationCompat$Action;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Action$1;->newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
move-result-object v0
return-object v0
.end method