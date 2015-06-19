.class final Lcom/instagram/android/activity/b;
.super Ljava/lang/Object;
.source "ActivityInTab.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/activity/ActivityInTab;
.method private constructor <init>(Lcom/instagram/android/activity/ActivityInTab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/activity/ActivityInTab;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/activity/b;-><init>(Lcom/instagram/android/activity/ActivityInTab;)V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 4
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "MainTabActivity.EXTRA_TAB_NAME"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;
invoke-virtual {v1}, Lcom/instagram/android/activity/ActivityInTab;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;
invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->d()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->c()Z
move-result v1
if-eqz v1, :cond_49
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v1
if-lez v1, :cond_2f
iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;
invoke-virtual {v0}, Lcom/instagram/android/activity/ActivityInTab;->g()V
goto :goto_16
:cond_2f
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
instance-of v0, v1, Lcom/instagram/base/a/e;
if-eqz v0, :cond_3f
move-object v0, v1
check-cast v0, Lcom/instagram/base/a/e;
invoke-interface {v0}, Lcom/instagram/base/a/e;->V()V
:cond_3f
instance-of v0, v1, Lcom/instagram/android/fragment/fb;
if-eqz v0, :cond_16
check-cast v1, Lcom/instagram/android/fragment/fb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/fb;->ar()V
goto :goto_16
:cond_49
iget-object v0, p0, Lcom/instagram/android/activity/b;->a:Lcom/instagram/android/activity/ActivityInTab;
invoke-static {v0}, Lcom/instagram/android/activity/ActivityInTab;->a(Lcom/instagram/android/activity/ActivityInTab;)Z
goto :goto_16
.end method