.class final Lcom/bbm/ui/activities/mt;
.super Lcom/bbm/j/k;
.source "GroupConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_3f
iget-object v1, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->f(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/EditText;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->f(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/mt;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->g(Lcom/bbm/ui/activities/GroupConversationActivity;)V
:cond_3f
return-void
.end method