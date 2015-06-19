.class final Lcom/bbm/ui/activities/abx;
.super Ljava/lang/Object;
.source "ProfileActivity.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abx;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/abx; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-ne v0, v2, :cond_31
const/16 v0, 0x42
if-ne p2, v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/abx;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->f(Lcom/bbm/ui/activities/ProfileActivity;)Z
move-result v0
if-nez v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/abx;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/abx;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abx;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0, v2}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
:cond_31
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/abx; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method