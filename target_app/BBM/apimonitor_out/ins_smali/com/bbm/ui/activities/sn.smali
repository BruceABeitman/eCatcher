.class final Lcom/bbm/ui/activities/sn;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/sn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mHeaderActionBar NegativeButton Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->b(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->c(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;
iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/sn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method