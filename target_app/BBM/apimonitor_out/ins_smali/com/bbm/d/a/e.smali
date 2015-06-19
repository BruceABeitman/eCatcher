.class public final Lcom/bbm/d/a/e;
.super Ljava/lang/Object;
.source "ListMatchingId.java"
.field public final a:Lcom/bbm/d/a/d;
.field public final b:Lcom/bbm/d/a/a/d;
.method public constructor <init>(Lcom/bbm/d/a/d;Lcom/bbm/d/a/a/d;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
iput-object p2, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
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
check-cast p1, Lcom/bbm/d/a/e;
iget-object v2, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
if-eqz v2, :cond_2d
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
iget-object v3, p1, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
invoke-virtual {v2, v3}, Lcom/bbm/d/a/d;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
if-nez v2, :cond_37
iget-object v2, p1, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_37
iget-object v2, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
iget-object v3, p1, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
if-nez v0, :cond_10
move v0, v1
:goto_6
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
if-nez v2, :cond_17
:goto_e
add-int/2addr v0, v1
return v0
:cond_10
iget-object v0, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
invoke-virtual {v0}, Lcom/bbm/d/a/d;->hashCode()I
move-result v0
goto :goto_6
:cond_17
iget-object v1, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_e
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
invoke-virtual {v1}, Lcom/bbm/d/a/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " criteria: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
invoke-interface {v1}, Lcom/bbm/d/a/a/d;->a()Ljava/util/Map;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method