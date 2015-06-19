.class final Lcom/squareup/wire/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.field private final a:Ljava/util/Iterator;
.method public constructor <init>(Ljava/util/Iterator;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/wire/i;->a:Ljava/util/Iterator;
return-void
.end method
.method public final hasNext()Z
.registers 2
iget-object v0, p0, Lcom/squareup/wire/i;->a:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
return v0
.end method
.method public final next()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/i;->a:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method