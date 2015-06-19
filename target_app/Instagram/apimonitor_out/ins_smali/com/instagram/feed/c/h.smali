.class public final Lcom/instagram/feed/c/h;
.super Ljava/lang/Object;
.source "VideoInsightsEventBuilder.java"
.field private final a:Ljava/lang/String;
.field private final b:Lcom/instagram/feed/g/a;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/Long;
.field private i:I
.field private j:I
.field private k:I
.field private l:I
.field private m:D
.field private n:Ljava/lang/Boolean;
.field private o:Ljava/lang/Boolean;
.field private p:Ljava/lang/String;
.field private q:Ljava/lang/String;
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
.registers 5
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/instagram/feed/c/h;->i:I
iput v0, p0, Lcom/instagram/feed/c/h;->j:I
iput v0, p0, Lcom/instagram/feed/c/h;->k:I
iput v0, p0, Lcom/instagram/feed/c/h;->l:I
const-wide/high16 v0, -0x4010
iput-wide v0, p0, Lcom/instagram/feed/c/h;->m:D
iput-object p1, p0, Lcom/instagram/feed/c/h;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/feed/c/h;->b:Lcom/instagram/feed/g/a;
return-void
.end method
.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_9
const-string v0, "ad"
:goto_8
return-object v0
:cond_9
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_12
const-string v0, "organic"
goto :goto_8
:cond_12
const-string v0, "none"
goto :goto_8
.end method
.method private static b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ah()Ljava/lang/String;
move-result-object v0
goto :goto_a
:cond_16
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ae()Z
move-result v0
if-eqz v0, :cond_21
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->i()Ljava/lang/String;
move-result-object v0
goto :goto_a
:cond_21
const/4 v0, 0x0
goto :goto_a
.end method
.method private static e(I)Ljava/lang/String;
.registers 2
const/4 v0, 0x1
if-ne p0, v0, :cond_6
const-string v0, "MEDIA_ERROR_UNKNOWN"
:goto_5
return-object v0
:cond_6
const/16 v0, 0x64
if-ne p0, v0, :cond_d
const-string v0, "MEDIA_ERROR_SERVER_DIED"
goto :goto_5
:cond_d
const/4 v0, 0x0
goto :goto_5
.end method
.method private static f(I)Ljava/lang/String;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_11
const/4 v0, 0x1
:goto_7
invoke-static {v0}, Lcom/instagram/common/i/a/f;->b(Z)V
const/16 v0, -0x3ec
if-ne p0, v0, :cond_13
const-string v0, "MEDIA_ERROR_IO"
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_7
:cond_13
const/16 v0, -0x3ef
if-ne p0, v0, :cond_1a
const-string v0, "MEDIA_ERROR_MALFORMED"
goto :goto_10
:cond_1a
const/16 v0, -0x3f2
if-ne p0, v0, :cond_21
const-string v0, "MEDIA_ERROR_UNSUPPORTED"
goto :goto_10
:cond_21
const/16 v0, -0x6e
if-ne p0, v0, :cond_28
const-string v0, "MEDIA_ERROR_TIMED_OUT"
goto :goto_10
:cond_28
const/4 v0, 0x0
goto :goto_10
.end method
.method public final a()Lcom/instagram/common/analytics/b;
.registers 9
const/high16 v7, 0x447a
const/4 v6, -0x1
new-instance v1, Lcom/instagram/common/analytics/b;
iget-object v0, p0, Lcom/instagram/feed/c/h;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/feed/c/h;->b:Lcom/instagram/feed/g/a;
invoke-direct {v1, v0, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
iget-object v0, p0, Lcom/instagram/feed/c/h;->c:Ljava/lang/String;
if-eqz v0, :cond_17
const-string v0, "m_pk"
iget-object v2, p0, Lcom/instagram/feed/c/h;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_17
iget-object v0, p0, Lcom/instagram/feed/c/h;->d:Ljava/lang/String;
if-eqz v0, :cond_22
const-string v0, "a_pk"
iget-object v2, p0, Lcom/instagram/feed/c/h;->d:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_22
iget-object v0, p0, Lcom/instagram/feed/c/h;->h:Ljava/lang/Long;
if-eqz v0, :cond_31
const-string v0, "m_ts"
iget-object v2, p0, Lcom/instagram/feed/c/h;->h:Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
:cond_31
iget-object v0, p0, Lcom/instagram/feed/c/h;->e:Ljava/lang/String;
if-eqz v0, :cond_3c
const-string v0, "tracking_token"
iget-object v2, p0, Lcom/instagram/feed/c/h;->e:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_3c
iget-object v0, p0, Lcom/instagram/feed/c/h;->f:Ljava/lang/String;
if-eqz v0, :cond_47
const-string v0, "follow_status"
iget-object v2, p0, Lcom/instagram/feed/c/h;->f:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_47
iget v0, p0, Lcom/instagram/feed/c/h;->i:I
if-eq v0, v6, :cond_52
const-string v0, "m_ix"
iget v2, p0, Lcom/instagram/feed/c/h;->i:I
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
:cond_52
iget-object v0, p0, Lcom/instagram/feed/c/h;->g:Ljava/lang/String;
if-eqz v0, :cond_5d
const-string v0, "response"
iget-object v2, p0, Lcom/instagram/feed/c/h;->g:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_5d
iget v0, p0, Lcom/instagram/feed/c/h;->j:I
if-eq v0, v6, :cond_6b
const-string v0, "time"
iget v2, p0, Lcom/instagram/feed/c/h;->j:I
int-to-float v2, v2
div-float/2addr v2, v7
float-to-double v2, v2
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
:cond_6b
iget v0, p0, Lcom/instagram/feed/c/h;->k:I
if-eq v0, v6, :cond_79
const-string v0, "duration"
iget v2, p0, Lcom/instagram/feed/c/h;->k:I
int-to-float v2, v2
div-float/2addr v2, v7
float-to-double v2, v2
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
:cond_79
iget-wide v2, p0, Lcom/instagram/feed/c/h;->m:D
const-wide/high16 v4, -0x4010
cmpl-double v0, v2, v4
if-eqz v0, :cond_88
const-string v0, "timeAsPercent"
iget-wide v2, p0, Lcom/instagram/feed/c/h;->m:D
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
:cond_88
iget-object v0, p0, Lcom/instagram/feed/c/h;->n:Ljava/lang/Boolean;
if-eqz v0, :cond_9b
const-string v2, "playing_audio"
iget-object v0, p0, Lcom/instagram/feed/c/h;->n:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_f2
const-string v0, "1"
:goto_98
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_9b
iget-object v0, p0, Lcom/instagram/feed/c/h;->q:Ljava/lang/String;
if-eqz v0, :cond_a6
const-string v0, "original_start_reason"
iget-object v2, p0, Lcom/instagram/feed/c/h;->q:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_a6
iget-object v0, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
if-eqz v0, :cond_b1
const-string v0, "reason"
iget-object v2, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_b1
iget-object v0, p0, Lcom/instagram/feed/c/h;->o:Ljava/lang/Boolean;
if-eqz v0, :cond_c4
const-string v2, "initial"
iget-object v0, p0, Lcom/instagram/feed/c/h;->o:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_f5
const-string v0, "1"
:goto_c1
invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_c4
iget v0, p0, Lcom/instagram/feed/c/h;->l:I
if-eq v0, v6, :cond_d2
const-string v0, "lsp"
iget v2, p0, Lcom/instagram/feed/c/h;->l:I
int-to-float v2, v2
div-float/2addr v2, v7
float-to-double v2, v2
invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
:cond_d2
iget-object v0, p0, Lcom/instagram/feed/c/h;->s:Ljava/lang/String;
if-eqz v0, :cond_dd
const-string v0, "system_volume"
iget-object v2, p0, Lcom/instagram/feed/c/h;->s:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_dd
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_ea
const-string v0, "production_build"
const-string v2, "0"
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_ea
const-string v0, "a_i"
iget-object v2, p0, Lcom/instagram/feed/c/h;->r:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
return-object v1
:cond_f2
const-string v0, "0"
goto :goto_98
:cond_f5
const-string v0, "0"
goto :goto_c1
.end method
.method public final a(D)Lcom/instagram/feed/c/h;
.registers 3
iput-wide p1, p0, Lcom/instagram/feed/c/h;->m:D
return-object p0
.end method
.method public final a(I)Lcom/instagram/feed/c/h;
.registers 2
iput p1, p0, Lcom/instagram/feed/c/h;->i:I
return-object p0
.end method
.method public final a(II)Lcom/instagram/feed/c/h;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_c
invoke-static {p2}, Lcom/instagram/feed/c/h;->f(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
:cond_c
iget-object v0, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
if-nez v0, :cond_16
invoke-static {p1}, Lcom/instagram/feed/c/h;->e(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
:cond_16
return-object p0
.end method
.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/h;
.registers 3
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->l()Ljava/lang/Long;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->h:Ljava/lang/Long;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v0
invoke-static {v0}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/user/c/c;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/feed/c/h;->b:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/h;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/feed/c/h;->b:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/h;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->r:Ljava/lang/String;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/instagram/feed/c/h;
.registers 2
iput-object p1, p0, Lcom/instagram/feed/c/h;->s:Ljava/lang/String;
return-object p0
.end method
.method public final a(Z)Lcom/instagram/feed/c/h;
.registers 3
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->n:Ljava/lang/Boolean;
return-object p0
.end method
.method public final b(I)Lcom/instagram/feed/c/h;
.registers 2
iput p1, p0, Lcom/instagram/feed/c/h;->j:I
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/feed/c/h;
.registers 2
iput-object p1, p0, Lcom/instagram/feed/c/h;->q:Ljava/lang/String;
return-object p0
.end method
.method public final b(Z)Lcom/instagram/feed/c/h;
.registers 3
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/c/h;->o:Ljava/lang/Boolean;
return-object p0
.end method
.method public final c(I)Lcom/instagram/feed/c/h;
.registers 2
iput p1, p0, Lcom/instagram/feed/c/h;->k:I
return-object p0
.end method
.method public final c(Ljava/lang/String;)Lcom/instagram/feed/c/h;
.registers 2
iput-object p1, p0, Lcom/instagram/feed/c/h;->p:Ljava/lang/String;
return-object p0
.end method
.method public final d(I)Lcom/instagram/feed/c/h;
.registers 2
iput p1, p0, Lcom/instagram/feed/c/h;->l:I
return-object p0
.end method