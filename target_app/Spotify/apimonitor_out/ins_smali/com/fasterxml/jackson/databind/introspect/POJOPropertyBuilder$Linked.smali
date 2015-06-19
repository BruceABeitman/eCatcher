.class final Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final explicitName:Ljava/lang/String;
.field public final isMarkedIgnored:Z
.field public final isVisible:Z
.field public final next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.field public final value:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-nez p3, :cond_13
move-object p3, v0
move-object v0, p0
:goto_c
iput-object p3, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z
return-void
:cond_13
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1c
move-object p3, v0
move-object v0, p0
goto :goto_c
:cond_1c
move-object v0, p0
goto :goto_c
.end method
.method static synthetic access$000(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->append(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
return-object v0
.end method
.method private append(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-nez v0, :cond_9
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->append(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
goto :goto_8
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "[visible="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-eqz v1, :cond_46
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_46
return-object v0
.end method
.method public final trimByVisibility()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-nez v0, :cond_6
:goto_5
return-object p0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->trimByVisibility()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
if-eqz v1, :cond_1e
iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
if-nez v1, :cond_19
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object p0
goto :goto_5
:cond_19
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object p0
goto :goto_5
:cond_1e
iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
if-eqz v1, :cond_24
move-object p0, v0
goto :goto_5
:cond_24
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
if-ne v1, v2, :cond_2f
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object p0
goto :goto_5
:cond_2f
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
if-eqz v1, :cond_38
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object p0
goto :goto_5
:cond_38
move-object p0, v0
goto :goto_5
.end method
.method public final withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V
move-object p0, v0
goto :goto_4
.end method
.method public final withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;
iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V
move-object p0, v0
goto :goto_4
.end method
.method public final withoutIgnored()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 3
:goto_0
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-nez v0, :cond_a
const/4 p0, 0x0
:goto_9
:cond_9
return-object p0
:cond_a
iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
goto :goto_0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutIgnored()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-eq v0, v1, :cond_9
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object p0
goto :goto_9
.end method
.method public final withoutNonVisible()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_5
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z
if-eqz v1, :cond_d
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withNext(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
:cond_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutNonVisible()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
move-result-object v0
goto :goto_5
.end method