.class public Lcom/bbm/d/ec;
.super Ljava/lang/Object;
.source "Channel.java"
.implements Lcom/bbm/d/a/a;
.field public A:Z
.field public B:Lcom/bbm/d/ed;
.field public C:Z
.field public D:Ljava/util/List;
.field public E:Z
.field public F:Ljava/lang/String;
.field public G:Ljava/lang/String;
.field public H:Ljava/lang/String;
.field public I:Ljava/lang/String;
.field public J:J
.field public K:Z
.field public L:Z
.field public M:Lcom/bbm/d/ee;
.field public N:Ljava/lang/String;
.field public O:Ljava/lang/String;
.field public P:Ljava/lang/String;
.field public Q:Ljava/lang/String;
.field public R:Lcom/bbm/util/bh;
.field public a:Ljava/lang/String;
.field public b:Z
.field public c:Ljava/lang/String;
.field public d:Z
.field public e:Z
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field public j:Ljava/lang/String;
.field public k:Ljava/lang/String;
.field public l:Z
.field public m:Z
.field public n:Z
.field public o:Ljava/lang/String;
.field public p:Ljava/util/List;
.field public q:Z
.field public r:Z
.field public s:Z
.field public t:Z
.field public u:Z
.field public v:Z
.field public w:Z
.field public x:Ljava/lang/String;
.field public y:Lorg/json/JSONObject;
.field public z:J
.method public constructor <init>()V
.registers 6
const-wide/16 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->b:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->d:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->e:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->l:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->m:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->n:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
iput-boolean v1, p0, Lcom/bbm/d/ec;->q:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->r:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->s:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->t:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->u:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->v:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->w:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
iput-wide v3, p0, Lcom/bbm/d/ec;->z:J
iput-boolean v1, p0, Lcom/bbm/d/ec;->A:Z
sget-object v0, Lcom/bbm/d/ed;->f:Lcom/bbm/d/ed;
iput-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
iput-boolean v2, p0, Lcom/bbm/d/ec;->C:Z
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
iput-boolean v2, p0, Lcom/bbm/d/ec;->E:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
iput-wide v3, p0, Lcom/bbm/d/ec;->J:J
iput-boolean v1, p0, Lcom/bbm/d/ec;->K:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->L:Z
sget-object v0, Lcom/bbm/d/ee;->e:Lcom/bbm/d/ee;
iput-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/ec;)V
.registers 7
const-wide/16 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->b:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->d:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->e:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/d/ec;->l:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->m:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->n:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
iput-boolean v1, p0, Lcom/bbm/d/ec;->q:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->r:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->s:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->t:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->u:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->v:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->w:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
iput-wide v3, p0, Lcom/bbm/d/ec;->z:J
iput-boolean v1, p0, Lcom/bbm/d/ec;->A:Z
sget-object v0, Lcom/bbm/d/ed;->f:Lcom/bbm/d/ed;
iput-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
iput-boolean v2, p0, Lcom/bbm/d/ec;->C:Z
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
iput-boolean v2, p0, Lcom/bbm/d/ec;->E:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
iput-wide v3, p0, Lcom/bbm/d/ec;->J:J
iput-boolean v1, p0, Lcom/bbm/d/ec;->K:Z
iput-boolean v1, p0, Lcom/bbm/d/ec;->L:Z
sget-object v0, Lcom/bbm/d/ee;->e:Lcom/bbm/d/ee;
iput-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/ec;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/ec;->b:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->b:Z
iget-object v0, p1, Lcom/bbm/d/ec;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/ec;->d:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->d:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->e:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->e:Z
iget-object v0, p1, Lcom/bbm/d/ec;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->i:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/ec;->l:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->l:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->m:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->m:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->n:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->n:Z
iget-object v0, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->p:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
iget-boolean v0, p1, Lcom/bbm/d/ec;->q:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->q:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->r:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->r:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->s:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->s:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->t:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->t:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->u:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->u:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->v:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->v:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->w:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->w:Z
iget-object v0, p1, Lcom/bbm/d/ec;->x:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
iget-wide v0, p1, Lcom/bbm/d/ec;->z:J
iput-wide v0, p0, Lcom/bbm/d/ec;->z:J
iget-boolean v0, p1, Lcom/bbm/d/ec;->A:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->A:Z
iget-object v0, p1, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
iput-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
iget-boolean v0, p1, Lcom/bbm/d/ec;->C:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->C:Z
iget-object v0, p1, Lcom/bbm/d/ec;->D:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
iget-boolean v0, p1, Lcom/bbm/d/ec;->E:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->E:Z
iget-object v0, p1, Lcom/bbm/d/ec;->F:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->G:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->H:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->I:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
iget-wide v0, p1, Lcom/bbm/d/ec;->J:J
iput-wide v0, p0, Lcom/bbm/d/ec;->J:J
iget-boolean v0, p1, Lcom/bbm/d/ec;->K:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->K:Z
iget-boolean v0, p1, Lcom/bbm/d/ec;->L:Z
iput-boolean v0, p0, Lcom/bbm/d/ec;->L:Z
iget-object v0, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
iput-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
iget-object v0, p1, Lcom/bbm/d/ec;->N:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->P:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 7
const/4 v1, 0x0
const-string v0, "additionalInfo"
iget-object v2, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
const-string v0, "badge"
iget-boolean v2, p0, Lcom/bbm/d/ec;->b:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->b:Z
const-string v0, "categoryId"
iget-object v2, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
const-string v0, "chatEnabled"
iget-boolean v2, p0, Lcom/bbm/d/ec;->d:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->d:Z
const-string v0, "commentsEnabled"
iget-boolean v2, p0, Lcom/bbm/d/ec;->e:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->e:Z
const-string v0, "contactEmailAddress"
iget-object v2, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
const-string v0, "creationTime"
iget-object v2, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
const-string v0, "customStatus"
iget-object v2, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
const-string v0, "defaultInvitationMessage"
iget-object v2, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
const-string v0, "description"
iget-object v2, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
const-string v0, "displayName"
iget-object v2, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
const-string v0, "flagged"
iget-boolean v2, p0, Lcom/bbm/d/ec;->l:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->l:Z
const-string v0, "hasNewPost"
iget-boolean v2, p0, Lcom/bbm/d/ec;->m:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->m:Z
const-string v0, "hideUpdate"
iget-boolean v2, p0, Lcom/bbm/d/ec;->n:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->n:Z
const-string v0, "imagePath"
iget-object v2, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
const-string v0, "images"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
const-string v0, "images"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_c1
move v0, v1
:goto_af
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_c1
iget-object v3, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_af
:cond_c1
const-string v0, "isBlocked"
iget-boolean v2, p0, Lcom/bbm/d/ec;->q:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->q:Z
const-string v0, "isFavourite"
iget-boolean v2, p0, Lcom/bbm/d/ec;->r:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->r:Z
const-string v0, "isNewPushedChannel"
iget-boolean v2, p0, Lcom/bbm/d/ec;->s:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->s:Z
const-string v0, "isOwner"
iget-boolean v2, p0, Lcom/bbm/d/ec;->t:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->t:Z
const-string v0, "isPrivate"
iget-boolean v2, p0, Lcom/bbm/d/ec;->u:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->u:Z
const-string v0, "isRestricted"
iget-boolean v2, p0, Lcom/bbm/d/ec;->v:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->v:Z
const-string v0, "isSubscriber"
iget-boolean v2, p0, Lcom/bbm/d/ec;->w:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->w:Z
const-string v0, "lastModificationTime"
iget-object v2, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
const-string v0, "location"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v2, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
invoke-static {v0, v2}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
const-string v0, "minAge"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_132
const-string v0, "minAge"
const-wide/16 v2, 0x0
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v2
double-to-long v2, v2
iput-wide v2, p0, Lcom/bbm/d/ec;->z:J
:cond_132
const-string v0, "moderationOn"
iget-boolean v2, p0, Lcom/bbm/d/ec;->A:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->A:Z
const-string v0, "mostRecentError"
iget-object v2, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
invoke-virtual {v2}, Lcom/bbm/d/ed;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/ed;->a(Ljava/lang/String;)Lcom/bbm/d/ed;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
const-string v0, "notificationsEnabled"
iget-boolean v2, p0, Lcom/bbm/d/ec;->C:Z
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->C:Z
const-string v0, "officeHours"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_181
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
const-string v0, "officeHours"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_181
:goto_16f
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v1, v2, :cond_181
iget-object v2, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_16f
:cond_181
const-string v0, "officeHoursAlwaysAvailable"
iget-boolean v1, p0, Lcom/bbm/d/ec;->E:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->E:Z
const-string v0, "officeHoursTimezone"
iget-object v1, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
const-string v0, "ownerUri"
iget-object v1, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
const-string v0, "phoneNumber"
iget-object v1, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
const-string v0, "pin"
iget-object v1, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
const-string v0, "privateChannelLimit"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1cd
const-string v0, "privateChannelLimit"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_21c
const-wide/16 v0, 0x0
:goto_1cb
iput-wide v0, p0, Lcom/bbm/d/ec;->J:J
:cond_1cd
const-string v0, "searchable"
iget-boolean v1, p0, Lcom/bbm/d/ec;->K:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->K:Z
const-string v0, "showMap"
iget-boolean v1, p0, Lcom/bbm/d/ec;->L:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/d/ec;->L:Z
const-string v0, "status"
iget-object v1, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
invoke-virtual {v1}, Lcom/bbm/d/ee;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/ee;->a(Ljava/lang/String;)Lcom/bbm/d/ee;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
const-string v0, "subCategoryId"
iget-object v1, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
const-string v0, "uri"
iget-object v1, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
const-string v0, "webAddress"
iget-object v1, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
const-string v0, "welcomeMessage"
iget-object v1, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
return-void
:cond_21c
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_1cb
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/ec;
invoke-direct {v0, p0}, Lcom/bbm/d/ec;-><init>(Lcom/bbm/d/ec;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
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
check-cast p1, Lcom/bbm/d/ec;
iget-object v2, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/ec;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-boolean v2, p0, Lcom/bbm/d/ec;->b:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->b:Z
if-eq v2, v3, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-object v2, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
if-nez v2, :cond_3f
iget-object v2, p1, Lcom/bbm/d/ec;->c:Ljava/lang/String;
if-eqz v2, :cond_4b
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-boolean v2, p0, Lcom/bbm/d/ec;->d:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->d:Z
if-eq v2, v3, :cond_53
move v0, v1
goto :goto_4
:cond_53
iget-boolean v2, p0, Lcom/bbm/d/ec;->e:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->e:Z
if-eq v2, v3, :cond_5b
move v0, v1
goto :goto_4
:cond_5b
iget-object v2, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
if-nez v2, :cond_65
iget-object v2, p1, Lcom/bbm/d/ec;->f:Ljava/lang/String;
if-eqz v2, :cond_71
move v0, v1
goto :goto_4
:cond_65
iget-object v2, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_71
move v0, v1
goto :goto_4
:cond_71
iget-object v2, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
if-nez v2, :cond_7b
iget-object v2, p1, Lcom/bbm/d/ec;->g:Ljava/lang/String;
if-eqz v2, :cond_88
move v0, v1
goto :goto_4
:cond_7b
iget-object v2, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_88
move v0, v1
goto/16 :goto_4
:cond_88
iget-object v2, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
if-nez v2, :cond_93
iget-object v2, p1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
if-eqz v2, :cond_a0
move v0, v1
goto/16 :goto_4
:cond_93
iget-object v2, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_a0
move v0, v1
goto/16 :goto_4
:cond_a0
iget-object v2, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
if-nez v2, :cond_ab
iget-object v2, p1, Lcom/bbm/d/ec;->i:Ljava/lang/String;
if-eqz v2, :cond_b8
move v0, v1
goto/16 :goto_4
:cond_ab
iget-object v2, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b8
move v0, v1
goto/16 :goto_4
:cond_b8
iget-object v2, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
if-nez v2, :cond_c3
iget-object v2, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
if-eqz v2, :cond_d0
move v0, v1
goto/16 :goto_4
:cond_c3
iget-object v2, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d0
move v0, v1
goto/16 :goto_4
:cond_d0
iget-object v2, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
if-nez v2, :cond_db
iget-object v2, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
if-eqz v2, :cond_e8
move v0, v1
goto/16 :goto_4
:cond_db
iget-object v2, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_e8
move v0, v1
goto/16 :goto_4
:cond_e8
iget-boolean v2, p0, Lcom/bbm/d/ec;->l:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->l:Z
if-eq v2, v3, :cond_f1
move v0, v1
goto/16 :goto_4
:cond_f1
iget-boolean v2, p0, Lcom/bbm/d/ec;->m:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->m:Z
if-eq v2, v3, :cond_fa
move v0, v1
goto/16 :goto_4
:cond_fa
iget-boolean v2, p0, Lcom/bbm/d/ec;->n:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->n:Z
if-eq v2, v3, :cond_103
move v0, v1
goto/16 :goto_4
:cond_103
iget-object v2, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
if-nez v2, :cond_10e
iget-object v2, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
if-eqz v2, :cond_11b
move v0, v1
goto/16 :goto_4
:cond_10e
iget-object v2, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_11b
move v0, v1
goto/16 :goto_4
:cond_11b
iget-object v2, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
if-nez v2, :cond_126
iget-object v2, p1, Lcom/bbm/d/ec;->p:Ljava/util/List;
if-eqz v2, :cond_133
move v0, v1
goto/16 :goto_4
:cond_126
iget-object v2, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/d/ec;->p:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_133
move v0, v1
goto/16 :goto_4
:cond_133
iget-boolean v2, p0, Lcom/bbm/d/ec;->q:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->q:Z
if-eq v2, v3, :cond_13c
move v0, v1
goto/16 :goto_4
:cond_13c
iget-boolean v2, p0, Lcom/bbm/d/ec;->r:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->r:Z
if-eq v2, v3, :cond_145
move v0, v1
goto/16 :goto_4
:cond_145
iget-boolean v2, p0, Lcom/bbm/d/ec;->s:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->s:Z
if-eq v2, v3, :cond_14e
move v0, v1
goto/16 :goto_4
:cond_14e
iget-boolean v2, p0, Lcom/bbm/d/ec;->t:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->t:Z
if-eq v2, v3, :cond_157
move v0, v1
goto/16 :goto_4
:cond_157
iget-boolean v2, p0, Lcom/bbm/d/ec;->u:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->u:Z
if-eq v2, v3, :cond_160
move v0, v1
goto/16 :goto_4
:cond_160
iget-boolean v2, p0, Lcom/bbm/d/ec;->v:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->v:Z
if-eq v2, v3, :cond_169
move v0, v1
goto/16 :goto_4
:cond_169
iget-boolean v2, p0, Lcom/bbm/d/ec;->w:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->w:Z
if-eq v2, v3, :cond_172
move v0, v1
goto/16 :goto_4
:cond_172
iget-object v2, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
if-nez v2, :cond_17d
iget-object v2, p1, Lcom/bbm/d/ec;->x:Ljava/lang/String;
if-eqz v2, :cond_18a
move v0, v1
goto/16 :goto_4
:cond_17d
iget-object v2, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->x:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_18a
move v0, v1
goto/16 :goto_4
:cond_18a
iget-object v2, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
if-nez v2, :cond_195
iget-object v2, p1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
if-eqz v2, :cond_1a2
move v0, v1
goto/16 :goto_4
:cond_195
iget-object v2, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_1a2
move v0, v1
goto/16 :goto_4
:cond_1a2
iget-wide v2, p0, Lcom/bbm/d/ec;->z:J
iget-wide v4, p1, Lcom/bbm/d/ec;->z:J
cmp-long v2, v2, v4
if-eqz v2, :cond_1ad
move v0, v1
goto/16 :goto_4
:cond_1ad
iget-boolean v2, p0, Lcom/bbm/d/ec;->A:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->A:Z
if-eq v2, v3, :cond_1b6
move v0, v1
goto/16 :goto_4
:cond_1b6
iget-object v2, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
if-nez v2, :cond_1c1
iget-object v2, p1, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
if-eqz v2, :cond_1ce
move v0, v1
goto/16 :goto_4
:cond_1c1
iget-object v2, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
iget-object v3, p1, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
invoke-virtual {v2, v3}, Lcom/bbm/d/ed;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1ce
move v0, v1
goto/16 :goto_4
:cond_1ce
iget-boolean v2, p0, Lcom/bbm/d/ec;->C:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->C:Z
if-eq v2, v3, :cond_1d7
move v0, v1
goto/16 :goto_4
:cond_1d7
iget-object v2, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
if-nez v2, :cond_1e2
iget-object v2, p1, Lcom/bbm/d/ec;->D:Ljava/util/List;
if-eqz v2, :cond_1ef
move v0, v1
goto/16 :goto_4
:cond_1e2
iget-object v2, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
iget-object v3, p1, Lcom/bbm/d/ec;->D:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1ef
move v0, v1
goto/16 :goto_4
:cond_1ef
iget-boolean v2, p0, Lcom/bbm/d/ec;->E:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->E:Z
if-eq v2, v3, :cond_1f8
move v0, v1
goto/16 :goto_4
:cond_1f8
iget-object v2, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
if-nez v2, :cond_203
iget-object v2, p1, Lcom/bbm/d/ec;->F:Ljava/lang/String;
if-eqz v2, :cond_210
move v0, v1
goto/16 :goto_4
:cond_203
iget-object v2, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_210
move v0, v1
goto/16 :goto_4
:cond_210
iget-object v2, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
if-nez v2, :cond_21b
iget-object v2, p1, Lcom/bbm/d/ec;->G:Ljava/lang/String;
if-eqz v2, :cond_228
move v0, v1
goto/16 :goto_4
:cond_21b
iget-object v2, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->G:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_228
move v0, v1
goto/16 :goto_4
:cond_228
iget-object v2, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
if-nez v2, :cond_233
iget-object v2, p1, Lcom/bbm/d/ec;->H:Ljava/lang/String;
if-eqz v2, :cond_240
move v0, v1
goto/16 :goto_4
:cond_233
iget-object v2, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_240
move v0, v1
goto/16 :goto_4
:cond_240
iget-object v2, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
if-nez v2, :cond_24b
iget-object v2, p1, Lcom/bbm/d/ec;->I:Ljava/lang/String;
if-eqz v2, :cond_258
move v0, v1
goto/16 :goto_4
:cond_24b
iget-object v2, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_258
move v0, v1
goto/16 :goto_4
:cond_258
iget-wide v2, p0, Lcom/bbm/d/ec;->J:J
iget-wide v4, p1, Lcom/bbm/d/ec;->J:J
cmp-long v2, v2, v4
if-eqz v2, :cond_263
move v0, v1
goto/16 :goto_4
:cond_263
iget-boolean v2, p0, Lcom/bbm/d/ec;->K:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->K:Z
if-eq v2, v3, :cond_26c
move v0, v1
goto/16 :goto_4
:cond_26c
iget-boolean v2, p0, Lcom/bbm/d/ec;->L:Z
iget-boolean v3, p1, Lcom/bbm/d/ec;->L:Z
if-eq v2, v3, :cond_275
move v0, v1
goto/16 :goto_4
:cond_275
iget-object v2, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
if-nez v2, :cond_280
iget-object v2, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
if-eqz v2, :cond_28d
move v0, v1
goto/16 :goto_4
:cond_280
iget-object v2, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
iget-object v3, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
invoke-virtual {v2, v3}, Lcom/bbm/d/ee;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_28d
move v0, v1
goto/16 :goto_4
:cond_28d
iget-object v2, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
if-nez v2, :cond_298
iget-object v2, p1, Lcom/bbm/d/ec;->N:Ljava/lang/String;
if-eqz v2, :cond_2a5
move v0, v1
goto/16 :goto_4
:cond_298
iget-object v2, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->N:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2a5
move v0, v1
goto/16 :goto_4
:cond_2a5
iget-object v2, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
if-nez v2, :cond_2b0
iget-object v2, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
if-eqz v2, :cond_2bd
move v0, v1
goto/16 :goto_4
:cond_2b0
iget-object v2, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2bd
move v0, v1
goto/16 :goto_4
:cond_2bd
iget-object v2, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
if-nez v2, :cond_2c8
iget-object v2, p1, Lcom/bbm/d/ec;->P:Ljava/lang/String;
if-eqz v2, :cond_2d5
move v0, v1
goto/16 :goto_4
:cond_2c8
iget-object v2, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d5
move v0, v1
goto/16 :goto_4
:cond_2d5
iget-object v2, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
if-nez v2, :cond_2e0
iget-object v2, p1, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
if-eqz v2, :cond_2ed
move v0, v1
goto/16 :goto_4
:cond_2e0
iget-object v2, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2ed
move v0, v1
goto/16 :goto_4
:cond_2ed
iget-object v2, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
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
iget-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
if-nez v0, :cond_15f
move v0, v1
:goto_a
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->b:Z
if-eqz v0, :cond_167
move v0, v2
:goto_13
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
if-nez v0, :cond_16a
move v0, v1
:goto_1b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->d:Z
if-eqz v0, :cond_172
move v0, v2
:goto_23
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->e:Z
if-eqz v0, :cond_175
move v0, v2
:goto_2b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
if-nez v0, :cond_178
move v0, v1
:goto_33
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
if-nez v0, :cond_180
move v0, v1
:goto_3b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
if-nez v0, :cond_188
move v0, v1
:goto_43
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
if-nez v0, :cond_190
move v0, v1
:goto_4b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
if-nez v0, :cond_198
move v0, v1
:goto_53
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
if-nez v0, :cond_1a0
move v0, v1
:goto_5b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->l:Z
if-eqz v0, :cond_1a8
move v0, v2
:goto_63
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->m:Z
if-eqz v0, :cond_1ab
move v0, v2
:goto_6b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->n:Z
if-eqz v0, :cond_1ae
move v0, v2
:goto_73
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
if-nez v0, :cond_1b1
move v0, v1
:goto_7b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
if-nez v0, :cond_1b9
move v0, v1
:goto_83
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->q:Z
if-eqz v0, :cond_1c1
move v0, v2
:goto_8b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->r:Z
if-eqz v0, :cond_1c4
move v0, v2
:goto_93
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->s:Z
if-eqz v0, :cond_1c7
move v0, v2
:goto_9b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_1ca
move v0, v2
:goto_a3
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->u:Z
if-eqz v0, :cond_1cd
move v0, v2
:goto_ab
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->v:Z
if-eqz v0, :cond_1d0
move v0, v2
:goto_b3
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->w:Z
if-eqz v0, :cond_1d3
move v0, v2
:goto_bb
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
if-nez v0, :cond_1d6
move v0, v1
:goto_c3
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
if-nez v0, :cond_1de
move v0, v1
:goto_cb
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/bbm/d/ec;->z:J
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->A:Z
if-eqz v0, :cond_1e6
move v0, v2
:goto_d9
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
if-nez v0, :cond_1e9
move v0, v1
:goto_e1
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->C:Z
if-eqz v0, :cond_1f1
move v0, v2
:goto_e9
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
if-nez v0, :cond_1f4
move v0, v1
:goto_f1
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->E:Z
if-eqz v0, :cond_1fc
move v0, v2
:goto_f9
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
if-nez v0, :cond_1ff
move v0, v1
:goto_101
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
if-nez v0, :cond_207
move v0, v1
:goto_109
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
if-nez v0, :cond_20f
move v0, v1
:goto_111
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
if-nez v0, :cond_217
move v0, v1
:goto_119
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-wide v4, p0, Lcom/bbm/d/ec;->J:J
long-to-int v4, v4
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/d/ec;->K:Z
if-eqz v0, :cond_21f
move v0, v2
:goto_127
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-boolean v4, p0, Lcom/bbm/d/ec;->L:Z
if-eqz v4, :cond_222
:goto_12e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
if-nez v0, :cond_225
move v0, v1
:goto_136
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
if-nez v0, :cond_22d
move v0, v1
:goto_13e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
if-nez v0, :cond_235
move v0, v1
:goto_146
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
if-nez v0, :cond_23d
move v0, v1
:goto_14e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
if-nez v0, :cond_245
move v0, v1
:goto_156
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
if-nez v2, :cond_24d
:goto_15d
add-int/2addr v0, v1
return v0
:cond_15f
iget-object v0, p0, Lcom/bbm/d/ec;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_a
:cond_167
move v0, v3
goto/16 :goto_13
:cond_16a
iget-object v0, p0, Lcom/bbm/d/ec;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_1b
:cond_172
move v0, v3
goto/16 :goto_23
:cond_175
move v0, v3
goto/16 :goto_2b
:cond_178
iget-object v0, p0, Lcom/bbm/d/ec;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_33
:cond_180
iget-object v0, p0, Lcom/bbm/d/ec;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_3b
:cond_188
iget-object v0, p0, Lcom/bbm/d/ec;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_43
:cond_190
iget-object v0, p0, Lcom/bbm/d/ec;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_4b
:cond_198
iget-object v0, p0, Lcom/bbm/d/ec;->j:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_53
:cond_1a0
iget-object v0, p0, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_5b
:cond_1a8
move v0, v3
goto/16 :goto_63
:cond_1ab
move v0, v3
goto/16 :goto_6b
:cond_1ae
move v0, v3
goto/16 :goto_73
:cond_1b1
iget-object v0, p0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_7b
:cond_1b9
iget-object v0, p0, Lcom/bbm/d/ec;->p:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto/16 :goto_83
:cond_1c1
move v0, v3
goto/16 :goto_8b
:cond_1c4
move v0, v3
goto/16 :goto_93
:cond_1c7
move v0, v3
goto/16 :goto_9b
:cond_1ca
move v0, v3
goto/16 :goto_a3
:cond_1cd
move v0, v3
goto/16 :goto_ab
:cond_1d0
move v0, v3
goto/16 :goto_b3
:cond_1d3
move v0, v3
goto/16 :goto_bb
:cond_1d6
iget-object v0, p0, Lcom/bbm/d/ec;->x:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_c3
:cond_1de
iget-object v0, p0, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto/16 :goto_cb
:cond_1e6
move v0, v3
goto/16 :goto_d9
:cond_1e9
iget-object v0, p0, Lcom/bbm/d/ec;->B:Lcom/bbm/d/ed;
invoke-virtual {v0}, Lcom/bbm/d/ed;->hashCode()I
move-result v0
goto/16 :goto_e1
:cond_1f1
move v0, v3
goto/16 :goto_e9
:cond_1f4
iget-object v0, p0, Lcom/bbm/d/ec;->D:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->hashCode()I
move-result v0
goto/16 :goto_f1
:cond_1fc
move v0, v3
goto/16 :goto_f9
:cond_1ff
iget-object v0, p0, Lcom/bbm/d/ec;->F:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_101
:cond_207
iget-object v0, p0, Lcom/bbm/d/ec;->G:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_109
:cond_20f
iget-object v0, p0, Lcom/bbm/d/ec;->H:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_111
:cond_217
iget-object v0, p0, Lcom/bbm/d/ec;->I:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_119
:cond_21f
move v0, v3
goto/16 :goto_127
:cond_222
move v2, v3
goto/16 :goto_12e
:cond_225
iget-object v0, p0, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;
invoke-virtual {v0}, Lcom/bbm/d/ee;->hashCode()I
move-result v0
goto/16 :goto_136
:cond_22d
iget-object v0, p0, Lcom/bbm/d/ec;->N:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_13e
:cond_235
iget-object v0, p0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_146
:cond_23d
iget-object v0, p0, Lcom/bbm/d/ec;->P:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_14e
:cond_245
iget-object v0, p0, Lcom/bbm/d/ec;->Q:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto/16 :goto_156
:cond_24d
iget-object v1, p0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto/16 :goto_15d
.end method