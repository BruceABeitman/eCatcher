.class final Lcom/instagram/android/fragment/eh;
.super Ljava/lang/Object;
.source "SearchFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/ee;
.method constructor <init>(Lcom/instagram/android/fragment/ee;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/eh; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ee;->b()I
move-result v0
sget v1, Lcom/instagram/android/fragment/ei;->b:I
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;
invoke-static {v0}, Lcom/instagram/android/fragment/ee;->d(Lcom/instagram/android/fragment/ee;)Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:goto_14
const-string v1, " - Lcom/instagram/android/fragment/eh; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
iget-object v0, p0, Lcom/instagram/android/fragment/eh;->a:Lcom/instagram/android/fragment/ee;
invoke-static {v0}, Lcom/instagram/android/fragment/ee;->b(Lcom/instagram/android/fragment/ee;)Lcom/instagram/android/fragment/y;
move-result-object v0
sget v1, Lcom/instagram/android/fragment/ei;->b:I
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/y;->a(I)V
goto :goto_14
.end method