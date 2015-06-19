.class public Lcom/bbm/d/es;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/bbm/d/et;

.field public d:Lorg/json/JSONObject;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/et;->b:Lcom/bbm/d/et;

    iput-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/es;->i:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->j:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->k:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->l:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->m:Z

    iput-wide v2, p0, Lcom/bbm/d/es;->n:J

    iput-wide v2, p0, Lcom/bbm/d/es;->o:J

    iput-wide v2, p0, Lcom/bbm/d/es;->p:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/d/es;->t:Z

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/d/es;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/et;->b:Lcom/bbm/d/et;

    iput-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bbm/d/es;->i:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->j:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->k:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->l:Z

    iput-boolean v1, p0, Lcom/bbm/d/es;->m:Z

    iput-wide v2, p0, Lcom/bbm/d/es;->n:J

    iput-wide v2, p0, Lcom/bbm/d/es;->o:J

    iput-wide v2, p0, Lcom/bbm/d/es;->p:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/d/es;->t:Z

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    iget-object v0, p1, Lcom/bbm/d/es;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/es;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    iput-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    iget-object v0, p1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/bbm/d/es;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/es;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/es;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    iget-object v0, p1, Lcom/bbm/d/es;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/es;->i:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->i:Z

    iget-boolean v0, p1, Lcom/bbm/d/es;->j:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->j:Z

    iget-boolean v0, p1, Lcom/bbm/d/es;->k:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->k:Z

    iget-boolean v0, p1, Lcom/bbm/d/es;->l:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->l:Z

    iget-boolean v0, p1, Lcom/bbm/d/es;->m:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->m:Z

    iget-wide v0, p1, Lcom/bbm/d/es;->n:J

    iput-wide v0, p0, Lcom/bbm/d/es;->n:J

    iget-wide v0, p1, Lcom/bbm/d/es;->o:J

    iput-wide v0, p0, Lcom/bbm/d/es;->o:J

    iget-wide v0, p1, Lcom/bbm/d/es;->p:J

    iput-wide v0, p0, Lcom/bbm/d/es;->p:J

    iget-object v0, p1, Lcom/bbm/d/es;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/d/es;->r:Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    iget-object v0, p1, Lcom/bbm/d/es;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bbm/d/es;->t:Z

    iput-boolean v0, p0, Lcom/bbm/d/es;->t:Z

    iget-object v0, p1, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 9

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "channelUri"

    iget-object v2, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    const-string v0, "conversationUri"

    iget-object v2, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    const-string v0, "disableReason"

    iget-object v2, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    invoke-virtual {v2}, Lcom/bbm/d/et;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/et;->a(Ljava/lang/String;)Lcom/bbm/d/et;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v0, "draftMessage"

    iget-object v2, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    const-string v0, "externalId"

    iget-object v2, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    const-string v0, "initialParticipants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    const-string v0, "initialParticipants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_75

    move v0, v1

    :goto_63
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_75

    iget-object v3, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_75
    const-string v0, "invitor"

    iget-object v2, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    const-string v0, "isChannel"

    iget-boolean v2, p0, Lcom/bbm/d/es;->i:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->i:Z

    const-string v0, "isChannelOwner"

    iget-boolean v2, p0, Lcom/bbm/d/es;->j:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->j:Z

    const-string v0, "isConference"

    iget-boolean v2, p0, Lcom/bbm/d/es;->k:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->k:Z

    const-string v0, "isEnabled"

    iget-boolean v2, p0, Lcom/bbm/d/es;->l:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->l:Z

    const-string v0, "isProtected"

    iget-boolean v2, p0, Lcom/bbm/d/es;->m:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->m:Z

    const-string v0, "lastMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string v0, "lastMessage"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12e

    move-wide v2, v4

    :goto_c8
    iput-wide v2, p0, Lcom/bbm/d/es;->n:J

    :cond_ca
    const-string v0, "messageTimestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string v0, "messageTimestamp"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_133

    move-wide v2, v4

    :goto_e1
    iput-wide v2, p0, Lcom/bbm/d/es;->o:J

    :cond_e3
    const-string v0, "numMessages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const-string v0, "numMessages"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_138

    :goto_f9
    iput-wide v4, p0, Lcom/bbm/d/es;->p:J

    :cond_fb
    const-string v0, "ownerUri"

    iget-object v2, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    const-string v0, "participants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const-string v0, "participants"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_13d

    :goto_11c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_13d

    iget-object v2, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :cond_12e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_c8

    :cond_133
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_e1

    :cond_138
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_f9

    :cond_13d
    const-string v0, "subject"

    iget-object v1, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    const-string v0, "visible"

    iget-boolean v1, p0, Lcom/bbm/d/es;->t:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/d/es;->t:Z

    return-void
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/d/es;

    invoke-direct {v0, p0}, Lcom/bbm/d/es;-><init>(Lcom/bbm/d/es;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/d/es;

    iget-object v2, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/d/es;->a:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bbm/d/es;->b:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    if-nez v2, :cond_4d

    iget-object v2, p1, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    if-eqz v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    iget-object v3, p1, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    invoke-virtual {v2, v3}, Lcom/bbm/d/et;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    if-nez v2, :cond_63

    iget-object v2, p1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    if-eqz v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_63
    iget-object v2, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    if-nez v2, :cond_79

    iget-object v2, p1, Lcom/bbm/d/es;->e:Ljava/lang/String;

    if-eqz v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_79
    iget-object v2, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    move v0, v1

    goto :goto_4

    :cond_85
    iget-object v2, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    if-nez v2, :cond_90

    iget-object v2, p1, Lcom/bbm/d/es;->f:Ljava/lang/String;

    if-eqz v2, :cond_9d

    move v0, v1

    goto/16 :goto_4

    :cond_90
    iget-object v2, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    move v0, v1

    goto/16 :goto_4

    :cond_9d
    iget-object v2, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    if-nez v2, :cond_a8

    iget-object v2, p1, Lcom/bbm/d/es;->g:Ljava/util/List;

    if-eqz v2, :cond_b5

    move v0, v1

    goto/16 :goto_4

    :cond_a8
    iget-object v2, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/d/es;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    move v0, v1

    goto/16 :goto_4

    :cond_b5
    iget-object v2, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    if-nez v2, :cond_c0

    iget-object v2, p1, Lcom/bbm/d/es;->h:Ljava/lang/String;

    if-eqz v2, :cond_cd

    move v0, v1

    goto/16 :goto_4

    :cond_c0
    iget-object v2, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    move v0, v1

    goto/16 :goto_4

    :cond_cd
    iget-boolean v2, p0, Lcom/bbm/d/es;->i:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->i:Z

    if-eq v2, v3, :cond_d6

    move v0, v1

    goto/16 :goto_4

    :cond_d6
    iget-boolean v2, p0, Lcom/bbm/d/es;->j:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->j:Z

    if-eq v2, v3, :cond_df

    move v0, v1

    goto/16 :goto_4

    :cond_df
    iget-boolean v2, p0, Lcom/bbm/d/es;->k:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->k:Z

    if-eq v2, v3, :cond_e8

    move v0, v1

    goto/16 :goto_4

    :cond_e8
    iget-boolean v2, p0, Lcom/bbm/d/es;->l:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->l:Z

    if-eq v2, v3, :cond_f1

    move v0, v1

    goto/16 :goto_4

    :cond_f1
    iget-boolean v2, p0, Lcom/bbm/d/es;->m:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->m:Z

    if-eq v2, v3, :cond_fa

    move v0, v1

    goto/16 :goto_4

    :cond_fa
    iget-wide v2, p0, Lcom/bbm/d/es;->n:J

    iget-wide v4, p1, Lcom/bbm/d/es;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_105

    move v0, v1

    goto/16 :goto_4

    :cond_105
    iget-wide v2, p0, Lcom/bbm/d/es;->o:J

    iget-wide v4, p1, Lcom/bbm/d/es;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_110

    move v0, v1

    goto/16 :goto_4

    :cond_110
    iget-wide v2, p0, Lcom/bbm/d/es;->p:J

    iget-wide v4, p1, Lcom/bbm/d/es;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11b

    move v0, v1

    goto/16 :goto_4

    :cond_11b
    iget-object v2, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    if-nez v2, :cond_126

    iget-object v2, p1, Lcom/bbm/d/es;->q:Ljava/lang/String;

    if-eqz v2, :cond_133

    move v0, v1

    goto/16 :goto_4

    :cond_126
    iget-object v2, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_133

    move v0, v1

    goto/16 :goto_4

    :cond_133
    iget-object v2, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-nez v2, :cond_13e

    iget-object v2, p1, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v2, :cond_14b

    move v0, v1

    goto/16 :goto_4

    :cond_13e
    iget-object v2, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    iget-object v3, p1, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14b

    move v0, v1

    goto/16 :goto_4

    :cond_14b
    iget-object v2, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    if-nez v2, :cond_156

    iget-object v2, p1, Lcom/bbm/d/es;->s:Ljava/lang/String;

    if-eqz v2, :cond_163

    move v0, v1

    goto/16 :goto_4

    :cond_156
    iget-object v2, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/es;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_163

    move v0, v1

    goto/16 :goto_4

    :cond_163
    iget-boolean v2, p0, Lcom/bbm/d/es;->t:Z

    iget-boolean v3, p1, Lcom/bbm/d/es;->t:Z

    if-eq v2, v3, :cond_16c

    move v0, v1

    goto/16 :goto_4

    :cond_16c
    iget-object v2, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 7

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    if-nez v0, :cond_a5

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    if-nez v0, :cond_ad

    move v0, v1

    :goto_13
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    if-nez v0, :cond_b5

    move v0, v1

    :goto_1b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_bd

    move v0, v1

    :goto_23
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    if-nez v0, :cond_c5

    move v0, v1

    :goto_2b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    if-nez v0, :cond_cd

    move v0, v1

    :goto_33
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    if-nez v0, :cond_d5

    move v0, v1

    :goto_3b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    if-nez v0, :cond_dd

    move v0, v1

    :goto_43
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/es;->i:Z

    if-eqz v0, :cond_e5

    move v0, v2

    :goto_4b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/es;->j:Z

    if-eqz v0, :cond_e8

    move v0, v2

    :goto_53
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/es;->k:Z

    if-eqz v0, :cond_eb

    move v0, v2

    :goto_5b
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/es;->l:Z

    if-eqz v0, :cond_ee

    move v0, v2

    :goto_63
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/d/es;->m:Z

    if-eqz v0, :cond_f1

    move v0, v2

    :goto_6b
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/es;->n:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/es;->o:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/d/es;->p:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    if-nez v0, :cond_f4

    move v0, v1

    :goto_85
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-nez v0, :cond_fb

    move v0, v1

    :goto_8d
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    if-nez v0, :cond_102

    move v0, v1

    :goto_95
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/d/es;->t:Z

    if-eqz v4, :cond_109

    :goto_9c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    if-nez v2, :cond_10b

    :goto_a3
    add-int/2addr v0, v1

    return v0

    :cond_a5
    iget-object v0, p0, Lcom/bbm/d/es;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_ad
    iget-object v0, p0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_b5
    iget-object v0, p0, Lcom/bbm/d/es;->c:Lcom/bbm/d/et;

    invoke-virtual {v0}, Lcom/bbm/d/et;->hashCode()I

    move-result v0

    goto/16 :goto_1b

    :cond_bd
    iget-object v0, p0, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I

    move-result v0

    goto/16 :goto_23

    :cond_c5
    iget-object v0, p0, Lcom/bbm/d/es;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2b

    :cond_cd
    iget-object v0, p0, Lcom/bbm/d/es;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_33

    :cond_d5
    iget-object v0, p0, Lcom/bbm/d/es;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto/16 :goto_3b

    :cond_dd
    iget-object v0, p0, Lcom/bbm/d/es;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_43

    :cond_e5
    move v0, v3

    goto/16 :goto_4b

    :cond_e8
    move v0, v3

    goto/16 :goto_53

    :cond_eb
    move v0, v3

    goto/16 :goto_5b

    :cond_ee
    move v0, v3

    goto/16 :goto_63

    :cond_f1
    move v0, v3

    goto/16 :goto_6b

    :cond_f4
    iget-object v0, p0, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_85

    :cond_fb
    iget-object v0, p0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_8d

    :cond_102
    iget-object v0, p0, Lcom/bbm/d/es;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_95

    :cond_109
    move v2, v3

    goto :goto_9c

    :cond_10b
    iget-object v1, p0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v1

    goto :goto_a3
.end method
