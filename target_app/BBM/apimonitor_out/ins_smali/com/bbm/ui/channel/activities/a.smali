.class final Lcom/bbm/ui/channel/activities/a;
.super Ljava/lang/Object;
.source "ChannelInviteToBBM.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;
.method constructor <init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/channel/activities/a;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/channel/activities/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/a;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;
invoke-static {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->a(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
const-string v1, " - Lcom/bbm/ui/channel/activities/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method