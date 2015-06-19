.class public final Lcom/c/e;
.super Ljava/lang/Object;
.implements Ljava/util/Iterator;
.field final a:Lcom/c/dj;
.field private final b:Ljava/util/Iterator;
.field private final c:Lcom/c/y;
.field private d:Ljava/lang/Object;
.field private e:Z
.method public constructor <init>(Lcom/c/dj;Ljava/util/Iterator;Lcom/c/y;)V
.registers 5
iput-object p1, p0, Lcom/c/e;->a:Lcom/c/dj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/c/e;->b:Ljava/util/Iterator;
iput-object p3, p0, Lcom/c/e;->c:Lcom/c/y;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/e;->e:Z
return-void
.end method
.method public hasNext()Z
.registers 3
:cond_0
iget-boolean v0, p0, Lcom/c/e;->e:Z
if-nez v0, :cond_22
iget-object v0, p0, Lcom/c/e;->b:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/c/e;->b:Ljava/util/Iterator;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/c/e;->d:Ljava/lang/Object;
iget-object v0, p0, Lcom/c/e;->c:Lcom/c/y;
iget-object v1, p0, Lcom/c/e;->d:Ljava/lang/Object;
invoke-interface {v0, v1}, Lcom/c/y;->a(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/c/e;->e:Z
:goto_21
return v0
:cond_22
iget-boolean v0, p0, Lcom/c/e;->e:Z
goto :goto_21
.end method
.method public next()Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/c/e;->hasNext()Z
move-result v0
if-nez v0, :cond_c
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
:cond_c
iget-object v0, p0, Lcom/c/e;->d:Ljava/lang/Object;
const/4 v1, 0x0
iput-object v1, p0, Lcom/c/e;->d:Ljava/lang/Object;
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/c/e;->e:Z
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method