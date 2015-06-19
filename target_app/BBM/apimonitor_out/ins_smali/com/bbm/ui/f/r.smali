.class public final Lcom/bbm/ui/f/r;
.super Ljava/lang/Object;
.source "IntentUtils.java"
.method static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "active_section"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const/4 v1, 0x0
const/high16 v2, 0x1000
invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
.registers 7
const/high16 v4, 0x400
if-eqz p1, :cond_39
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "conversation_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "active_section"
const v3, 0x7f0a007b
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v2, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {p0}, Landroid/support/v4/app/ar;->a(Landroid/content/Context;)Landroid/support/v4/app/ar;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v2, v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v2}, Landroid/support/v4/app/ar;->a()Landroid/app/PendingIntent;
move-result-object v0
:goto_38
return-object v0
:cond_39
const/4 v0, 0x0
goto :goto_38
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
.registers 10
const/high16 v6, 0x400
if-eqz p1, :cond_64
if-eqz p2, :cond_64
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "pictureUri"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "groupUri"
invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "groupUri"
invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
new-instance v3, Landroid/content/Intent;
const-class v4, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v4, "active_section"
const v5, 0x7f0a007e
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v4, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {p0}, Landroid/support/v4/app/ar;->a(Landroid/content/Context;)Landroid/support/v4/app/ar;
move-result-object v4
invoke-virtual {v4, v3}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v4, v2}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v4, v1}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v4, v0}, Landroid/support/v4/app/ar;->a(Landroid/content/Intent;)Landroid/support/v4/app/ar;
invoke-virtual {v4}, Landroid/support/v4/app/ar;->a()Landroid/app/PendingIntent;
move-result-object v0
:goto_63
return-object v0
:cond_64
const/4 v0, 0x0
goto :goto_63
.end method