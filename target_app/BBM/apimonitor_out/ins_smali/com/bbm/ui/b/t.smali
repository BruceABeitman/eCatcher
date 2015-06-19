.class final Lcom/bbm/ui/b/t;
.super Ljava/lang/Object;
.source "FirstTimeSetAvatarDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/s;
.method constructor <init>(Lcom/bbm/ui/b/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/b/t;->a:Lcom/bbm/ui/b/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/b/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/b/t;->a:Lcom/bbm/ui/b/s;
invoke-static {v0}, Lcom/bbm/ui/b/s;->a(Lcom/bbm/ui/b/s;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
new-instance v4, Landroid/content/ContentValues;
invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v2
iput-object v2, v0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;
const-string v2, "output"
iget-object v3, v0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const/16 v2, 0x15
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/bbm/ui/b/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method