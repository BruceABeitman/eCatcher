.class public final Lcom/bbm/ui/activities/eu;
.super Ljava/lang/Object;
.source "ChatListItem.java"
.field public final a:Lcom/bbm/d/es;
.field public final b:Lcom/bbm/g/q;
.field public final c:Lcom/bbm/d/ec;
.field public final d:Z
.field public e:Ljava/lang/Boolean;
.method public constructor <init>(Lcom/bbm/d/es;Lcom/bbm/d/ec;Z)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
iput-object p1, p0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iput-object p2, p0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;
iput-boolean p3, p0, Lcom/bbm/ui/activities/eu;->d:Z
return-void
.end method
.method public constructor <init>(Lcom/bbm/d/es;Z)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
iput-object p1, p0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
iput-object v2, p0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iput-object v2, p0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;
iput-boolean p2, p0, Lcom/bbm/ui/activities/eu;->d:Z
return-void
.end method
.method public constructor <init>(Lcom/bbm/g/q;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
iput-object p1, p0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
iput-object v2, p0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iput-object v2, p0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;
iput-boolean v1, p0, Lcom/bbm/ui/activities/eu;->d:Z
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;
goto :goto_c
.end method
.method public final b()J
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iget-wide v0, v0, Lcom/bbm/g/q;->h:J
:goto_c
return-wide v0
:cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-wide v0, v0, Lcom/bbm/d/es;->o:J
goto :goto_c
.end method