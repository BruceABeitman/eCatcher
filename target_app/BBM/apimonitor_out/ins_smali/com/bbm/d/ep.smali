.class public Lcom/bbm/d/ep;
.super Ljava/lang/Object;
.source "ConferenceInvitation.java"
.implements Lcom/bbm/d/a/a;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Lcom/bbm/d/eq;
.field public f:J
.field public g:Lcom/bbm/util/bh;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/eq;->a:Lcom/bbm/d/eq;
iput-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ep;->f:J
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
return-void
.end method
.method private constructor <init>(Lcom/bbm/d/ep;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
sget-object v0, Lcom/bbm/d/eq;->a:Lcom/bbm/d/eq;
iput-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/d/ep;->f:J
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
iget-object v0, p1, Lcom/bbm/d/ep;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ep;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ep;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ep;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
iget-object v0, p1, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
iput-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
iget-wide v0, p1, Lcom/bbm/d/ep;->f:J
iput-wide v0, p0, Lcom/bbm/d/ep;->f:J
iget-object v0, p1, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
iput-object v0, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/bbm/util/bh;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
const-string v0, "conferenceUri"
iget-object v1, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
const-string v0, "id"
iget-object v1, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
const-string v0, "invitee"
iget-object v1, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
const-string v0, "invitor"
iget-object v1, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
const-string v0, "status"
iget-object v1, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
invoke-virtual {v1}, Lcom/bbm/d/eq;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/eq;->a(Ljava/lang/String;)Lcom/bbm/d/eq;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
const-string v0, "timestamp"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_54
const-string v0, "timestamp"
const-string v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_55
const-wide/16 v0, 0x0
:goto_52
iput-wide v0, p0, Lcom/bbm/d/ep;->f:J
:cond_54
return-void
:cond_55
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_52
.end method
.method public final b()Lcom/bbm/d/a/a;
.registers 2
new-instance v0, Lcom/bbm/d/ep;
invoke-direct {v0, p0}, Lcom/bbm/d/ep;-><init>(Lcom/bbm/d/ep;)V
return-object v0
.end method
.method public final c()Lcom/bbm/util/bh;
.registers 2
iget-object v0, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
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
check-cast p1, Lcom/bbm/d/ep;
iget-object v2, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/ep;->a:Ljava/lang/String;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ep;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/ep;->b:Ljava/lang/String;
if-eqz v2, :cond_43
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ep;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_43
move v0, v1
goto :goto_4
:cond_43
iget-object v2, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
if-nez v2, :cond_4d
iget-object v2, p1, Lcom/bbm/d/ep;->c:Ljava/lang/String;
if-eqz v2, :cond_59
move v0, v1
goto :goto_4
:cond_4d
iget-object v2, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ep;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_59
move v0, v1
goto :goto_4
:cond_59
iget-object v2, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
if-nez v2, :cond_63
iget-object v2, p1, Lcom/bbm/d/ep;->d:Ljava/lang/String;
if-eqz v2, :cond_6f
move v0, v1
goto :goto_4
:cond_63
iget-object v2, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
iget-object v3, p1, Lcom/bbm/d/ep;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6f
move v0, v1
goto :goto_4
:cond_6f
iget-object v2, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
if-nez v2, :cond_79
iget-object v2, p1, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
if-eqz v2, :cond_85
move v0, v1
goto :goto_4
:cond_79
iget-object v2, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
iget-object v3, p1, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
invoke-virtual {v2, v3}, Lcom/bbm/d/eq;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_85
move v0, v1
goto :goto_4
:cond_85
iget-wide v2, p0, Lcom/bbm/d/ep;->f:J
iget-wide v4, p1, Lcom/bbm/d/ep;->f:J
cmp-long v2, v2, v4
if-eqz v2, :cond_90
move v0, v1
goto/16 :goto_4
:cond_90
iget-object v2, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
iget-object v3, p1, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
if-nez v0, :cond_36
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
if-nez v0, :cond_3d
move v0, v1
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
if-nez v0, :cond_44
move v0, v1
:goto_17
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
if-nez v0, :cond_4b
move v0, v1
:goto_1f
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
if-nez v0, :cond_52
move v0, v1
:goto_27
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/bbm/d/ep;->f:J
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
if-nez v2, :cond_59
:goto_34
add-int/2addr v0, v1
return v0
:cond_36
iget-object v0, p0, Lcom/bbm/d/ep;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_6
:cond_3d
iget-object v0, p0, Lcom/bbm/d/ep;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_f
:cond_44
iget-object v0, p0, Lcom/bbm/d/ep;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_17
:cond_4b
iget-object v0, p0, Lcom/bbm/d/ep;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_1f
:cond_52
iget-object v0, p0, Lcom/bbm/d/ep;->e:Lcom/bbm/d/eq;
invoke-virtual {v0}, Lcom/bbm/d/eq;->hashCode()I
move-result v0
goto :goto_27
:cond_59
iget-object v1, p0, Lcom/bbm/d/ep;->g:Lcom/bbm/util/bh;
invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I
move-result v1
goto :goto_34
.end method