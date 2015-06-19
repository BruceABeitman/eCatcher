.class final Lcom/bbm/ui/activities/gh;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_39
iget-object v1, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_38
iget-object v1, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->R(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/fg;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_39
iget-object v0, p0, Lcom/bbm/ui/activities/gh;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/fs;)V
:cond_38
const/4 v0, 0x1
:cond_39
return v0
.end method