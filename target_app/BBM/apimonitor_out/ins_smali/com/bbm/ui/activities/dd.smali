.class final Lcom/bbm/ui/activities/dd;
.super Lcom/bbm/d/b/f;
.source "ChannelPickerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPickerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPickerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/dd;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/activities/dd;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelPickerActivity;->a(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_15
:cond_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fe;
iget-object v3, p0, Lcom/bbm/ui/activities/dd;->a:Lcom/bbm/ui/activities/ChannelPickerActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ChannelPickerActivity;->b(Lcom/bbm/ui/activities/ChannelPickerActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v0, v0, Lcom/bbm/d/fe;->a:Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
iget-boolean v3, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v3, :cond_15
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_15
:cond_35
return-object v1
.end method