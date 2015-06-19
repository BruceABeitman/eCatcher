.class public final Lcom/a/a/t;
.super Ljava/lang/Object;
.source "VCardEntry.java"
.implements Lcom/a/a/i;
.field private final a:Ljava/lang/String;
.field private final b:I
.field private final c:Ljava/lang/String;
.field private final d:Z
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "sip:"
invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_19
const/4 v0, 0x4
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/a/a/t;->a:Ljava/lang/String;
:goto_12
iput p2, p0, Lcom/a/a/t;->b:I
iput-object p3, p0, Lcom/a/a/t;->c:Ljava/lang/String;
iput-boolean p4, p0, Lcom/a/a/t;->d:Z
return-void
:cond_19
iput-object p1, p0, Lcom/a/a/t;->a:Ljava/lang/String;
goto :goto_12
.end method
.method public final a()Lcom/a/a/k;
.registers 2
sget-object v0, Lcom/a/a/k;->i:Lcom/a/a/k;
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
instance-of v2, p1, Lcom/a/a/t;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/a/a/t;
iget v2, p0, Lcom/a/a/t;->b:I
iget v3, p1, Lcom/a/a/t;->b:I
if-ne v2, v3, :cond_2d
iget-object v2, p0, Lcom/a/a/t;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/a/a/t;->c:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_2d
iget-object v2, p0, Lcom/a/a/t;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/a/a/t;->a:Ljava/lang/String;
invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_2d
iget-boolean v2, p0, Lcom/a/a/t;->d:Z
iget-boolean v3, p1, Lcom/a/a/t;->d:Z
if-eq v2, v3, :cond_4
:cond_2d
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/a/a/t;->b:I
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/a/a/t;->c:Ljava/lang/String;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/a/a/t;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_f
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/a/a/t;->a:Ljava/lang/String;
if-eqz v2, :cond_1c
iget-object v1, p0, Lcom/a/a/t;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_1c
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v0, p0, Lcom/a/a/t;->d:Z
if-eqz v0, :cond_29
const/16 v0, 0x4cf
:goto_25
add-int/2addr v0, v1
return v0
:cond_27
move v0, v1
goto :goto_f
:cond_29
const/16 v0, 0x4d5
goto :goto_25
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "sip: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/a/a/t;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method