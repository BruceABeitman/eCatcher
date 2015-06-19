.class  Lcom/millennialmedia/a/a/b/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/millennialmedia/a/a/b/p;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/millennialmedia/a/a/b/p;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;
if-nez v1, :cond_6
:goto_5
return-object v0
:cond_6
iget-object v2, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;
iput-object v0, v1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;
iget-object v0, v1, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;
:goto_c
if-eqz v0, :cond_16
iput-object v2, v0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;
iget-object v2, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;
move-object v3, v2
move-object v2, v0
move-object v0, v3
goto :goto_c
:cond_16
iput-object v2, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;
move-object v0, v1
goto :goto_5
.end method
.method  a(Lcom/millennialmedia/a/a/b/p;)V
.registers 4
const/4 v0, 0x0
:goto_1
if-eqz p1, :cond_b
iput-object v0, p1, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;
iget-object v0, p1, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;
move-object v1, v0
move-object v0, p1
move-object p1, v1
goto :goto_1
:cond_b
iput-object v0, p0, Lcom/millennialmedia/a/a/b/l;->a:Lcom/millennialmedia/a/a/b/p;
return-void
.end method