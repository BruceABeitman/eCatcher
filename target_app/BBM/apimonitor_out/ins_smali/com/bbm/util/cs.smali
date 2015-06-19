.class public final Lcom/bbm/util/cs;
.super Lcom/bbm/d/a/a/a;
.source "MutableList.java"
.implements Lcom/bbm/j/j;
.implements Lcom/bbm/j/r;
.implements Lcom/bbm/j/w;
.field public a:Ljava/util/List;
.field private b:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/util/cs;->a:Ljava/util/List;
return-void
.end method
.method public final a(I)Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/util/cs;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a()Ljava/util/List;
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/util/cs;->a:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/bbm/util/cs;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/bbm/util/cs;->c()V
return-void
.end method
.method public final b()Z
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v0, p0, Lcom/bbm/util/cs;->b:Z
return v0
.end method
.method public final d()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/util/cs;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final synthetic e()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/bbm/util/cs;->a()Ljava/util/List;
move-result-object v0
return-object v0
.end method