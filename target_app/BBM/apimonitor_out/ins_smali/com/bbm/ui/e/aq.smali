.class public final Lcom/bbm/ui/e/aq;
.super Ljava/lang/Object;
.source "LocationUtil.java"
.method public static a(Lcom/bbm/d/ff;)Ljava/lang/String;
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Lcom/bbm/d/ff;->k:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_7e
iget-object v0, p0, Lcom/bbm/d/ff;->k:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v1
:goto_15
iget-object v4, p0, Lcom/bbm/d/ff;->b:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_2a
if-eqz v0, :cond_24
const-string v0, ", "
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_24
iget-object v0, p0, Lcom/bbm/d/ff;->b:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v1
:cond_2a
iget-object v4, p0, Lcom/bbm/d/ff;->j:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_3f
if-eqz v0, :cond_39
const-string v0, ", "
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_39
iget-object v0, p0, Lcom/bbm/d/ff;->j:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move v0, v1
:cond_3f
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/bbm/d/ff;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_51
iget-object v0, p0, Lcom/bbm/d/ff;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_56
:cond_51
const-string v0, "\n"
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_56
iget-object v0, p0, Lcom/bbm/d/ff;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/bbm/d/ff;->c:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_63
iget-object v0, p0, Lcom/bbm/d/ff;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_77
if-eqz v1, :cond_72
const-string v0, ", "
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_72
iget-object v0, p0, Lcom/bbm/d/ff;->i:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_77
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_7c
move v1, v2
goto :goto_63
:cond_7e
move v0, v2
goto :goto_15
.end method