.class  Lcom/twidroid/activity/WhatsNewActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/activity/WhatsNewActivity;
.method constructor <init>(Lcom/twidroid/activity/WhatsNewActivity;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->b:Lcom/twidroid/activity/WhatsNewActivity;
iput-object p2, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/WhatsNewActivity$1; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->b:Lcom/twidroid/activity/WhatsNewActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
add-int/lit8 v2, p3, 0x1
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->a:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->b:Lcom/twidroid/activity/WhatsNewActivity;
iget-object v0, v0, Lcom/twidroid/activity/WhatsNewActivity;->c:Landroid/view/MenuItem;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p3, v0, :cond_47
iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->b:Lcom/twidroid/activity/WhatsNewActivity;
iget-object v0, v0, Lcom/twidroid/activity/WhatsNewActivity;->c:Landroid/view/MenuItem;
const v1, 0x7f0c032d
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
:goto_46
:cond_46
const-string v1, " - Lcom/twidroid/activity/WhatsNewActivity$1; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_47
iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity$1;->b:Lcom/twidroid/activity/WhatsNewActivity;
iget-object v0, v0, Lcom/twidroid/activity/WhatsNewActivity;->c:Landroid/view/MenuItem;
const v1, 0x7f0c0330
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
goto :goto_46
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/WhatsNewActivity$1; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/WhatsNewActivity$1; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method