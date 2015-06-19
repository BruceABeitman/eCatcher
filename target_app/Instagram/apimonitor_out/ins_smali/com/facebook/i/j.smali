.class public final Lcom/facebook/i/j;
.super Ljava/lang/Object;
.source "Phonemetadata.java"
.implements Ljava/io/Externalizable;
.field private a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;
return-void
.end method
.method private b()I
.registers 2
iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;
return-object v0
.end method
.method public final readExternal(Ljava/io/ObjectInput;)V
.registers 6
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_17
new-instance v2, Lcom/facebook/i/i;
invoke-direct {v2}, Lcom/facebook/i/i;-><init>()V
invoke-virtual {v2, p1}, Lcom/facebook/i/i;->readExternal(Ljava/io/ObjectInput;)V
iget-object v3, p0, Lcom/facebook/i/j;->a:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_17
return-void
.end method
.method public final writeExternal(Ljava/io/ObjectOutput;)V
.registers 5
invoke-direct {p0}, Lcom/facebook/i/j;->b()I
move-result v2
invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V
const/4 v0, 0x0
move v1, v0
:goto_9
if-ge v1, v2, :cond_1a
iget-object v0, p0, Lcom/facebook/i/j;->a:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/i/i;
invoke-virtual {v0, p1}, Lcom/facebook/i/i;->writeExternal(Ljava/io/ObjectOutput;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_1a
return-void
.end method