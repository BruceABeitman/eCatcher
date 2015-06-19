.class final Lcom/bbm/ui/activities/aix;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Landroid/content/Intent;
.field final synthetic b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Landroid/content/Intent;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/aix;->a:Landroid/content/Intent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;
iget-object v0, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_23
const/4 v0, 0x0
:goto_22
return v0
:cond_23
iget-object v0, p0, Lcom/bbm/ui/activities/aix;->a:Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/aix;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Landroid/content/Context;Lcom/bbm/d/ec;)V
const/4 v0, 0x1
goto :goto_22
.end method