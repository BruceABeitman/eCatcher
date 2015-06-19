.class final Lcom/bbm/ui/activities/ee;
.super Lcom/bbm/j/k;
.source "ChannelSettingsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelSettingsActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->c(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Z
move-result v0
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_4b
iget-object v0, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->e(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lorg/json/JSONArray;
move-result-object v0
if-nez v0, :cond_3a
iget-object v1, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
new-instance v2, Lorg/json/JSONArray;
iget-object v0, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->D:Ljava/util/List;
invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-static {v1, v2}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;
:cond_3a
iget-object v1, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/ee;->a:Lcom/bbm/ui/activities/ChannelSettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->d(Lcom/bbm/ui/activities/ChannelSettingsActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChannelSettingsActivity;->a(Lcom/bbm/ui/activities/ChannelSettingsActivity;Lcom/bbm/d/ec;)V
:try_end_4b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c
:goto_4b
:cond_4b
return-void
:catch_4c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_4b
.end method