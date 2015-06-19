.class final Lcom/bbm/ui/c/dm;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/dm; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-static {v0}, Lcom/bbm/ui/c/de;->c(Lcom/bbm/ui/c/de;)Lcom/bbm/ui/ee;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/ee;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/ds;
sget-object v1, Lcom/bbm/ui/c/di;->a:[I
iget-object v2, v0, Lcom/bbm/ui/c/ds;->a:Lcom/bbm/ui/c/dt;
invoke-virtual {v2}, Lcom/bbm/ui/c/dt;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_82
:goto_1a
:cond_1a
const-string v1, " - Lcom/bbm/ui/c/dm; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_1b
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-virtual {v2}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "groupUri"
iget-object v0, v0, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/a;
iget-object v0, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/de;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-virtual {v0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;
move-result-object v0
const v1, 0x7f040001
const v2, 0x7f040004
invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
goto :goto_1a
:pswitch_48
iget-object v0, v0, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;
check-cast v0, Lcom/bbm/g/ai;
iget-object v1, v0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
if-eqz v1, :cond_1a
sget-object v1, Lcom/bbm/ui/c/di;->b:[I
iget-object v2, v0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;
invoke-virtual {v2}, Lcom/bbm/g/aj;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_8a
goto :goto_1a
:pswitch_5e
iget-object v0, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-virtual {v0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
const v2, 0x7f0e045c
invoke-virtual {v1, v2}, Lcom/bbm/ui/c/de;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x11
const/4 v5, 0x1
move v4, v3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V
goto :goto_1a
:pswitch_75
iget-object v1, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-static {v1, v0}, Lcom/bbm/ui/c/de;->b(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
goto :goto_1a
:pswitch_7b
iget-object v1, p0, Lcom/bbm/ui/c/dm;->a:Lcom/bbm/ui/c/de;
invoke-static {v1, v0}, Lcom/bbm/ui/c/de;->b(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
goto :goto_1a
nop
:pswitch_data_8a
.packed-switch 0x1
:pswitch_5e
:pswitch_5e
:pswitch_5e
:pswitch_75
:pswitch_7b
.end packed-switch
:pswitch_data_82
.packed-switch 0x1
:pswitch_1b
:pswitch_48
.end packed-switch
.end method