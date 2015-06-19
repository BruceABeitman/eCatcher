.class final Lcom/bbm/n/i;
.super Lcom/bbm/j/u;
.source "MediaCallManager.java"
.field final synthetic a:Lcom/bbm/n/b;
.field private final b:Lcom/rim/bbm/BbmMediaCallService$CallData;
.method public constructor <init>(Lcom/bbm/n/b;Lcom/rim/bbm/BbmMediaCallService$CallData;)V
.registers 3
iput-object p1, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
iput-object p2, p0, Lcom/bbm/n/i;->b:Lcom/rim/bbm/BbmMediaCallService$CallData;
return-void
.end method
.method protected final b()Z
.registers 6
const/4 v0, 0x1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/n/i;->b:Lcom/rim/bbm/BbmMediaCallService$CallData;
iget-object v2, v2, Lcom/rim/bbm/BbmMediaCallService$CallData;->peerAddress:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_57
iget-object v2, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->a(Lcom/bbm/n/b;)Lcom/bbm/j/t;
move-result-object v2
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v2, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
iget-object v3, p0, Lcom/bbm/n/i;->b:Lcom/rim/bbm/BbmMediaCallService$CallData;
iget v3, v3, Lcom/rim/bbm/BbmMediaCallService$CallData;->callID:I
invoke-static {v2, v3}, Lcom/bbm/n/b;->a(Lcom/bbm/n/b;I)I
iget-object v2, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
invoke-static {v2}, Lcom/bbm/n/b;->b(Lcom/bbm/n/b;)Lcom/bbm/j/t;
move-result-object v2
iget-object v3, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
invoke-static {v3}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v3
const-class v4, Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "com.bbm.voice.incoming.useruri"
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/n/i;->a:Lcom/bbm/n/b;
invoke-static {v1}, Lcom/bbm/n/b;->c(Lcom/bbm/n/b;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_56
:goto_56
return v0
:cond_57
iget-object v1, v1, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_56
const/4 v0, 0x0
goto :goto_56
.end method