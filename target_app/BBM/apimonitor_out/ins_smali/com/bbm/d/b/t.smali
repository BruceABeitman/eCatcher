.class final Lcom/bbm/d/b/t;
.super Ljava/lang/Object;
.source "TransformingList.java"
.implements Lcom/bbm/j/h;
.field final synthetic a:Lcom/bbm/d/b/r;
.method constructor <init>(Lcom/bbm/d/b/r;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/b/t;->a:Lcom/bbm/d/b/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/d/b/t;->a:Lcom/bbm/d/b/r;
iget-boolean v1, v0, Lcom/bbm/d/b/r;->h:Z
if-nez v1, :cond_c
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/d/b/r;->h:Z
invoke-virtual {v0}, Lcom/bbm/d/b/r;->a()V
:cond_c
return-void
.end method