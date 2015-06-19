.class final Lcom/bbm/ui/activities/ph;
.super Lcom/bbm/ui/cj;
.source "GroupListsCommentActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 5
packed-switch p1, :pswitch_data_32
:goto_3
return-void
:pswitch_4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
const-class v2, Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "listUri"
iget-object v2, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->finish()V
goto :goto_3
:pswitch_2c
iget-object v0, p0, Lcom/bbm/ui/activities/ph;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->d(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
goto :goto_3
:pswitch_data_32
.packed-switch 0x0
:pswitch_4
:pswitch_2c
.end packed-switch
.end method