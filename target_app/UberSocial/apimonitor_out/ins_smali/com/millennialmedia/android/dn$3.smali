.class  Lcom/millennialmedia/android/dn$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/millennialmedia/android/dn;
.method constructor <init>(Lcom/millennialmedia/android/dn;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/dn$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->v()V
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-object v0, v0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;
const v1, 0x1080024
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
:goto_1f
:cond_1f
const-string v1, " - Lcom/millennialmedia/android/dn$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_20
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->k:Z
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->a(I)V
:goto_2c
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-object v0, v0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;
const v1, 0x1080023
invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V
goto :goto_1f
:cond_37
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->u:Z
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->k:Z
if-nez v0, :cond_49
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->j()V
goto :goto_2c
:cond_49
iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget-object v1, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;
iget v1, v1, Lcom/millennialmedia/android/dn;->j:I
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->a(I)V
goto :goto_2c
.end method