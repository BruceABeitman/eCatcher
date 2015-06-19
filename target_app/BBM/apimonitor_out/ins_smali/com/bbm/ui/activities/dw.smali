.class final Lcom/bbm/ui/activities/dw;
.super Ljava/lang/Object;
.source "ChannelReportsActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelReportsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/dw; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Flagged post long clicked"
const-class v1, Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/dz;
iget-object v0, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;
if-eqz v0, :cond_19
iget-object v1, v0, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2a
:cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
const v2, 0x7f0e01f1
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
:goto_28
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/dw; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_2a
iget-object v1, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ChannelReportsActivity;->f()V
iput-object p2, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;
iget-object v2, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->d:Landroid/view/View;
iget-object v1, v1, Lcom/bbm/ui/activities/ChannelReportsActivity;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f090040
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v2, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->l(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/activities/eb;
move-result-object v2
if-eqz v2, :cond_58
iget-object v2, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->l(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/activities/eb;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/ui/activities/eb;->e()V
:cond_58
iget-object v2, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
new-instance v3, Lcom/bbm/ui/activities/eb;
iget-object v4, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-direct {v3, v4, v1, v0}, Lcom/bbm/ui/activities/eb;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/c/fm;Lcom/bbm/ui/activities/ea;)V
invoke-static {v2, v3}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/ui/activities/eb;)Lcom/bbm/ui/activities/eb;
iget-object v0, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->l(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/ui/activities/eb;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/activities/eb;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/dw;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->o()V
goto :goto_28
.end method