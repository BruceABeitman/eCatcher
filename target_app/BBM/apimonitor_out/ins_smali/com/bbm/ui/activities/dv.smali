.class final Lcom/bbm/ui/activities/dv;
.super Ljava/lang/Object;
.source "ChannelReportsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelReportsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/dv;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/dv; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/dz;
iget-object v1, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;
if-eqz v1, :cond_13
iget-object v1, v1, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_22
:cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/dv;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/dv;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
const v2, 0x7f0e01f1
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
:goto_21
const-string v1, " - Lcom/bbm/ui/activities/dv; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_22
iget-object v1, p0, Lcom/bbm/ui/activities/dv;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/dz;->b:Lcom/bbm/ui/activities/ea;
iget-object v0, v0, Lcom/bbm/ui/activities/ea;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/dv;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v0, v2, v3}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_21
.end method