.class  Lcom/millennialmedia/android/dn$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/millennialmedia/android/dn;
.method constructor <init>(Lcom/millennialmedia/android/dn;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/dn$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;
iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/millennialmedia/android/dn;->a(Lcom/millennialmedia/android/dn;Z)Z
iget-object v0, p0, Lcom/millennialmedia/android/dn$4;->a:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->u()V
:cond_11
const-string v1, " - Lcom/millennialmedia/android/dn$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method