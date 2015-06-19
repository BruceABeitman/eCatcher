.class public final Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$UUIDGenerator;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.source "ObjectIdGenerators.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$UUIDGenerator;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/Class;)V
.registers 3
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.registers 4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 2
return-object p0
.end method
.method public bridge synthetic generateId(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$UUIDGenerator;->generateId(Ljava/lang/Object;)Ljava/util/UUID;
move-result-object v0
return-object v0
.end method
.method public generateId(Ljava/lang/Object;)Ljava/util/UUID;
.registers 3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
return-object v0
.end method
.method public key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
return-object v0
.end method
.method public newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 2
return-object p0
.end method