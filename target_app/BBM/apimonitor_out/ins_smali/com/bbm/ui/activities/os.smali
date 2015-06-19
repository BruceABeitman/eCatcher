.class final Lcom/bbm/ui/activities/os;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/widget/CheckBox;
.field final synthetic b:Lcom/bbm/g/y;
.field final synthetic c:Lcom/bbm/ui/activities/op;
.method constructor <init>(Lcom/bbm/ui/activities/op;Landroid/widget/CheckBox;Lcom/bbm/g/y;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/os;->c:Lcom/bbm/ui/activities/op;
iput-object p2, p0, Lcom/bbm/ui/activities/os;->a:Landroid/widget/CheckBox;
iput-object p3, p0, Lcom/bbm/ui/activities/os;->b:Lcom/bbm/g/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/os; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "checkboxView Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/os;->a:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/bbm/ui/activities/os;->c:Lcom/bbm/ui/activities/op;
iget-object v0, v0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/os;->c:Lcom/bbm/ui/activities/op;
iget-object v1, v1, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/os;->b:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_2e
const-string v1, " - Lcom/bbm/ui/activities/os; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2f
iget-object v0, p0, Lcom/bbm/ui/activities/os;->c:Lcom/bbm/ui/activities/op;
iget-object v0, v0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/os;->c:Lcom/bbm/ui/activities/op;
iget-object v1, v1, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/os;->b:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->a:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_2e
.end method