.class public Lcom/instagram/android/activity/ActivityInTab;
.super Lcom/instagram/base/activity/a;
.source "ActivityInTab.java"
.field private static p:Landroid/os/Bundle;
.field private q:Z
.field private r:Lcom/instagram/common/c/h;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z
return-void
.end method
.method private static a(I)Landroid/support/v4/app/Fragment;
.registers 2
packed-switch p0, :pswitch_data_1e
:pswitch_3
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
new-instance v0, Lcom/instagram/android/fragment/ap;
invoke-direct {v0}, Lcom/instagram/android/fragment/ap;-><init>()V
goto :goto_4
:pswitch_b
new-instance v0, Lcom/instagram/i/c/g;
invoke-direct {v0}, Lcom/instagram/i/c/g;-><init>()V
goto :goto_4
:pswitch_11
new-instance v0, Lcom/instagram/android/fragment/ep;
invoke-direct {v0}, Lcom/instagram/android/fragment/ep;-><init>()V
goto :goto_4
:pswitch_17
new-instance v0, Lcom/instagram/android/fragment/ct;
invoke-direct {v0}, Lcom/instagram/android/fragment/ct;-><init>()V
goto :goto_4
nop
:pswitch_data_1e
.packed-switch 0x0
:pswitch_17
:pswitch_5
:pswitch_3
:pswitch_b
:pswitch_11
.end packed-switch
.end method
.method public static a(Landroid/os/Bundle;)V
.registers 1
sput-object p0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/ActivityInTab;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z
return v0
.end method
.method private static i()Landroid/os/Bundle;
.registers 2
sget-object v0, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;
const/4 v1, 0x0
sput-object v1, Lcom/instagram/android/activity/ActivityInTab;->p:Landroid/os/Bundle;
return-object v0
.end method
.method protected final f()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "MainTabActivity.EXTRA_TAB_NAME"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final g()V
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->f()Z
return-void
.end method
.method protected final h()V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.extra.EXTRA_STARTING_FRAGMENT"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v1
sget v2, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
if-nez v1, :cond_2e
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v1
invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
sget v2, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I
:cond_2e
return-void
.end method
.method public onBackPressed()V
.registers 4
const-string v0, "ActivityInTab.BROADCAST_BACK_PRESSED"
invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v0
if-nez v0, :cond_23
new-instance v0, Landroid/content/Intent;
const-string v1, "MainTabActivity.BROADCAST_BACK_PUSHED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "MainTabActivity.EXTRA_TAB_NAME"
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z
:goto_22
return-void
:cond_23
invoke-super {p0}, Lcom/instagram/base/activity/a;->onBackPressed()V
goto :goto_22
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/instagram/android/activity/ActivityInTab; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/instagram/base/activity/a;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/common/c/j;
invoke-direct {v0, p0}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "MainTabActivity.BROADCAST_POP_TO_ROOT"
new-instance v2, Lcom/instagram/android/activity/b;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/instagram/android/activity/b;-><init>(Lcom/instagram/android/activity/ActivityInTab;B)V
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/c/h;
iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
const-string v1, " - Lcom/instagram/android/activity/ActivityInTab; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/instagram/android/activity/ActivityInTab; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/activity/ActivityInTab;->r:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
invoke-super {p0}, Lcom/instagram/base/activity/a;->onDestroy()V
const-string v1, " - Lcom/instagram/android/activity/ActivityInTab; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPostResume()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/activity/a;->onPostResume()V
iget-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z
if-eqz v0, :cond_d
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->g()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/activity/ActivityInTab;->q:Z
:cond_d
invoke-static {}, Lcom/instagram/android/activity/ActivityInTab;->i()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
move-result v1
if-nez v1, :cond_20
invoke-virtual {p0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/android/util/a;->a(Landroid/support/v4/app/s;Landroid/os/Bundle;)V
:cond_20
return-void
.end method