.class final Lcom/bbm/ui/activities/ej;
.super Lcom/bbm/j/u;
.source "ChannelStatsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelStatsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ChannelStatsActivity;->c(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelStatsActivity;->b()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ChannelStatsActivity;->b(Lcom/bbm/ui/activities/ChannelStatsActivity;)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;Lcom/bbm/d/em;)Lcom/bbm/d/em;
iget-object v0, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->d(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ej;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->e(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
const/4 v0, 0x1
:goto_36
return v0
:cond_37
const/4 v0, 0x0
goto :goto_36
.end method