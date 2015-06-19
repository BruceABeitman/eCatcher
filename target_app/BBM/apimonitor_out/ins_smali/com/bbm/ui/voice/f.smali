.class final Lcom/bbm/ui/voice/f;
.super Ljava/lang/Object;
.source "IncomingCallAnswerBar.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/voice/d;
.method constructor <init>(Lcom/bbm/ui/voice/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/f;->a:Lcom/bbm/ui/voice/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/f;->a:Lcom/bbm/ui/voice/d;
iget-object v0, v0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;
invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/voice/f;->a:Lcom/bbm/ui/voice/d;
iget-object v0, v0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;
invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/ui/voice/g;->a()V
:goto_15
:cond_15
return-void
:cond_16
iget-object v0, p0, Lcom/bbm/ui/voice/f;->a:Lcom/bbm/ui/voice/d;
iget-object v0, v0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;
invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/voice/f;->a:Lcom/bbm/ui/voice/d;
iget-object v0, v0, Lcom/bbm/ui/voice/d;->a:Lcom/bbm/ui/voice/IncomingCallAnswerBar;
invoke-static {v0}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->k(Lcom/bbm/ui/voice/IncomingCallAnswerBar;)Lcom/bbm/ui/voice/g;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/ui/voice/g;->b()V
goto :goto_15
.end method