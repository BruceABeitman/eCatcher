.class final Lcom/bbm/ui/activities/eh;
.super Ljava/lang/Object;
.source "ChannelSettingsActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/eg;
.method constructor <init>(Lcom/bbm/ui/activities/eg;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/eh;->a:Lcom/bbm/ui/activities/eg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/eh;->a:Lcom/bbm/ui/activities/eg;
iget-object v0, v0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_16
const/4 v0, 0x0
:goto_15
return v0
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/eh;->a:Lcom/bbm/ui/activities/eg;
iget-object v1, v0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/eh;->a:Lcom/bbm/ui/activities/eg;
iget-object v0, v0, Lcom/bbm/ui/activities/eg;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->b(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lcom/bbm/d/ec;)V
const/4 v0, 0x1
goto :goto_15
.end method