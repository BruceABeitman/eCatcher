.class final Lcom/a/a/ab;
.super Lcom/a/a/z;
.source "VCardParserImpl_V30.java"
.field private g:Ljava/lang/String;
.field private h:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/a/a/z;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/a/a/ab;->h:Z
return-void
.end method
.method private static b(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v3, 0x0
const/4 v1, 0x0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v5
move v4, v1
move v2, v1
move-object v0, v3
:goto_9
if-ge v4, v5, :cond_8a
invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C
move-result v6
const/16 v7, 0x22
if-ne v6, v7, :cond_48
if-eqz v2, :cond_28
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
move-object v2, v3
:goto_22
add-int/lit8 v4, v4, 0x1
move v9, v0
move-object v0, v2
move v2, v9
goto :goto_9
:cond_28
if-eqz v0, :cond_37
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v2
if-lez v2, :cond_3c
const-string v2, "vCard"
const-string v6, "Unexpected Dquote inside property."
invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_37
:cond_37
const/4 v2, 0x1
move v9, v2
move-object v2, v0
move v0, v9
goto :goto_22
:cond_3c
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/a/a/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_37
:cond_48
const/16 v7, 0x2c
if-ne v6, v7, :cond_7c
if-nez v2, :cond_7c
if-nez v0, :cond_6e
const-string v6, "vCard"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Comma is used before actual string comes. ("
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ")"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move v9, v2
move-object v2, v0
move v0, v9
goto :goto_22
:cond_6e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
move v0, v2
move-object v2, v3
goto :goto_22
:cond_7c
if-nez v0, :cond_83
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:cond_83
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v9, v2
move-object v2, v0
move v0, v9
goto :goto_22
:cond_8a
if-eqz v2, :cond_93
const-string v1, "vCard"
const-string v2, "Dangling Dquote."
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_93
if-eqz v0, :cond_a2
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-nez v1, :cond_a3
const-string v0, "vCard"
const-string v1, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_a2
:goto_a2
return-void
:cond_a3
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/a/a/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a2
.end method
.method private static c(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "ISO-8859-1"
const-string v1, "UTF-8"
invoke-static {p0, v0, v1}, Lcom/a/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final a()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
const/4 v1, 0x0
iput-object v1, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/a/a/ab;->d:Lcom/a/a/aa;
invoke-virtual {v0}, Lcom/a/a/aa;->readLine()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_8
invoke-virtual {p0}, Lcom/a/a/ab;->a()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_16
new-instance v0, Lcom/a/a/a/b;
const-string v1, "File ended during parsing BASE64 binary"
invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_2e
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_33
const-string v2, "\t"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_33
iput-object v1, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
:cond_2e
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_8
.end method
.method protected final a(Lcom/a/a/ae;)V
.registers 4
iget-boolean v0, p0, Lcom/a/a/ab;->h:Z
if-nez v0, :cond_e
const-string v0, "vCard"
const-string v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/a/a/ab;->h:Z
:cond_e
return-void
.end method
.method protected final a(Lcom/a/a/ae;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x2
:try_start_1
invoke-super {p0, p1, p2}, Lcom/a/a/z;->a(Lcom/a/a/ae;Ljava/lang/String;)V
:try_end_4
.catch Lcom/a/a/a/b; {:try_start_1 .. :try_end_4} :catch_5
:goto_4
return-void
:catch_5
move-exception v0
const-string v0, "="
invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
if-ne v1, v2, :cond_19
const/4 v1, 0x0
aget-object v1, v0, v1
const/4 v2, 0x1
aget-object v0, v0, v2
invoke-static {p1, v1, v0}, Lcom/a/a/ab;->b(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:cond_19
new-instance v0, Lcom/a/a/a/b;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown params value: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected final a(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p1, p2, p3}, Lcom/a/a/ab;->b(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final a(Z)Z
.registers 3
invoke-super {p0, p1}, Lcom/a/a/z;->a(Z)Z
move-result v0
return v0
.end method
.method protected final b()Ljava/lang/String;
.registers 8
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
move-object v0, v1
:goto_4
:cond_4
iget-object v2, p0, Lcom/a/a/ab;->d:Lcom/a/a/aa;
invoke-virtual {v2}, Lcom/a/a/aa;->readLine()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_24
if-eqz v0, :cond_13
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
iput-object v1, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
goto :goto_12
:cond_1c
new-instance v0, Lcom/a/a/a/b;
const-string v1, "Reached end of buffer."
invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_3a
if-eqz v0, :cond_31
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_31
iget-object v2, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-eqz v2, :cond_4
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
iput-object v1, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
goto :goto_12
:cond_3a
invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x20
if-eq v3, v4, :cond_4a
invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x9
if-ne v3, v4, :cond_74
:cond_4a
if-eqz v0, :cond_54
invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_4
:cond_54
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-eqz v0, :cond_6c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iput-object v1, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_4
:cond_6c
new-instance v0, Lcom/a/a/a/b;
const-string v1, "Space exists at the beginning of the line"
invoke-direct {v0, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V
throw v0
:cond_74
iget-object v3, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-nez v3, :cond_81
iput-object v2, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
if-eqz v0, :cond_4
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_81
iget-object v0, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
iput-object v2, p0, Lcom/a/a/ab;->g:Ljava/lang/String;
goto :goto_12
.end method
.method protected final b(Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
const/4 v0, 0x0
:goto_a
if-ge v0, v2, :cond_36
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x5c
if-ne v3, v4, :cond_32
add-int/lit8 v4, v2, -0x1
if-ge v0, v4, :cond_32
add-int/lit8 v0, v0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x6e
if-eq v3, v4, :cond_26
const/16 v4, 0x4e
if-ne v3, v4, :cond_2e
:cond_26
const-string v3, "\n"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_2b
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_2e
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2b
:cond_32
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2b
:cond_36
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final b(Lcom/a/a/ae;Ljava/lang/String;)V
.registers 4
const-string v0, "TYPE"
invoke-static {p1, v0, p2}, Lcom/a/a/ab;->b(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final c()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final c(Lcom/a/a/ae;Ljava/lang/String;)V
.registers 4
const-string v0, "TYPE"
invoke-static {p1, v0, p2}, Lcom/a/a/ab;->b(Lcom/a/a/ae;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final d()Ljava/lang/String;
.registers 2
const-string v0, "3.0"
return-object v0
.end method
.method protected final e()Ljava/util/Set;
.registers 2
sget-object v0, Lcom/a/a/ad;->a:Ljava/util/Set;
return-object v0
.end method