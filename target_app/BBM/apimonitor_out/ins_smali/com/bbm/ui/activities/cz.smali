.class final Lcom/bbm/ui/activities/cz;
.super Ljava/lang/Object;
.source "ChannelOwnerProfileActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/cz; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/cz; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method