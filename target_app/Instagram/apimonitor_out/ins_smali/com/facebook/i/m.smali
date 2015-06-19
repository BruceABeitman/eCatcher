.class public final Lcom/facebook/i/m;
.super Ljava/lang/Object;
.source "Phonenumber.java"
.implements Ljava/io/Serializable;
.field private a:Z
.field private b:I
.field private c:Z
.field private d:J
.field private e:Z
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:Z
.field private i:Ljava/lang/String;
.field private j:Z
.field private k:Lcom/facebook/i/n;
.field private l:Z
.field private m:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lcom/facebook/i/m;->b:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/facebook/i/m;->d:J
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;
iput-boolean v2, p0, Lcom/facebook/i/m;->h:Z
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;
sget-object v0, Lcom/facebook/i/n;->a:Lcom/facebook/i/n;
iput-object v0, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;
return-void
.end method
.method private a(Lcom/facebook/i/m;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-ne p0, p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
iget v2, p0, Lcom/facebook/i/m;->b:I
iget v3, p1, Lcom/facebook/i/m;->b:I
if-ne v2, v3, :cond_4
iget-wide v2, p0, Lcom/facebook/i/m;->d:J
iget-wide v4, p1, Lcom/facebook/i/m;->d:J
cmp-long v2, v2, v4
if-nez v2, :cond_4
iget-object v2, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;
iget-object v3, p1, Lcom/facebook/i/m;->f:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
iget-boolean v2, p0, Lcom/facebook/i/m;->h:Z
iget-boolean v3, p1, Lcom/facebook/i/m;->h:Z
if-ne v2, v3, :cond_4
iget-object v2, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;
iget-object v3, p1, Lcom/facebook/i/m;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
iget-object v2, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;
iget-object v3, p1, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;
if-ne v2, v3, :cond_4
iget-object v2, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;
iget-object v3, p1, Lcom/facebook/i/m;->m:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4
invoke-direct {p0}, Lcom/facebook/i/m;->k()Z
move-result v2
invoke-direct {p1}, Lcom/facebook/i/m;->k()Z
move-result v3
if-ne v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method private e()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/m;->e:Z
return v0
.end method
.method private f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;
return-object v0
.end method
.method private g()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/m;->g:Z
return v0
.end method
.method private h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/i/m;->i:Ljava/lang/String;
return-object v0
.end method
.method private i()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/m;->j:Z
return v0
.end method
.method private j()Lcom/facebook/i/n;
.registers 2
iget-object v0, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;
return-object v0
.end method
.method private k()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/m;->l:Z
return v0
.end method
.method private l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/facebook/i/m;->b:I
return v0
.end method
.method public final a(I)Lcom/facebook/i/m;
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/m;->a:Z
iput p1, p0, Lcom/facebook/i/m;->b:I
return-object p0
.end method
.method public final a(J)Lcom/facebook/i/m;
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/m;->c:Z
iput-wide p1, p0, Lcom/facebook/i/m;->d:J
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/facebook/i/m;
.registers 3
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/m;->e:Z
iput-object p1, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;
return-object p0
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/facebook/i/m;->d:J
return-wide v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/i/m;->h:Z
return v0
.end method
.method public final d()Lcom/facebook/i/m;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/i/m;->g:Z
iput-boolean v0, p0, Lcom/facebook/i/m;->h:Z
return-object p0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Lcom/facebook/i/m;
if-eqz v0, :cond_e
check-cast p1, Lcom/facebook/i/m;
invoke-direct {p0, p1}, Lcom/facebook/i/m;->a(Lcom/facebook/i/m;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final hashCode()I
.registers 6
const/16 v2, 0x4d5
const/16 v1, 0x4cf
invoke-virtual {p0}, Lcom/facebook/i/m;->a()I
move-result v0
add-int/lit16 v0, v0, 0x87d
mul-int/lit8 v0, v0, 0x35
invoke-virtual {p0}, Lcom/facebook/i/m;->b()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x35
invoke-direct {p0}, Lcom/facebook/i/m;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v3, v0, 0x35
invoke-virtual {p0}, Lcom/facebook/i/m;->c()Z
move-result v0
if-eqz v0, :cond_59
move v0, v1
:goto_2d
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x35
invoke-direct {p0}, Lcom/facebook/i/m;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x35
invoke-direct {p0}, Lcom/facebook/i/m;->j()Lcom/facebook/i/n;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/i/n;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x35
invoke-direct {p0}, Lcom/facebook/i/m;->l()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->hashCode()I
move-result v3
add-int/2addr v0, v3
mul-int/lit8 v0, v0, 0x35
invoke-direct {p0}, Lcom/facebook/i/m;->k()Z
move-result v3
if-eqz v3, :cond_5b
:goto_57
add-int/2addr v0, v1
return v0
:cond_59
move v0, v2
goto :goto_2d
:cond_5b
move v1, v2
goto :goto_57
.end method
.method public final toString()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Country Code: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/facebook/i/m;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, " National Number: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/facebook/i/m;->d:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
invoke-direct {p0}, Lcom/facebook/i/m;->g()Z
move-result v1
if-eqz v1, :cond_2c
invoke-virtual {p0}, Lcom/facebook/i/m;->c()Z
move-result v1
if-eqz v1, :cond_2c
const-string v1, " Leading Zero: true"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2c
invoke-direct {p0}, Lcom/facebook/i/m;->e()Z
move-result v1
if-eqz v1, :cond_3d
const-string v1, " Extension: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/i/m;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3d
invoke-direct {p0}, Lcom/facebook/i/m;->i()Z
move-result v1
if-eqz v1, :cond_4e
const-string v1, " Country Code Source: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/i/m;->k:Lcom/facebook/i/n;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_4e
invoke-direct {p0}, Lcom/facebook/i/m;->k()Z
move-result v1
if-eqz v1, :cond_5f
const-string v1, " Preferred Domestic Carrier Code: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/i/m;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5f
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method