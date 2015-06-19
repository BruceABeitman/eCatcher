.class final Lcom/bbm/ui/activities/ajv;
.super Ljava/lang/Object;
.source "ViewSubscribedChannelActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/slidingmenu/a;
.field final synthetic b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;Lcom/bbm/ui/slidingmenu/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/ajv;->a:Lcom/bbm/ui/slidingmenu/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 9
const/4 v7, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v3, :cond_14
:goto_13
return v2
:cond_14
iget-object v3, p0, Lcom/bbm/ui/activities/ajv;->a:Lcom/bbm/ui/slidingmenu/a;
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
invoke-static {v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;)Z
move-result v0
invoke-virtual {v3, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
iget-object v3, p0, Lcom/bbm/ui/activities/ajv;->a:Lcom/bbm/ui/slidingmenu/a;
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
invoke-static {v0}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;)Z
move-result v0
if-nez v0, :cond_c5
move v0, v1
:goto_3a
invoke-virtual {v3, v0}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z
if-nez v0, :cond_6a
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->c:Ljava/util/List;
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v3, 0x7f0a0032
const v4, 0x7f02026c
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
const v6, 0x7f0e0480
invoke-virtual {v5, v6}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v3, v4, v5, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_6a
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->c:Ljava/util/List;
iget-object v2, p0, Lcom/bbm/ui/activities/ajv;->a:Lcom/bbm/ui/slidingmenu/a;
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->l:Z
if-eqz v0, :cond_c8
const v0, 0x7f0a0041
move v2, v0
:goto_87
const v0, 0x7f020297
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->l:Z
if-eqz v0, :cond_cd
const v0, 0x7f0e01f2
:goto_a1
invoke-virtual {v5, v0}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v2, v4, v0, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->c:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->q:Z
if-eqz v0, :cond_c2
iget-object v0, p0, Lcom/bbm/ui/activities/ajv;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->a(Lcom/bbm/ui/slidingmenu/a;)V
:cond_c2
move v2, v1
goto/16 :goto_13
:cond_c5
move v0, v2
goto/16 :goto_3a
:cond_c8
const v0, 0x7f0a0045
move v2, v0
goto :goto_87
:cond_cd
const v0, 0x7f0e0609
goto :goto_a1
.end method