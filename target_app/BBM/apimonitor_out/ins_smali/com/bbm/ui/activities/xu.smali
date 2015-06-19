.class final Lcom/bbm/ui/activities/xu;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->o(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->o(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->o(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/xu;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->o(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V
goto :goto_20
.end method