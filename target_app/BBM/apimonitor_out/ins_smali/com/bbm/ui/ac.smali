.class final Lcom/bbm/ui/ac;
.super Ljava/lang/Object;
.source "ChannelsSegmentedControl.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/ChannelsSegmentedControl;
.method constructor <init>(Lcom/bbm/ui/ChannelsSegmentedControl;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/ac; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
move-result-object v0
if-ne p1, v0, :cond_18
const-string v0, "Discover Clicked"
const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
const v1, 0x7f0a007d
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V
:cond_17
:goto_17
const-string v1, " - Lcom/bbm/ui/ac; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->b(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
move-result-object v0
if-ne p1, v0, :cond_30
const-string v0, "MyChannels Clicked"
const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
const v1, 0x7f0a0080
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V
goto :goto_17
:cond_30
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->c(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
move-result-object v0
if-ne p1, v0, :cond_17
const-string v0, "Notificaitons Clicked"
const-class v1, Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/ac;->a:Lcom/bbm/ui/ChannelsSegmentedControl;
const v1, 0x7f0a0078
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V
goto :goto_17
.end method