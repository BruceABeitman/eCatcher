.class final Lcom/millennialmedia/a/a/b/a/n$1;
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
const-class v1, Ljava/sql/Time;
if-ne v0, v1, :cond_e
new-instance v0, Lcom/millennialmedia/a/a/b/a/n;
invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/n;-><init>()V
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method