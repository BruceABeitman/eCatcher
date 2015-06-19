.class public final Lcom/a/a/l;
.super Ljava/lang/Object;
.source "VCardEntry.java"
.implements Lcom/a/a/i;
.field private final a:Ljava/lang/String;
.field private final b:I
.field private final c:Ljava/lang/String;
.field private final d:I
.field private final e:Z
.method public constructor <init>(ILjava/lang/String;IZ)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/a/a/l;->b:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/String;
iput p3, p0, Lcom/a/a/l;->d:I
iput-object p2, p0, Lcom/a/a/l;->a:Ljava/lang/String;
iput-boolean p4, p0, Lcom/a/a/l;->e:Z
return-void
.end method
.method public final a()Lcom/a/a/k;
.registers 2
sget-object v0, Lcom/a/a/k;->f:Lcom/a/a/k;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/a/a/l;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/a/a/l;
iget v2, p0, Lcom/a/a/l;->d:I
iget v3, p1, Lcom/a/a/l;->d:I
if-ne v2, v3, :cond_33
iget v2, p0, Lcom/a/a/l;->b:I
iget v3, p1, Lcom/a/a/l;->b:I
if-ne v2, v3, :cond_33
iget-object v2, p0, Lcom/a/a/l;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/a/a/l;->c:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/a/a/l;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/a/a/l;->a:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_33
iget-boolean v2, p0, Lcom/a/a/l;->e:Z
iget-boolean v3, p1, Lcom/a/a/l;->e:Z
if-eq v2, v3, :cond_4
:cond_33
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/a/a/l;->d:I
mul-int/lit8 v0, v0, 0x1f
iget v2, p0, Lcom/a/a/l;->b:I
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/String;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/a/a/l;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_14
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/a/a/l;->a:Ljava/lang/String;
if-eqz v2, :cond_21
iget-object v1, p0, Lcom/a/a/l;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_21
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v0, p0, Lcom/a/a/l;->e:Z
if-eqz v0, :cond_2e
const/16 v0, 0x4cf
:goto_2a
add-int/2addr v0, v1
return v0
:cond_2c
move v0, v1
goto :goto_14
:cond_2e
const/16 v0, 0x4d5
goto :goto_2a
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/a/a/l;->d:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/a/a/l;->b:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/a/a/l;->c:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x3
iget-object v3, p0, Lcom/a/a/l;->a:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x4
iget-boolean v3, p0, Lcom/a/a/l;->e:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method