.class public Lcom/twidroid/activity/GalleryPicker;
.super Landroid/app/Activity;
.source "SourceFile"
.field  a:Landroid/content/Context;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
const/4 v0, -0x1
if-ne p2, v0, :cond_a
invoke-virtual {p0, v0, p3}, Lcom/twidroid/activity/GalleryPicker;->setResult(ILandroid/content/Intent;)V
:goto_6
invoke-virtual {p0}, Lcom/twidroid/activity/GalleryPicker;->finish()V
return-void
:cond_a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/GalleryPicker;->setResult(I)V
goto :goto_6
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/activity/GalleryPicker; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/activity/GalleryPicker;->getBaseContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/GalleryPicker;->a:Landroid/content/Context;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "image/*"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "android.intent.action.GET_CONTENT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const v1, 0x7f0c0146
invoke-virtual {p0, v1}, Lcom/twidroid/activity/GalleryPicker;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/GalleryPicker;->startActivityForResult(Landroid/content/Intent;I)V
const-string v1, " - Lcom/twidroid/activity/GalleryPicker; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/GalleryPicker; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/GalleryPicker; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/GalleryPicker; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V
const-string v1, " - Lcom/twidroid/activity/GalleryPicker; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method