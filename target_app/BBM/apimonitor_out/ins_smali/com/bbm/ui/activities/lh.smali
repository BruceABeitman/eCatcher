.class final Lcom/bbm/ui/activities/lh;
.super Ljava/lang/Object;
.source "GroupAdminValidatePasswordActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/lh; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mHeaderActionBar Positive Button Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v0, Lcom/bbm/ui/activities/li;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/li;-><init>(Lcom/bbm/ui/activities/lh;)V
iget-object v1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/lh;->a:Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/g/aq;
invoke-direct {v3, v1, v2}, Lcom/bbm/g/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/lh; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method