.class  Lcom/glympse/android/lib/je;
.super Ljava/lang/Object;
.source "Uri.java"
.implements Lcom/glympse/android/lib/GUri;
.field private bw:Ljava/lang/String;
.field private rE:Ljava/lang/String;
.field private tA:Ljava/lang/String;
.field private tB:Ljava/lang/String;
.field private tC:Ljava/lang/String;
.field private tD:Ljava/lang/String;
.field private tE:Ljava/lang/String;
.field private tF:Lcom/glympse/android/hal/GVector;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/je;->tA:Ljava/lang/String;
return-void
.end method
.method public static F(Ljava/lang/String;)Lcom/glympse/android/lib/GUri;
.registers 10
const/16 v6, 0x3a
const/4 v2, 0x0
const/4 v8, -0x1
new-instance v3, Lcom/glympse/android/lib/je;
invoke-direct {v3, p0}, Lcom/glympse/android/lib/je;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-eq v8, v0, :cond_15
invoke-static {p0, v2, v0}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, v3, Lcom/glympse/android/lib/je;->tB:Ljava/lang/String;
:cond_15
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-le v0, v1, :cond_1f
move-object v0, v3
:goto_1e
return-object v0
:cond_1f
invoke-static {p0, v0}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
const-string v4, "/"
invoke-static {v1, v4}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;
move-result-object v1
iput-object v1, v3, Lcom/glympse/android/lib/je;->tF:Lcom/glympse/android/hal/GVector;
add-int/lit8 v4, v0, 0x2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v4, v0, :cond_35
move-object v0, v3
goto :goto_1e
:cond_35
invoke-static {p0, v4}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
const/16 v0, 0x2f
invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v8, v0, :cond_45
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
:cond_45
invoke-static {v1, v2, v0}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, v3, Lcom/glympse/android/lib/je;->tC:Ljava/lang/String;
iget-object v1, v3, Lcom/glympse/android/lib/je;->tC:Ljava/lang/String;
if-eqz v1, :cond_73
iget-object v1, v3, Lcom/glympse/android/lib/je;->tC:Ljava/lang/String;
const/16 v5, 0x40
invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ne v8, v1, :cond_5a
move v1, v2
:cond_5a
iget-object v5, v3, Lcom/glympse/android/lib/je;->tC:Ljava/lang/String;
invoke-static {v5, v1}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ne v8, v1, :cond_7d
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v1
const/4 v6, 0x0
iput-object v6, v3, Lcom/glympse/android/lib/je;->tD:Ljava/lang/String;
:goto_6d
invoke-static {v5, v2, v1}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, v3, Lcom/glympse/android/lib/je;->bw:Ljava/lang/String;
:cond_73
add-int v1, v0, v4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v1, v0, :cond_8a
move-object v0, v3
goto :goto_1e
:cond_7d
add-int/lit8 v6, v1, 0x1
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v7
invoke-static {v5, v6, v7}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v6
iput-object v6, v3, Lcom/glympse/android/lib/je;->tD:Ljava/lang/String;
goto :goto_6d
:cond_8a
invoke-static {p0, v1}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
const/16 v2, 0x3f
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v8, v0, :cond_ab
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:goto_9a
invoke-static {p0, v1, v0}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
iput-object v1, v3, Lcom/glympse/android/lib/je;->tE:Ljava/lang/String;
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v1, v0, :cond_ad
move-object v0, v3
goto/16 :goto_1e
:cond_ab
add-int/2addr v0, v1
goto :goto_9a
:cond_ad
invoke-static {p0, v1}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
const/16 v2, 0x23
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ne v8, v0, :cond_c6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
:goto_bd
invoke-static {p0, v1, v0}, Lcom/glympse/android/hal/Helpers;->substrend(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/glympse/android/lib/je;->rE:Ljava/lang/String;
move-object v0, v3
goto/16 :goto_1e
:cond_c6
add-int/2addr v0, v1
goto :goto_bd
.end method
.method public getAuthority()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tC:Ljava/lang/String;
return-object v0
.end method
.method public getHost()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->bw:Ljava/lang/String;
return-object v0
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tE:Ljava/lang/String;
return-object v0
.end method
.method public getPort()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tD:Ljava/lang/String;
return-object v0
.end method
.method public getQuery()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->rE:Ljava/lang/String;
return-object v0
.end method
.method public getScheme()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tB:Ljava/lang/String;
return-object v0
.end method
.method public getSegments()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tF:Lcom/glympse/android/hal/GVector;
return-object v0
.end method
.method public getUriString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/je;->tA:Ljava/lang/String;
return-object v0
.end method