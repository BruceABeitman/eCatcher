.class final Lcom/millennialmedia/a/a/b/a/p$15;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/ab;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
.registers 5
invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/sql/Timestamp;
if-eq v0, v1, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
const-class v0, Ljava/util/Date;
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/aa;
move-result-object v1
new-instance v0, Lcom/millennialmedia/a/a/b/a/p$15$1;
invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/a/p$15$1;-><init>(Lcom/millennialmedia/a/a/b/a/p$15;Lcom/millennialmedia/a/a/aa;)V
goto :goto_9
.end method