.class  Lcom/google/common/collect/ImmutableList$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J
.field final elements:[Ljava/lang/Object;
.method constructor <init>([Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;
return-void
.end method
.method  readResolve()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SerializedForm;->elements:[Ljava/lang/Object;
invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method