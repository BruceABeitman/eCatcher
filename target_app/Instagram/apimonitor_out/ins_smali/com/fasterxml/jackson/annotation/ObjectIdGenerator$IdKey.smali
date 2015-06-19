.class public final Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.super Ljava/lang/Object;
.source "ObjectIdGenerator.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private final hashCode:I
.field private final key:Ljava/lang/Object;
.field private final scope:Ljava/lang/Class;
.field private final type:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;
iput-object p3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;
invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I
move-result v0
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
if-eqz p2, :cond_21
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
xor-int/2addr v0, v1
:cond_21
iput v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->hashCode:I
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;
iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->type:Ljava/lang/Class;
if-ne v2, v3, :cond_2d
iget-object v2, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->scope:Ljava/lang/Class;
if-eq v2, v3, :cond_4
:cond_2d
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->hashCode:I
return v0
.end method