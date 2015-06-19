.class public Lcom/bbm/g/b;
.super Ljava/lang/Object;
.source "GroupCalendarAppointment.java"
.implements Lcom/bbm/d/a/a;
.field public a:Z
.field public b:Lorg/json/JSONObject;
.field public c:J
.field public d:Lcom/bbm/g/c;
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field public g:Ljava/lang/String;
.field public h:Lorg/json/JSONObject;
.field public i:J
.field public j:J
.field public k:Lcom/bbm/g/d;
.field public l:J
.field public m:Ljava/lang/String;
.field public n:Lcom/bbm/g/e;
.field public o:Ljava/lang/String;
.field public p:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 5
const-wide/16 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/g/b;->a:Z
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
iput-wide v2, p0, Lcom/bbm/g/b;->c:J
sget-object v0, Lcom/bbm/g/c;->a:Lcom/bbm/g/c;
iput-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
iput-wide v2, p0, Lcom/bbm/g/b;->i:J
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/bbm/g/b;->j:J
sget-object v0, Lcom/bbm/g/d;->c:Lcom/bbm/g/d;
iput-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
iput-wide v2, p0, Lcom/bbm/g/b;->l:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
sget-object v0, Lcom/bbm/g/e;->hj:Lcom/bbm/g/e;
iput-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/g/b;)V
.registers 6
const-wide/16 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/g/b;->a:Z
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
iput-wide v2, p0, Lcom/bbm/g/b;->c:J
sget-object v0, Lcom/bbm/g/c;->a:Lcom/bbm/g/c;
iput-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
iput-wide v2, p0, Lcom/bbm/g/b;->i:J
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/bbm/g/b;->j:J
sget-object v0, Lcom/bbm/g/d;->c:Lcom/bbm/g/d;
iput-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
iput-wide v2, p0, Lcom/bbm/g/b;->l:J
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
sget-object v0, Lcom/bbm/g/e;->hj:Lcom/bbm/g/e;
iput-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
iget-boolean v0, p1, Lcom/bbm/g/b;->a:Z
iput-boolean v0, p0, Lcom/bbm/g/b;->a:Z
iget-object v0, p1, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
iget-wide v0, p1, Lcom/bbm/g/b;->c:J
iput-wide v0, p0, Lcom/bbm/g/b;->c:J
iget-object v0, p1, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
iput-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
iget-object v0, p1, Lcom/bbm/g/b;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/b;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/b;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
iget-wide v0, p1, Lcom/bbm/g/b;->i:J
iput-wide v0, p0, Lcom/bbm/g/b;->i:J
iget-wide v0, p1, Lcom/bbm/g/b;->j:J
iput-wide v0, p0, Lcom/bbm/g/b;->j:J
iget-object v0, p1, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
iput-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
iget-wide v0, p1, Lcom/bbm/g/b;->l:J
iput-wide v0, p0, Lcom/bbm/g/b;->l:J
iget-object v0, p1, Lcom/bbm/g/b;->m:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
iput-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
iget-object v0, p1, Lcom/bbm/g/b;->o:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 6
const-wide/16 v2, 0x0
const-string v0, "allDayEvent"
iget-boolean v1, p0, Lcom/bbm/g/b;->a:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/g/b;->a:Z
const-string v0, "conference"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
const-string v0, "end"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2b
const-string v0, "end"
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/g/b;->c:J
:cond_2b
const-string v0, "freeBusyStatus"
iget-object v1, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
invoke-virtual {v1}, Lcom/bbm/g/c;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/g/c;->a(Ljava/lang/String;)Lcom/bbm/g/c;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
const-string v0, "location"
iget-object v1, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
const-string v0, "notes"
iget-object v1, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
const-string v0, "parentUri"
iget-object v1, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
const-string v0, "recurrence"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
const-string v0, "recurrenceId"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7a
const-string v0, "recurrenceId"
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/g/b;->i:J
:cond_7a
const-string v0, "reminder"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8b
const-string v0, "reminder"
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/g/b;->j:J
:cond_8b
const-string v0, "sensitivity"
iget-object v1, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
invoke-virtual {v1}, Lcom/bbm/g/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/g/d;->a(Ljava/lang/String;)Lcom/bbm/g/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
const-string v0, "start"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ae
const-string v0, "start"
invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
move-result-wide v0
double-to-long v0, v0
iput-wide v0, p0, Lcom/bbm/g/b;->l:J
:cond_ae
const-string v0, "subject"
iget-object v1, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
const-string v0, "timezone"
iget-object v1, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
invoke-virtual {v1}, Lcom/bbm/g/e;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/g/e;->a(Ljava/lang/String;)Lcom/bbm/g/e;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
const-string v0, "uri"
iget-object v1, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/g/b;
invoke-direct {v0, p0}, Lcom/bbm/g/b;-><init>(Lcom/bbm/g/b;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/g/b;
iget-boolean v2, p0, Lcom/bbm/g/b;->a:Z
iget-boolean v3, p1, Lcom/bbm/g/b;->a:Z
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget-object v2, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
if-nez v2, :cond_29
iget-object v2, p1, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_29
iget-object v2, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-wide v2, p0, Lcom/bbm/g/b;->c:J
iget-wide v4, p1, Lcom/bbm/g/b;->c:J
cmp-long v2, v2, v4
if-eqz v2, :cond_3f
move v0, v1
goto :goto_4
:cond_3f
iget-object v2, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
if-nez v2, :cond_49
iget-object v2, p1, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
if-eqz v2, :cond_55
move v0, v1
goto :goto_4
:cond_49
iget-object v2, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
iget-object v3, p1, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
invoke-virtual {v2, v3}, Lcom/bbm/g/c;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_55
move v0, v1
goto :goto_4
:cond_55
iget-object v2, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
if-nez v2, :cond_5f
iget-object v2, p1, Lcom/bbm/g/b;->e:Ljava/lang/String;
if-eqz v2, :cond_6b
move v0, v1
goto :goto_4
:cond_5f
iget-object v2, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/b;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6b
move v0, v1
goto :goto_4
:cond_6b
iget-object v2, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
if-nez v2, :cond_75
iget-object v2, p1, Lcom/bbm/g/b;->f:Ljava/lang/String;
if-eqz v2, :cond_81
move v0, v1
goto :goto_4
:cond_75
iget-object v2, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/b;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_81
move v0, v1
goto :goto_4
:cond_81
iget-object v2, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
if-nez v2, :cond_8c
iget-object v2, p1, Lcom/bbm/g/b;->g:Ljava/lang/String;
if-eqz v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_8c
iget-object v2, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/b;->g:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_99
move v0, v1
goto/16 :goto_4
:cond_99
iget-object v2, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
if-nez v2, :cond_a4
iget-object v2, p1, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
if-eqz v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_a4
iget-object v2, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
iget-object v3, p1, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
invoke-static {v2, v3}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v2
if-nez v2, :cond_b1
move v0, v1
goto/16 :goto_4
:cond_b1
iget-wide v2, p0, Lcom/bbm/g/b;->i:J
iget-wide v4, p1, Lcom/bbm/g/b;->i:J
cmp-long v2, v2, v4
if-eqz v2, :cond_bc
move v0, v1
goto/16 :goto_4
:cond_bc
iget-wide v2, p0, Lcom/bbm/g/b;->j:J
iget-wide v4, p1, Lcom/bbm/g/b;->j:J
cmp-long v2, v2, v4
if-eqz v2, :cond_c7
move v0, v1
goto/16 :goto_4
:cond_c7
iget-object v2, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
if-nez v2, :cond_d2
iget-object v2, p1, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
if-eqz v2, :cond_df
move v0, v1
goto/16 :goto_4
:cond_d2
iget-object v2, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
iget-object v3, p1, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
invoke-virtual {v2, v3}, Lcom/bbm/g/d;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_df
move v0, v1
goto/16 :goto_4
:cond_df
iget-wide v2, p0, Lcom/bbm/g/b;->l:J
iget-wide v4, p1, Lcom/bbm/g/b;->l:J
cmp-long v2, v2, v4
if-eqz v2, :cond_ea
move v0, v1
goto/16 :goto_4
:cond_ea
iget-object v2, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
if-nez v2, :cond_f5
iget-object v2, p1, Lcom/bbm/g/b;->m:Ljava/lang/String;
if-eqz v2, :cond_102
move v0, v1
goto/16 :goto_4
:cond_f5
iget-object v2, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/b;->m:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_102
move v0, v1
goto/16 :goto_4
:cond_102
iget-object v2, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
if-nez v2, :cond_10d
iget-object v2, p1, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
if-eqz v2, :cond_11a
move v0, v1
goto/16 :goto_4
:cond_10d
iget-object v2, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
iget-object v3, p1, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
invoke-virtual {v2, v3}, Lcom/bbm/g/e;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_11a
move v0, v1
goto/16 :goto_4
:cond_11a
iget-object v2, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
if-nez v2, :cond_125
iget-object v2, p1, Lcom/bbm/g/b;->o:Ljava/lang/String;
if-eqz v2, :cond_132
move v0, v1
goto/16 :goto_4
:cond_125
iget-object v2, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/b;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_132
move v0, v1
goto/16 :goto_4
:cond_132
iget-object v2, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/g/b;->a:Z
if-eqz v0, :cond_79
const/16 v0, 0x4cf
:goto_7
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
if-nez v0, :cond_7c
move v0, v1
:goto_10
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/b;->c:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
if-nez v0, :cond_83
move v0, v1
:goto_1e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
if-nez v0, :cond_8a
move v0, v1
:goto_26
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
if-nez v0, :cond_91
move v0, v1
:goto_2e
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
if-nez v0, :cond_98
move v0, v1
:goto_36
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
if-nez v0, :cond_9f
move v0, v1
:goto_3e
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/b;->i:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/b;->j:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
if-nez v0, :cond_a6
move v0, v1
:goto_52
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/b;->l:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
if-nez v0, :cond_ad
move v0, v1
:goto_60
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
if-nez v0, :cond_b4
move v0, v1
:goto_68
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
if-nez v0, :cond_bb
move v0, v1
:goto_70
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
if-nez v2, :cond_c2
:goto_77
add-int/2addr v0, v1
return v0
:cond_79
const/16 v0, 0x4d5
goto :goto_7
:cond_7c
iget-object v0, p0, Lcom/bbm/g/b;->b:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_10
:cond_83
iget-object v0, p0, Lcom/bbm/g/b;->d:Lcom/bbm/g/c;
invoke-virtual {v0}, Lcom/bbm/g/c;->hashCode()I
move-result v0
goto :goto_1e
:cond_8a
iget-object v0, p0, Lcom/bbm/g/b;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_26
:cond_91
iget-object v0, p0, Lcom/bbm/g/b;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2e
:cond_98
iget-object v0, p0, Lcom/bbm/g/b;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_36
:cond_9f
iget-object v0, p0, Lcom/bbm/g/b;->h:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v0
goto :goto_3e
:cond_a6
iget-object v0, p0, Lcom/bbm/g/b;->k:Lcom/bbm/g/d;
invoke-virtual {v0}, Lcom/bbm/g/d;->hashCode()I
move-result v0
goto :goto_52
:cond_ad
iget-object v0, p0, Lcom/bbm/g/b;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_60
:cond_b4
iget-object v0, p0, Lcom/bbm/g/b;->n:Lcom/bbm/g/e;
invoke-virtual {v0}, Lcom/bbm/g/e;->hashCode()I
move-result v0
goto :goto_68
:cond_bb
iget-object v0, p0, Lcom/bbm/g/b;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_70
:cond_c2
iget-object v1, p0, Lcom/bbm/g/b;->p:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_77
.end method