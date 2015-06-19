.class public final Lcom/instagram/f/a/b/a;
.super Ljava/lang/Object;
.source "InboxResponse.java"
.field private a:Ljava/util/List;
.field private b:Ljava/util/Map;
.field private c:Lcom/instagram/realtimeclient/RealtimePatchRange;
.field private d:Lcom/instagram/f/b/a;
.field private e:Lcom/instagram/feed/f/a;
.field private f:Lcom/instagram/realtimeclient/RealtimeSubscription;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/f/b/a;
invoke-direct {v0}, Lcom/instagram/f/b/a;-><init>()V
iput-object v0, p0, Lcom/instagram/f/a/b/a;->d:Lcom/instagram/f/b/a;
invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/f/a/b/a;->e:Lcom/instagram/feed/f/a;
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimeSubscription;
.registers 4
new-instance v0, Lcom/instagram/realtimeclient/RealtimeSubscription;
invoke-direct {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_6b
:cond_d
:goto_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_6b
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v2, "url"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->setURL(Ljava/lang/String;)V
goto :goto_d
:cond_2c
const-string v2, "topic"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->setTopic(Ljava/lang/String;)V
goto :goto_d
:cond_3f
const-string v2, "sequence"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_52
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->setSequence(Ljava/lang/String;)V
goto :goto_d
:cond_52
const-string v2, "auth"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_65
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/realtimeclient/RealtimeSubscription;->setAuthToken(Ljava/lang/String;)V
goto :goto_d
:cond_65
if-eqz v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_d
:cond_6b
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeSubscription;->isValid()Z
move-result v1
if-eqz v1, :cond_72
:goto_71
return-object v0
:cond_72
const/4 v0, 0x0
goto :goto_71
.end method
.method public static b(Lcom/fasterxml/jackson/a/l;)Ljava/util/Map;
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v1, v2, :cond_4c
:cond_d
:goto_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_4c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
if-ne v2, v3, :cond_48
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v3
new-instance v4, Lcom/instagram/realtimeclient/RealtimePatchTuple;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
invoke-direct {v4, v2, v3}, Lcom/instagram/realtimeclient/RealtimePatchTuple;-><init>(ZLjava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-ne v2, v3, :cond_d
invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
:cond_48
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_d
:cond_4c
return-object v0
.end method
.method public static c(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/realtimeclient/RealtimePatchRange;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/instagram/realtimeclient/RealtimePatchRange;
invoke-direct {v2, v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
.end method
.method public final a()Lcom/instagram/feed/f/a;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->e:Lcom/instagram/feed/f/a;
return-object v0
.end method
.method public final a(Lcom/instagram/f/b/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/a/b/a;->d:Lcom/instagram/f/b/a;
return-void
.end method
.method public final a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/a/b/a;->c:Lcom/instagram/realtimeclient/RealtimePatchRange;
return-void
.end method
.method public final a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/a/b/a;->f:Lcom/instagram/realtimeclient/RealtimeSubscription;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_b
iget-object v0, p0, Lcom/instagram/f/a/b/a;->e:Lcom/instagram/feed/f/a;
sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/instagram/f/a/b/a;->e:Lcom/instagram/feed/f/a;
sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;
invoke-virtual {v0, v1, p1}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V
goto :goto_a
.end method
.method public final a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/a/b/a;->a:Ljava/util/List;
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/instagram/f/a/b/a;->b:Ljava/util/Map;
return-void
.end method
.method public final b()Lcom/instagram/f/b/a;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->d:Lcom/instagram/f/b/a;
return-object v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->a:Ljava/util/List;
return-object v0
.end method
.method public final d()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->b:Ljava/util/Map;
return-object v0
.end method
.method public final e()Lcom/instagram/realtimeclient/RealtimePatchRange;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->c:Lcom/instagram/realtimeclient/RealtimePatchRange;
return-object v0
.end method
.method public final f()Lcom/instagram/realtimeclient/RealtimeSubscription;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/b/a;->f:Lcom/instagram/realtimeclient/RealtimeSubscription;
return-object v0
.end method