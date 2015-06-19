.class final Lcom/bbm/ui/activities/cl;
.super Ljava/lang/Object;
.source "ChannelChatListActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/d/es;
.field final synthetic b:Lcom/bbm/ui/activities/eu;
.field final synthetic c:Lcom/bbm/ui/activities/ChannelChatListActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/d/es;Lcom/bbm/ui/activities/eu;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/cl;->a:Lcom/bbm/d/es;
iput-object p3, p0, Lcom/bbm/ui/activities/cl;->b:Lcom/bbm/ui/activities/eu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/cl;->a:Lcom/bbm/d/es;
iget-object v1, v1, Lcom/bbm/d/es;->b:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/cl;->a:Lcom/bbm/d/es;
iget-wide v2, v2, Lcom/bbm/d/es;->n:J
invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/cl;->a:Lcom/bbm/d/es;
iget-object v1, v1, Lcom/bbm/d/es;->q:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v5
iget-object v0, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_43
iget-object v0, v4, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_43
iget-object v0, v5, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_45
:cond_43
const/4 v0, 0x0
:goto_44
return v0
:cond_45
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
iget-object v6, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v3, p0, Lcom/bbm/ui/activities/cl;->a:Lcom/bbm/d/es;
invoke-static/range {v0 .. v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
iget-object v2, v4, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-direct {v1, v7, v2, v0}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6, v1}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0039
const v2, 0x7f020268
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
const v4, 0x7f0e0238
invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6, v0}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/cm;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/cm;-><init>(Lcom/bbm/ui/activities/cl;)V
invoke-virtual {v6, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->o()V
const/4 v0, 0x1
goto :goto_44
.end method