.class final Lcom/bbm/util/a/e;
.super Ljava/lang/Object;
.source "GlympseTicketFetcher.java"
.implements Lcom/glympse/android/api/GEventListener;
.field final synthetic a:Lcom/bbm/util/a/d;
.method constructor <init>(Lcom/bbm/util/a/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/a/e;->a:Lcom/bbm/util/a/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 8
iget-object v0, p0, Lcom/bbm/util/a/e;->a:Lcom/bbm/util/a/d;
const/4 v1, 0x1
if-ne v1, p2, :cond_35
const/high16 v1, 0x40
and-int/2addr v1, p3
if-eqz v1, :cond_22
check-cast p4, Lcom/glympse/android/api/GUserTicket;
invoke-interface {p1, p4}, Lcom/glympse/android/api/GGlympse;->viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;
move-result-object v1
iget-object v2, v0, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget v2, v0, Lcom/bbm/util/a/d;->c:I
add-int/lit8 v2, v2, -0x1
iput v2, v0, Lcom/bbm/util/a/d;->c:I
invoke-virtual {v0, v1}, Lcom/bbm/util/a/d;->a(Lcom/glympse/android/api/GTicket;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2, v1}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
:goto_22
:cond_22
iget v1, v0, Lcom/bbm/util/a/d;->c:I
if-nez v1, :cond_34
iget-boolean v1, v0, Lcom/bbm/util/a/d;->b:Z
if-eqz v1, :cond_34
iget-object v1, v0, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
iget-object v2, v0, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-virtual {v1, v2}, Lcom/bbm/o;->b(Lcom/glympse/android/api/GEventListener;)V
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/util/a/d;->b:Z
:cond_34
return-void
:cond_35
const/4 v1, 0x4
if-ne v1, p2, :cond_5d
and-int/lit8 v1, p3, 0x2
if-eqz v1, :cond_4b
check-cast p4, Lcom/glympse/android/api/GTicket;
iget-object v1, v0, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v1}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-virtual {v0, p4}, Lcom/bbm/util/a/d;->a(Lcom/glympse/android/api/GTicket;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p4}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
goto :goto_22
:cond_4b
and-int/lit8 v1, p3, 0x10
if-nez v1, :cond_53
and-int/lit16 v1, p3, 0x4000
if-eqz v1, :cond_22
:cond_53
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-virtual {v0, p4}, Lcom/bbm/util/a/d;->a(Lcom/glympse/android/api/GTicket;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p4}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
goto :goto_22
:cond_5d
const/4 v1, 0x2
if-ne v1, p2, :cond_22
and-int/lit8 v1, p3, 0x1
if-eqz v1, :cond_22
check-cast p4, Ljava/lang/String;
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v1
invoke-interface {v1, p4}, Lcom/glympse/android/api/GUserManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v1
iget-object v2, v0, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-virtual {v0, p4, v1}, Lcom/bbm/util/a/d;->a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
goto :goto_22
.end method