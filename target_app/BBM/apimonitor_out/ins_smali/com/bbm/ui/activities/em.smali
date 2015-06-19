.class final Lcom/bbm/ui/activities/em;
.super Ljava/lang/Object;
.source "ChannelStatsActivity.java"
.implements Lcom/bbm/ui/p;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelStatsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/em;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
const/4 v0, 0x4
if-le p1, v0, :cond_e
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "time period spinner position out of range"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/bbm/ui/activities/em;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {}, Lcom/bbm/ui/activities/ChannelStatsActivity;->f()[Ljava/lang/String;
move-result-object v1
aget-object v1, v1, p1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/em;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->f(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
goto :goto_d
.end method