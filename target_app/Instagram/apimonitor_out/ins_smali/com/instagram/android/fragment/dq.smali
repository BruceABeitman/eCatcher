.class final Lcom/instagram/android/fragment/dq;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/widget/CompoundButton;
.field final synthetic b:Lcom/instagram/android/fragment/dl;
.method constructor <init>(Lcom/instagram/android/fragment/dl;Landroid/widget/CompoundButton;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/fragment/dq;->b:Lcom/instagram/android/fragment/dl;
iput-object p2, p0, Lcom/instagram/android/fragment/dq;->a:Landroid/widget/CompoundButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/dq; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/dq;->a:Landroid/widget/CompoundButton;
invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z
const-string v1, " - Lcom/instagram/android/fragment/dq; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method