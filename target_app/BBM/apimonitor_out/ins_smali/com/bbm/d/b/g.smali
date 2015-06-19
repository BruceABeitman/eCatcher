.class final Lcom/bbm/d/b/g;
.super Lcom/bbm/j/a;
.source "ComputedList.java"
.field final synthetic a:Lcom/bbm/d/b/f;
.method constructor <init>(Lcom/bbm/d/b/f;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/b/g;->a:Lcom/bbm/d/b/f;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final bridge synthetic a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/d/b/g;->a:Lcom/bbm/d/b/f;
invoke-virtual {v0}, Lcom/bbm/d/b/f;->a()Ljava/util/List;
move-result-object v0
return-object v0
.end method