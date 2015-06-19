.class final Lcom/bbm/ui/activities/afl;
.super Ljava/lang/Object;
.source "SetChannelAvatarActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/afl; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/bbm/ui/activities/afn;->a:[I
iget-object v1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->a(Lcom/bbm/ui/activities/SetChannelAvatarActivity;)Lcom/bbm/ui/activities/afp;
move-result-object v1
invoke-virtual {v1, p3}, Lcom/bbm/ui/activities/afp;->a(I)Lcom/bbm/ui/activities/afo;
move-result-object v1
iget-object v1, v1, Lcom/bbm/ui/activities/afo;->c:Lcom/bbm/ui/activities/afq;
invoke-virtual {v1}, Lcom/bbm/ui/activities/afq;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_26
:goto_17
const-string v1, " - Lcom/bbm/ui/activities/afl; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_18
iget-object v0, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/afl;->a:Lcom/bbm/ui/activities/SetChannelAvatarActivity;
invoke-static {v1}, Lcom/bbm/util/fb;->c(Landroid/app/Activity;)Landroid/content/Intent;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/SetChannelAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_17
nop
:pswitch_data_26
.packed-switch 0x1
:pswitch_18
.end packed-switch
.end method