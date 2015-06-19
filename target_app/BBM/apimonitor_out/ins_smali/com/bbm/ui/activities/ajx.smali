.class final Lcom/bbm/ui/activities/ajx;
.super Ljava/lang/Object;
.source "ViewSubscribedChannelActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ajx;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ajx;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
iget-object v0, p0, Lcom/bbm/ui/activities/ajx;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ec;
iget-object v1, p0, Lcom/bbm/ui/activities/ajx;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;
invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;Landroid/app/Activity;)V
const/4 v0, 0x1
goto :goto_11
.end method