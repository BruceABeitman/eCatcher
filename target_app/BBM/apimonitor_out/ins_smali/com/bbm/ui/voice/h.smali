.class final Lcom/bbm/ui/voice/h;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"
.implements Lcom/bbm/n/j;
.field final synthetic a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
.method constructor <init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c()V
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/voice/n;
invoke-interface {v0}, Lcom/bbm/ui/voice/n;->c()V
:cond_21
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setMuteActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setSpeakerPhoneActivated(Z)V
return-void
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0, p1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Z
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b()V
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/voice/n;
invoke-interface {v0}, Lcom/bbm/ui/voice/n;->b()V
:cond_20
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/h;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;
invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Z
return-void
.end method