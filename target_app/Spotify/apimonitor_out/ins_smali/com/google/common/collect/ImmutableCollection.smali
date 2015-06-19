.class public abstract Lcom/google/common/collect/ImmutableCollection;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;
.field static final b:Lcom/google/common/collect/ImmutableCollection;
.field private transient a:Lcom/google/common/collect/ImmutableList;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableCollection$EmptyImmutableCollection;-><init>(B)V
sput-object v0, Lcom/google/common/collect/ImmutableCollection;->b:Lcom/google/common/collect/ImmutableCollection;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract a()Z
.end method
.method public final add(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final addAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public abstract b()Lcom/google/common/collect/aq;
.end method
.method public final clear()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
if-eqz p1, :cond_e
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->b()Lcom/google/common/collect/aq;
move-result-object v0
invoke-static {v0, p1}, Lcom/google/common/collect/i;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public containsAll(Ljava/util/Collection;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/common/collect/d;->a(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public e()Lcom/google/common/collect/ImmutableList;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection;->a:Lcom/google/common/collect/ImmutableList;
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->f()Lcom/google/common/collect/ImmutableList;
move-result-object v0
iput-object v0, p0, Lcom/google/common/collect/ImmutableCollection;->a:Lcom/google/common/collect/ImmutableList;
:cond_a
return-object v0
.end method
.method  f()Lcom/google/common/collect/ImmutableList;
.registers 3
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->size()I
move-result v0
packed-switch v0, :pswitch_data_24
new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
:goto_10
return-object v0
:pswitch_11
invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;
move-result-object v0
goto :goto_10
:pswitch_16
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->b()Lcom/google/common/collect/aq;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/collect/aq;->next()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
goto :goto_10
nop
:pswitch_data_24
.packed-switch 0x0
:pswitch_11
:pswitch_16
.end packed-switch
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->size()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public synthetic iterator()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->b()Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final removeAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final retainAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 2
invoke-static {p0}, Lcom/google/common/collect/al;->a(Ljava/util/Collection;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 3
invoke-static {p0, p1}, Lcom/google/common/collect/al;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/common/collect/d;->a(Ljava/util/Collection;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  writeReplace()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;
invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableCollection$SerializedForm;-><init>([Ljava/lang/Object;)V
return-object v0
.end method