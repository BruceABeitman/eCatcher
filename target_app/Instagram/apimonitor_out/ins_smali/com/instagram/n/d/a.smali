.class public final Lcom/instagram/n/d/a;
.super Ljava/lang/Object;
.source "CheckpointUtil.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
.registers 6
invoke-static {p1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/simplewebview/SimpleWebViewActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1400
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "SimpleWebViewFragment.ARGUMENT_URL"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "SimpleWebViewFragment.ARGUMENT_TOGGLE_DISPLAY_BACK_BUTTON"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_25
return-void
.end method