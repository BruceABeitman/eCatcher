.class  Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"
.implements Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
.registers 9
const/4 v2, 0x0
new-instance v0, Landroid/content/Intent;
aget-object v1, p2, v2
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
const v1, 0x1000c000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
move-result-object v0
aput-object v0, p2, v2
invoke-static {p1, p3, p2, p4, p5}, Landroid/support/v4/app/TaskStackBuilderJellybean;->getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method