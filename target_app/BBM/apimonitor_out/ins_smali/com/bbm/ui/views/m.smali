.class final Lcom/bbm/ui/views/m;
.super Lcom/bbm/ui/d/i;
.source "ChannelLobbyReportsPaneView.java"
.field final synthetic a:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
.method constructor <init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/views/m;->a:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
invoke-direct {p0}, Lcom/bbm/ui/d/i;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/views/m;->a:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/views/m;->a:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
invoke-static {v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)Landroid/content/Context;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, p1, v1}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method