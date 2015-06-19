.class final Lcom/bbm/ui/activities/gy;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gy;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/gy;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v2, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_15
const/4 v0, 0x0
:goto_14
return v0
:cond_15
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/bbm/ui/activities/gy;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-class v4, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "com.bbm.onlyone"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v3, "com.bbm.excludedcontacts"
new-instance v4, Ljava/util/ArrayList;
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/gy;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v3, 0x2
invoke-virtual {v0, v2, v3}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
move v0, v1
goto :goto_14
.end method