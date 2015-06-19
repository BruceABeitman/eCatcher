.class public final Lcom/spotify/mobile/android/spotlets/search/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/a/c;
.field private final a:Lcom/spotify/mobile/android/spotlets/search/a;
.field private final b:Lcom/spotify/mobile/android/ui/actions/a;
.field private final c:Lcom/spotify/mobile/android/spotlets/search/a/b;
.field private d:Z
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->b:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/a/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->c:Lcom/spotify/mobile/android/spotlets/search/a/b;
return-void
.end method
.method public static a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/a/a$1;->a:[I
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
:goto_d
return-object v0
:pswitch_e
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->A:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_11
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->y:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_14
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->x:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_17
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->z:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_1a
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->s:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_1d
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->t:Lcom/spotify/mobile/android/util/ViewUri$SubView;
goto :goto_d
:pswitch_data_20
.packed-switch 0x1
:pswitch_e
:pswitch_11
:pswitch_14
:pswitch_17
:pswitch_1a
:pswitch_1d
.end packed-switch
.end method
.method private a(Lcom/spotify/mobile/android/util/ClientEvent;)V
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->d:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->b:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->i()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v2
invoke-static {v0, v1, v2, p1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_1b
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->q:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aN:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v0, v1, v2, v2}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;I)V
.registers 8
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;)Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v1
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
if-eq v1, v0, :cond_2d
const/4 v0, 0x1
:goto_9
const-string v2, "unrecognized section!"
invoke-static {v0, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aD:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
const/4 v2, 0x0
int-to-long v3, p2
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-string v1, "query"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->m_()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
:cond_2d
const/4 v0, 0x0
goto :goto_9
.end method
.method public final a(Ljava/lang/String;I)V
.registers 8
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->q:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aM:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
const/4 v2, 0x0
int-to-long v3, p2
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-string v1, "name"
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final a(Ljava/lang/String;IILcom/spotify/mobile/android/spotlets/search/model/entity/b;)V
.registers 9
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->K:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {p4}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;
move-result-object v1
int-to-long v2, p3
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-static {p1, v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
const-string v1, "row"
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "query"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->m_()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "name"
invoke-interface {p4}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
instance-of v1, p4, Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;
if-eqz v1, :cond_45
const-string v1, "is_playing"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->o_()Lcom/spotify/mobile/android/spotlets/search/player/c;
move-result-object v2
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/player/c;->b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v2
iget-boolean v2, v2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->playing:Z
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_45
invoke-interface {p4}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->isMissingNode()Z
move-result v1
if-nez v1, :cond_58
const-string v1, "entityLoggingData"
invoke-interface {p4}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_58
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 6
invoke-virtual {p2}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aV:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
const/4 v2, 0x0
invoke-static {v0, v1, p1, v2}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final b()V
.registers 4
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->X:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->L:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v1, "query"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->e()Lcom/spotify/mobile/android/spotlets/search/view/d;
move-result-object v2
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/view/d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/a/a;->a(Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method public final c()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->d:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->e()Lcom/spotify/mobile/android/spotlets/search/view/d;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->c:Lcom/spotify/mobile/android/spotlets/search/a/b;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/d;->a(Lcom/spotify/mobile/android/spotlets/search/view/e;)V
return-void
.end method
.method public final d()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->d:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->e()Lcom/spotify/mobile/android/spotlets/search/view/d;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/a/a;->c:Lcom/spotify/mobile/android/spotlets/search/a/b;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/d;->b(Lcom/spotify/mobile/android/spotlets/search/view/e;)V
return-void
.end method