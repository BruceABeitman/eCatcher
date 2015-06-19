.class final Lcom/bbm/ui/activities/hr;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/ep;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/hr;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Z)V
.registers 5
const-string v0, "quickShareCameraView Clicked or Selected"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/hr;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, p1}, Lcom/bbm/ui/activities/ConversationActivity;->h(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
move-result v0
if-eqz v0, :cond_36
new-instance v0, Landroid/content/Intent;
const-string v1, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/hr;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-string v2, "image/jpeg"
invoke-static {v2}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/net/Uri;)Landroid/net/Uri;
const-string v1, "output"
iget-object v2, p0, Lcom/bbm/ui/activities/hr;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->ax(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:try_start_30
iget-object v1, p0, Lcom/bbm/ui/activities/hr;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v2, 0x7
invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
:cond_36
:goto_36
:try_end_36
.catch Landroid/content/ActivityNotFoundException; {:try_start_30 .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_36
.end method