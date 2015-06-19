.class public Lcom/twidroid/activity/UberBarMaintenance;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"
.field private static final b:I = 0x3
.field private static final c:Ljava/lang/String; = "UberBarConfiguration"
.field private static final f:I = 0x2
.field private d:Lcom/twidroid/ui/c/g;
.field private e:Lcom/twidroid/ui/widgets/DragableList;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/c/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/activity/UberBarMaintenance;)Lcom/twidroid/ui/widgets/DragableList;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->e:Lcom/twidroid/ui/widgets/DragableList;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/UberBarMaintenance; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030079
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberBarMaintenance;->setContentView(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberBarMaintenance;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c02f5
invoke-virtual {p0}, Lcom/twidroid/activity/UberBarMaintenance;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberBarMaintenance;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
const v0, 0x102000a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberBarMaintenance;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/DragableList;
iput-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->e:Lcom/twidroid/ui/widgets/DragableList;
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->e:Lcom/twidroid/ui/widgets/DragableList;
new-instance v1, Lcom/twidroid/ui/a/l;
iget-object v2, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
invoke-direct {v1, p0, v2}, Lcom/twidroid/ui/a/l;-><init>(Landroid/content/Context;Lcom/twidroid/ui/c/g;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/DragableList;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->e:Lcom/twidroid/ui/widgets/DragableList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/DragableList;->setFixedItemsCount(I)V
new-instance v1, Lcom/twidroid/activity/UberBarMaintenance$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberBarMaintenance$1;-><init>(Lcom/twidroid/activity/UberBarMaintenance;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/DragableList;->setDropListener(Lcom/twidroid/ui/widgets/f;)V
new-instance v1, Lcom/twidroid/activity/UberBarMaintenance$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberBarMaintenance$2;-><init>(Lcom/twidroid/activity/UberBarMaintenance;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/DragableList;->setRemoveListener(Lcom/twidroid/ui/widgets/g;)V
new-instance v1, Lcom/twidroid/activity/UberBarMaintenance$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberBarMaintenance$3;-><init>(Lcom/twidroid/activity/UberBarMaintenance;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/DragableList;->setDragListener(Lcom/twidroid/ui/widgets/e;)V
const v0, 0x7f0c00cc
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberBarMaintenance;->setTitle(I)V
const-string v0, "menu"
const-string v1, "customization"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/UberBarMaintenance; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberBarMaintenance; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x0
const/4 v1, 0x2
const v2, 0x7f0c0309
invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x1080038
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const-string v1, " - Lcom/twidroid/activity/UberBarMaintenance; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v3
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberBarMaintenance; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
const v2, 0x102002c
if-eq v1, v2, :cond_10
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
if-nez v1, :cond_14
:cond_10
invoke-virtual {p0}, Lcom/twidroid/activity/UberBarMaintenance;->finish()V
:goto_13
move v2, v0
const-string v1, " - Lcom/twidroid/activity/UberBarMaintenance; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_14
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_38
invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_13
:pswitch_20
iget-object v1, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
invoke-virtual {v1}, Lcom/twidroid/ui/c/g;->a()V
iget-object v1, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
invoke-virtual {v1}, Lcom/twidroid/ui/c/g;->c()V
iget-object v1, p0, Lcom/twidroid/activity/UberBarMaintenance;->e:Lcom/twidroid/ui/widgets/DragableList;
new-instance v2, Lcom/twidroid/ui/a/l;
iget-object v3, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
invoke-direct {v2, p0, v3}, Lcom/twidroid/ui/a/l;-><init>(Landroid/content/Context;Lcom/twidroid/ui/c/g;)V
invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/DragableList;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_13
nop
:pswitch_data_38
.packed-switch 0x2
:pswitch_20
.end packed-switch
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberBarMaintenance; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V
iget-object v0, p0, Lcom/twidroid/activity/UberBarMaintenance;->d:Lcom/twidroid/ui/c/g;
invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->c()V
new-instance v0, Landroid/content/Intent;
const-string v1, "ubersocial.broadcast.uberbar.configchanged"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberBarMaintenance;->sendBroadcast(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/activity/UberBarMaintenance; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method