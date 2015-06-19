.class abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.source "SourceFile"
.field protected final _scope:Ljava/lang/Class;
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;
return-void
.end method
.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.registers 4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_14
invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->getScope()Ljava/lang/Class;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;
if-ne v0, v1, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final getScope()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->_scope:Ljava/lang/Class;
return-object v0
.end method