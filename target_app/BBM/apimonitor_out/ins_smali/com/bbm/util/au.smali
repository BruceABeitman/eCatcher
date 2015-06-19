.class final Lcom/bbm/util/au;
.super Ljava/lang/Object;
.source "ChannelUtil.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/util/au;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/bbm/util/au;->b:Landroid/app/Activity;
iput-object p3, p0, Lcom/bbm/util/au;->c:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/au;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_12
const/4 v0, 0x0
:goto_11
return v0
:cond_12
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/util/au;->b:Landroid/app/Activity;
const-class v2, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.bbm.ui.activities.ViewSubscribedChannelActivity.channel_id"
iget-object v2, p0, Lcom/bbm/util/au;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "com.bbm.ui.activities.ViewSubscribedChannelActivity.post_id"
iget-object v2, p0, Lcom/bbm/util/au;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/util/au;->b:Landroid/app/Activity;
const/16 v2, 0x64
invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
const/4 v0, 0x1
goto :goto_11
.end method