.class final Lcom/millennialmedia/a/a/b/a/o;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private final a:Lcom/millennialmedia/a/a/f;
.field private final b:Lcom/millennialmedia/a/a/aa;
.field private final c:Ljava/lang/reflect/Type;
.method constructor <init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/reflect/Type;)V
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/o;->a:Lcom/millennialmedia/a/a/f;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/aa;
iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;
return-void
.end method
.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
.registers 4
if-eqz p2, :cond_12
const-class v0, Ljava/lang/Object;
if-eq p1, v0, :cond_e
instance-of v0, p1, Ljava/lang/reflect/TypeVariable;
if-nez v0, :cond_e
instance-of v0, p1, Ljava/lang/Class;
if-eqz v0, :cond_12
:cond_e
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object p1
:cond_12
return-object p1
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 6
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/aa;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;
invoke-direct {p0, v1, p2}, Lcom/millennialmedia/a/a/b/a/o;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/o;->c:Ljava/lang/reflect/Type;
if-eq v1, v2, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->a:Lcom/millennialmedia/a/a/f;
invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
move-result-object v0
instance-of v1, v0, Lcom/millennialmedia/a/a/b/a/k;
if-nez v1, :cond_1e
:goto_1a
:cond_1a
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
return-void
:cond_1e
iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/aa;
instance-of v1, v1, Lcom/millennialmedia/a/a/b/a/k;
if-nez v1, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/aa;
goto :goto_1a
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/o;->b:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method