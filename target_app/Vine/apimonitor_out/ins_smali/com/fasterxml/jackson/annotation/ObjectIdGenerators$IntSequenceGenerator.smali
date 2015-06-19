.class public final Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.source "ObjectIdGenerators.java"
.field private static final serialVersionUID:J = 0x1L
.field protected transient _nextValue:I
.method public constructor <init>()V
.registers 3
const-class v0, Ljava/lang/Object;
const/4 v1, -0x1
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;-><init>(Ljava/lang/Class;I)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;I)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;-><init>(Ljava/lang/Class;)V
iput p2, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_nextValue:I
return-void
.end method
.method public bridge synthetic canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.registers 3
invoke-super {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
move-result v0
return v0
.end method
.method public forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_scope:Ljava/lang/Class;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;
iget v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_nextValue:I
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;-><init>(Ljava/lang/Class;I)V
move-object p0, v0
goto :goto_4
.end method
.method public generateId(Ljava/lang/Object;)Ljava/lang/Integer;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_nextValue:I
iget v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_nextValue:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_nextValue:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic generateId(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected initialValue()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_scope:Ljava/lang/Class;
invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
return-object v0
.end method
.method public newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;
iget-object v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->_scope:Ljava/lang/Class;
invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;->initialValue()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$IntSequenceGenerator;-><init>(Ljava/lang/Class;I)V
return-object v0
.end method