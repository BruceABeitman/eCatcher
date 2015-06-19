.class  Lcom/google/b/c/l;
.super Lcom/google/b/c/a;
.source "ImmutableEntry.java"
.implements Ljava/io/Serializable;
.field private final a:Ljava/lang/Object;
.field private final b:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/google/b/c/a;-><init>()V
iput-object p1, p0, Lcom/google/b/c/l;->a:Ljava/lang/Object;
iput-object p2, p0, Lcom/google/b/c/l;->b:Ljava/lang/Object;
return-void
.end method
.method public getKey()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/c/l;->a:Ljava/lang/Object;
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/b/c/l;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method