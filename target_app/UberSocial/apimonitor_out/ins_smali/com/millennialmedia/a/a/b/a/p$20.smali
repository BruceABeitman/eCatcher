.class final Lcom/millennialmedia/a/a/b/a/p$20;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/ab;
.field final synthetic a:Lcom/millennialmedia/a/a/c/a;
.field final synthetic b:Lcom/millennialmedia/a/a/aa;
.method constructor <init>(Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/aa;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/p$20;->a:Lcom/millennialmedia/a/a/c/a;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/p$20;->b:Lcom/millennialmedia/a/a/aa;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$20;->a:Lcom/millennialmedia/a/a/c/a;
invoke-virtual {p2, v0}, Lcom/millennialmedia/a/a/c/a;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/p$20;->b:Lcom/millennialmedia/a/a/aa;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method