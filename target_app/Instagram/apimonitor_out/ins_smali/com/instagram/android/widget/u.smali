.class final Lcom/instagram/android/widget/u;
.super Ljava/lang/Object;
.source "ShareTable.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/s;
.method constructor <init>(Lcom/instagram/android/widget/s;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/u;->a:Lcom/instagram/android/widget/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/u; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/widget/u;->a:Lcom/instagram/android/widget/s;
invoke-virtual {v0}, Lcom/instagram/android/widget/s;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/widget/u;->a:Lcom/instagram/android/widget/s;
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/widget/u;->a:Lcom/instagram/android/widget/s;
invoke-virtual {v1}, Lcom/instagram/android/widget/s;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->unable_to_add_foursquare_location_no_maps:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->ok:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:cond_30
const-string v1, " - Lcom/instagram/android/widget/u; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method