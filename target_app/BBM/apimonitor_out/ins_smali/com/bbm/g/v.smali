.class public Lcom/bbm/g/v;
.super Ljava/lang/Object;
.source "GroupInvitationSent.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Z
.field public d:Z
.field public e:Ljava/lang/String;
.field public f:Z
.field public g:J
.field public h:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/g/v;->c:Z
iput-boolean v1, p0, Lcom/bbm/g/v;->d:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/g/v;->f:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/v;->g:J
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/g/v;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/g/v;->c:Z
iput-boolean v1, p0, Lcom/bbm/g/v;->d:Z
const-string v0, ""
iput-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
iput-boolean v1, p0, Lcom/bbm/g/v;->f:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/g/v;->g:J
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/g/v;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/g/v;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/g/v;->c:Z
iput-boolean v0, p0, Lcom/bbm/g/v;->c:Z
iget-boolean v0, p1, Lcom/bbm/g/v;->d:Z
iput-boolean v0, p0, Lcom/bbm/g/v;->d:Z
iget-object v0, p1, Lcom/bbm/g/v;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/g/v;->f:Z
iput-boolean v0, p0, Lcom/bbm/g/v;->f:Z
iget-wide v0, p1, Lcom/bbm/g/v;->g:J
iput-wide v0, p0, Lcom/bbm/g/v;->g:J
iget-object v0, p1, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "groupUri"
iget-object v1, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
const-string v0, "invitationId"
iget-object v1, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
const-string v0, "invitationRejectedByInvitee"
iget-boolean v1, p0, Lcom/bbm/g/v;->c:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/g/v;->c:Z
const-string v0, "invitationRejectedInviteeNotProtected"
iget-boolean v1, p0, Lcom/bbm/g/v;->d:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/g/v;->d:Z
const-string v0, "invitee"
iget-object v1, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
const-string v0, "isUnread"
iget-boolean v1, p0, Lcom/bbm/g/v;->f:Z
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/g/v;->f:Z
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_56
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_57
const-wide/16 v0, 0x0
:goto_54
iput-wide v0, p0, Lcom/bbm/g/v;->g:J
:cond_56
return-void
:cond_57
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_54
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/g/v;
invoke-direct {v0, p0}, Lcom/bbm/g/v;-><init>(Lcom/bbm/g/v;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/g/v;
iget-object v2, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/g/v;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/v;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/g/v;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/v;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-boolean v2, p0, Lcom/bbm/g/v;->c:Z
iget-boolean v3, p1, Lcom/bbm/g/v;->c:Z
if-eq v2, v3, :cond_4b
move v0, v1
goto :goto_4
:cond_4b
iget-boolean v2, p0, Lcom/bbm/g/v;->d:Z
iget-boolean v3, p1, Lcom/bbm/g/v;->d:Z
if-eq v2, v3, :cond_53
move v0, v1
goto :goto_4
:cond_53
iget-object v2, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
if-nez v2, :cond_5d
iget-object v2, p1, Lcom/bbm/g/v;->e:Ljava/lang/String;
if-eqz v2, :cond_69
move v0, v1
goto :goto_4
:cond_5d
iget-object v2, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/g/v;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_69
move v0, v1
goto :goto_4
:cond_69
iget-boolean v2, p0, Lcom/bbm/g/v;->f:Z
iget-boolean v3, p1, Lcom/bbm/g/v;->f:Z
if-eq v2, v3, :cond_71
move v0, v1
goto :goto_4
:cond_71
iget-wide v2, p0, Lcom/bbm/g/v;->g:J
iget-wide v4, p1, Lcom/bbm/g/v;->g:J
cmp-long v2, v2, v4
if-eqz v2, :cond_7b
move v0, v1
goto :goto_4
:cond_7b
iget-object v2, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 6
const/16 v3, 0x4d5
const/16 v2, 0x4cf
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
if-nez v0, :cond_41
move v0, v1
:goto_a
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
if-nez v0, :cond_48
move v0, v1
:goto_13
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/g/v;->c:Z
if-eqz v0, :cond_4f
move v0, v2
:goto_1b
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-boolean v0, p0, Lcom/bbm/g/v;->d:Z
if-eqz v0, :cond_51
move v0, v2
:goto_23
add-int/2addr v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
if-nez v0, :cond_53
move v0, v1
:goto_2b
add-int/2addr v0, v4
mul-int/lit8 v0, v0, 0x1f
iget-boolean v4, p0, Lcom/bbm/g/v;->f:Z
if-eqz v4, :cond_5a
:goto_32
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/g/v;->g:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
if-nez v2, :cond_5c
:goto_3f
add-int/2addr v0, v1
return v0
:cond_41
iget-object v0, p0, Lcom/bbm/g/v;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_a
:cond_48
iget-object v0, p0, Lcom/bbm/g/v;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_13
:cond_4f
move v0, v3
goto :goto_1b
:cond_51
move v0, v3
goto :goto_23
:cond_53
iget-object v0, p0, Lcom/bbm/g/v;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_2b
:cond_5a
move v2, v3
goto :goto_32
:cond_5c
iget-object v1, p0, Lcom/bbm/g/v;->h:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_3f
.end method