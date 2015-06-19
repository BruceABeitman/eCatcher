.class final Lcom/bbm/ui/activities/lm;
.super Lcom/bbm/j/k;
.source "GroupChatHistorySettingsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->b(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;
move-result-object v0
iget-object v1, v0, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_2c
iget-object v1, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
iget-object v0, v0, Lcom/bbm/g/q;->f:Lcom/bbm/g/r;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Lcom/bbm/g/r;)Lcom/bbm/g/r;
iget-object v0, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->c(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/ui/activities/lo;
move-result-object v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/bbm/ui/activities/lm;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->c(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/ui/activities/lo;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/activities/lo;->notifyDataSetChanged()V
:cond_2c
return-void
.end method