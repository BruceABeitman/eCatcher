.class final Lcom/bbm/ui/activities/ch;
.super Lcom/bbm/d/b/q;
.source "ChannelChatListActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 12
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_f6
new-instance v7, Lcom/bbm/ui/gp;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-direct {v7, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V
new-instance v8, Lcom/bbm/ui/gp;
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-direct {v8, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
move v3, v4
:goto_3a
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge v3, v1, :cond_c2
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/es;
iget-boolean v2, v1, Lcom/bbm/d/es;->i:Z
if-eqz v2, :cond_b2
iget-object v2, v1, Lcom/bbm/d/es;->a:Ljava/lang/String;
iget-object v9, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-virtual {v9}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b()Ljava/lang/String;
move-result-object v9
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b2
iget-object v2, v1, Lcom/bbm/d/es;->r:Ljava/util/List;
if-eqz v2, :cond_b6
iget-object v2, v1, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_b6
iget-object v2, v1, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:goto_6c
if-eqz v2, :cond_ba
iget-object v9, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v9}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v10, "|"
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v10, v1, Lcom/bbm/d/es;->b:Ljava/lang/String;
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v9, v2}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v2
sget-object v9, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v9, :cond_b8
move v2, v5
:goto_96
iget-object v9, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v9}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v9
iget-object v10, v1, Lcom/bbm/d/es;->a:Ljava/lang/String;
invoke-virtual {v9, v10}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v9
new-instance v10, Lcom/bbm/ui/activities/eu;
invoke-direct {v10, v1, v9, v2}, Lcom/bbm/ui/activities/eu;-><init>(Lcom/bbm/d/es;Lcom/bbm/d/ec;Z)V
invoke-static {v1}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/es;)Z
move-result v1
if-nez v1, :cond_bc
iget-object v1, v7, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_b2
:cond_b2
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_3a
:cond_b6
const/4 v2, 0x0
goto :goto_6c
:cond_b8
move v2, v4
goto :goto_96
:cond_ba
move v2, v4
goto :goto_96
:cond_bc
iget-object v1, v8, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b2
:cond_c2
iget-object v0, v7, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_f7
iget-object v0, v8, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_f7
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->c(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
move-result-object v0
invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getEmptyView()Landroid/view/View;
move-result-object v0
if-nez v0, :cond_f6
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->c(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setEmptyView(Landroid/view/View;)V
:goto_f6
:cond_f6
return-object v6
:cond_f7
iget-object v0, v7, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_102
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_102
iget-object v0, v8, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_f6
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f6
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ch;->a:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
return v0
.end method