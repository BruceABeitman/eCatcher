.class final Landroid/support/v4/app/au;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"
.implements Landroid/support/v4/app/as;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/content/Context;[Landroid/content/Intent;)Landroid/app/PendingIntent;
.registers 6
const/4 v2, 0x0
new-instance v0, Landroid/content/Intent;
aget-object v1, p2, v2
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
const v1, 0x1000c000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
aput-object v0, p2, v2
const/high16 v0, 0x1000
invoke-static {p1, v2, p2, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method