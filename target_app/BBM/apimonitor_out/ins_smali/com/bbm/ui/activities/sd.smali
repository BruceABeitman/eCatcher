.class final Lcom/bbm/ui/activities/sd;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/sd;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/sd; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/bbm/ui/activities/sd;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_19
const/16 v1, 0x42
if-ne p2, v1, :cond_19
iget-object v1, p0, Lcom/bbm/ui/activities/sd;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->i(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
:goto_18
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/sd; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method