.class final Lcom/instagram/android/activity/f;
.super Ljava/lang/Object;
.source "FlickrAuthActivity.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/activity/FlickrAuthActivity;
.method constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/activity/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V
iget-object v0, p0, Lcom/instagram/android/activity/f;->a:Lcom/instagram/android/activity/FlickrAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V
const-string v1, " - Lcom/instagram/android/activity/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method