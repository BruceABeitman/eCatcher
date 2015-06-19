.class  Lcom/google/common/collect/ImmutableEntry;
.super Lcom/google/common/collect/b;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private final key:Ljava/lang/Object;
.field private final value:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;
iput-object p2, p0, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;
return-void
.end method
.method public getKey()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableEntry;->key:Ljava/lang/Object;
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableEntry;->value:Ljava/lang/Object;
return-object v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method