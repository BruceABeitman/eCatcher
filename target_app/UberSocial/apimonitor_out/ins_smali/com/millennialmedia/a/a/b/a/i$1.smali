.class final Lcom/millennialmedia/a/a/b/a/i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/ab;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
.registers 6
const/4 v1, 0x0
invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;
move-result-object v0
const-class v2, Ljava/lang/Object;
if-ne v0, v2, :cond_f
new-instance v0, Lcom/millennialmedia/a/a/b/a/i;
invoke-direct {v0, p1, v1}, Lcom/millennialmedia/a/a/b/a/i;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/b/a/i$1;)V
:goto_e
return-object v0
:cond_f
move-object v0, v1
goto :goto_e
.end method