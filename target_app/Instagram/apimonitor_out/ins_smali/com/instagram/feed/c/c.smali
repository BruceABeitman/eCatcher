.class public final Lcom/instagram/feed/c/c;
.super Ljava/lang/Object;
.source "InsightsEventBuilder.java"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/instagram/feed/g/a;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/Long;
.field private j:J
.field private k:I
.field private l:I
.field private m:I
.field private n:D
.field private o:Ljava/lang/Boolean;
.method constructor <init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
.registers 6
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/instagram/feed/c/c;->j:J
iput v2, p0, Lcom/instagram/feed/c/c;->k:I
iput v2, p0, Lcom/instagram/feed/c/c;->l:I
iput v2, p0, Lcom/instagram/feed/c/c;->m:I
const-wide/high16 v0, -0x4010
iput-wide v0, p0, Lcom/instagram/feed/c/c;->n:D
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/feed/c/c;->o:Ljava/lang/Boolean;
iput-object p1, p0, Lcom/instagram/feed/c/c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/feed/g/a;
return-void
.end method
.method static a(Lcom/instagram/user/c/c;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/instagram/feed/c/d;->a:[I
invoke-virtual {p0}, Lcom/instagram/user/c/c;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_2a
const-string v0, "InsightsEventBuilder"
const-string v1, "Follow status: %s not handled. Using \'unknown\' instead."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p0, v2, v3
invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "unknown"
:goto_1a
return-object v0
:pswitch_1b
const-string v0, "unknown"
goto :goto_1a
:pswitch_1e
const-string v0, "fetching"
goto :goto_1a
:pswitch_21
const-string v0, "not_following"
goto :goto_1a
:pswitch_24
const-string v0, "following"
goto :goto_1a
:pswitch_27
const-string v0, "requested"
goto :goto_1a
:pswitch_data_2a
.packed-switch 0x1
:pswitch_1b
:pswitch_1e
:pswitch_21
:pswitch_24
:pswitch_27
.end packed-switch
.end method
.method public final a()Lcom/instagram/common/analytics/b;
.registers 8
const/4 v6, -0x1
new-instance v1, Lcom/instagram/common/analytics/b;
iget-object v0, p0, Lcom/instagram/feed/c/c;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/feed/g/a;
invoke-direct {v1, v0, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
iget-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/lang/String;
if-eqz v0, :cond_15
const-string v0, "m_pk"
iget-object v2, p0, Lcom/instagram/feed/c/c;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_15
iget-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/lang/String;
if-eqz v0, :cond_20
const-string v0, "a_pk"
iget-object v2, p0, Lcom/instagram/feed/c/c;->d:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_20
iget-object v0, p0, Lcom/instagram/feed/c/c;->i:Ljava/lang/Long;
if-eqz v0, :cond_2f
const-string v0, "m_ts"
iget-object v2, p0, Lcom/instagram/feed/c/c;->i:Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
:cond_2f
iget v0, p0, Lcom/instagram/feed/c/c;->k:I
if-eq v0, v6, :cond_3a
const-string v0, "m_t"
iget v2, p0, Lcom/instagram/feed/c/c;->k:I
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
:cond_3a
iget-object v0, p0, Lcom/instagram/feed/c/c;->e:Ljava/lang/String;
if-eqz v0, :cond_45
const-string v0, "tracking_token"
iget-object v2, p0, Lcom/instagram/feed/c/c;->e:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_45
iget-object v0, p0, Lcom/instagram/feed/c/c;->f:Ljava/lang/String;
if-eqz v0, :cond_50
const-string v0, "source_of_action"
iget-object v2, p0, Lcom/instagram/feed/c/c;->f:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_50
iget-object v0, p0, Lcom/instagram/feed/c/c;->g:Ljava/lang/String;
if-eqz v0, :cond_5b
const-string v0, "follow_status"
iget-object v2, p0, Lcom/instagram/feed/c/c;->g:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_5b
iget v0, p0, Lcom/instagram/feed/c/c;->l:I
if-eq v0, v6, :cond_66
const-string v0, "m_ix"
iget v2, p0, Lcom/instagram/feed/c/c;->l:I
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
:cond_66
iget-wide v2, p0, Lcom/instagram/feed/c/c;->j:J
const-wide/16 v4, -0x1
cmp-long v0, v2, v4
if-eqz v0, :cond_75
const-string v0, "timespent"
iget-wide v2, p0, Lcom/instagram/feed/c/c;->j:J
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
:cond_75
iget-object v0, p0, Lcom/instagram/feed/c/c;->h:Ljava/lang/String;
if-eqz v0, :cond_80
const-string v0, "response"
iget-object v2, p0, Lcom/instagram/feed/c/c;->h:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_80
iget v0, p0, Lcom/instagram/feed/c/c;->m:I
if-eq v0, v6, :cond_8b
const-string v0, "time"
iget v2, p0, Lcom/instagram/feed/c/c;->m:I
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
:cond_8b
iget-wide v2, p0, Lcom/instagram/feed/c/c;->n:D
const-wide/high16 v4, -0x4010
cmpl-double v0, v2, v4
if-eqz v0, :cond_9a
const-string v0, "timeAsPercent"
iget-wide v2, p0, Lcom/instagram/feed/c/c;->n:D
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
:cond_9a
iget v0, p0, Lcom/instagram/feed/c/c;->k:I
sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
invoke-virtual {v2}, Lcom/instagram/model/a/a;->a()I
move-result v2
if-ne v0, v2, :cond_b7
iget-object v0, p0, Lcom/instagram/feed/c/c;->o:Ljava/lang/Boolean;
if-eqz v0, :cond_b7
const-string v2, "audio_enabled"
iget-object v0, p0, Lcom/instagram/feed/c/c;->o:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_c5
const-string v0, "1"
:goto_b4
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_b7
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_c4
const-string v0, "production_build"
const-string v2, "0"
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_c4
return-object v1
:cond_c5
const-string v0, "0"
goto :goto_b4
.end method
.method public final a(I)Lcom/instagram/feed/c/c;
.registers 2
iput p1, p0, Lcom/instagram/feed/c/c;->l:I
return-object p0
.end method
.method public final a(J)Lcom/instagram/feed/c/c;
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/c/c;->j:J
return-object p0
.end method
.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/c;
.registers 3
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/c;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/c;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->l()Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/c;->i:Ljava/lang/Long;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/model/a/a;->a()I
move-result v0
iput v0, p0, Lcom/instagram/feed/c/c;->k:I
iget-object v0, p0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/feed/g/a;
invoke-interface {v0}, Lcom/instagram/feed/g/a;->i_()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/c;->f:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
invoke-static {v0}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/user/c/c;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/c;->g:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/feed/c/c;->b:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v0
:goto_42
iput-object v0, p0, Lcom/instagram/feed/c/c;->e:Ljava/lang/String;
return-object p0
:cond_45
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ah()Ljava/lang/String;
move-result-object v0
goto :goto_42
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/feed/c/c;
.registers 2
iput-object p1, p0, Lcom/instagram/feed/c/c;->e:Ljava/lang/String;
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/feed/c/c;
.registers 2
iput-object p1, p0, Lcom/instagram/feed/c/c;->h:Ljava/lang/String;
return-object p0
.end method