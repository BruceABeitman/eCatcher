.class final Lcom/bbm/ui/activities/mw;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/mw;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 6
const/4 v0, 0x1
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/mw;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;
move-result-object v1
iget-object v2, v1, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_38
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/af;->t()Z
move-result v2
if-nez v2, :cond_27
iget-object v1, v1, Lcom/bbm/g/q;->g:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_37
:cond_27
iget-object v1, p0, Lcom/bbm/ui/activities/mw;->a:Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->i(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/mx;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/mx;-><init>(Lcom/bbm/ui/activities/mw;)V
const-wide/16 v3, 0xc8
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:goto_37
:cond_37
return v0
:cond_38
iget-object v1, v1, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_37
const/4 v0, 0x0
goto :goto_37
.end method