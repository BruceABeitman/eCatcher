.class final Lcom/bbm/d/a/a/c;
.super Lcom/google/b/c/h;
.source "KeyedList.java"
.field final synthetic a:Ljava/util/ListIterator;
.field final synthetic b:Lcom/bbm/d/a/a/b;
.method constructor <init>(Lcom/bbm/d/a/a/b;Ljava/util/ListIterator;)V
.registers 3
iput-object p1, p0, Lcom/bbm/d/a/a/c;->b:Lcom/bbm/d/a/a/b;
iput-object p2, p0, Lcom/bbm/d/a/a/c;->a:Ljava/util/ListIterator;
invoke-direct {p0}, Lcom/google/b/c/h;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/ListIterator;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/c;->a:Ljava/util/ListIterator;
return-object v0
.end method
.method protected final bridge synthetic b()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/c;->a:Ljava/util/ListIterator;
return-object v0
.end method
.method protected final bridge synthetic c()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/c;->a:Ljava/util/ListIterator;
return-object v0
.end method
.method public final remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method