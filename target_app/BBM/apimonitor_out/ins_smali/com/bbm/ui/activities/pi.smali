.class final Lcom/bbm/ui/activities/pi;
.super Lcom/bbm/j/k;
.source "GroupListsCommentActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/pi;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/pi;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->f(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/pi;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a:Lcom/bbm/g/am;
iget-object v2, p0, Lcom/bbm/ui/activities/pi;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/pi;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lcom/bbm/g/am;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/w;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/w;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method