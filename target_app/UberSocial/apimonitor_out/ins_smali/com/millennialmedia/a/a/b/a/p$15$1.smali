.class  Lcom/millennialmedia/a/a/b/a/p$15$1;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/aa;
.field final synthetic b:Lcom/millennialmedia/a/a/b/a/p$15;
.method constructor <init>(Lcom/millennialmedia/a/a/b/a/p$15;Lcom/millennialmedia/a/a/aa;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->b:Lcom/millennialmedia/a/a/b/a/p$15;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Timestamp;
.registers 6
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
if-eqz v0, :cond_15
new-instance v1, Ljava/sql/Timestamp;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v2
invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V
move-object v0, v1
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/sql/Timestamp;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$15$1;->a(Lcom/millennialmedia/a/a/d/d;Ljava/sql/Timestamp;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/sql/Timestamp;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$15$1;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$15$1;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Timestamp;
move-result-object v0
return-object v0
.end method