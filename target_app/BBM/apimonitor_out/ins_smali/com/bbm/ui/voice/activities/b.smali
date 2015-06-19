.class final Lcom/bbm/ui/voice/activities/b;
.super Lcom/bbm/j/k;
.source "IncomingCallActivity.java"
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
.method constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/voice/activities/b;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/voice/activities/b;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
iget-object v0, v0, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;
invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne v0, v1, :cond_23
move v0, v1
:goto_17
if-nez v0, :cond_22
iget-object v0, p0, Lcom/bbm/ui/voice/activities/b;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->e(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/n/j;
move-result-object v0
invoke-interface {v0, v2}, Lcom/bbm/n/j;->a(Z)V
:cond_22
return-void
:cond_23
move v0, v2
goto :goto_17
.end method