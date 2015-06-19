.class  Lcom/millennialmedia/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/ab;
.field private final a:Lcom/millennialmedia/a/a/c/a;
.field private final b:Z
.field private final c:Ljava/lang/Class;
.field private final d:Lcom/millennialmedia/a/a/u;
.field private final e:Lcom/millennialmedia/a/a/l;
.method private constructor <init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
instance-of v0, p1, Lcom/millennialmedia/a/a/u;
if-eqz v0, :cond_28
move-object v0, p1
check-cast v0, Lcom/millennialmedia/a/a/u;
:goto_b
iput-object v0, p0, Lcom/millennialmedia/a/a/z;->d:Lcom/millennialmedia/a/a/u;
instance-of v0, p1, Lcom/millennialmedia/a/a/l;
if-eqz v0, :cond_2a
check-cast p1, Lcom/millennialmedia/a/a/l;
:goto_13
iput-object p1, p0, Lcom/millennialmedia/a/a/z;->e:Lcom/millennialmedia/a/a/l;
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->d:Lcom/millennialmedia/a/a/u;
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->e:Lcom/millennialmedia/a/a/l;
if-eqz v0, :cond_2c
:cond_1d
const/4 v0, 0x1
:goto_1e
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
iput-object p2, p0, Lcom/millennialmedia/a/a/z;->a:Lcom/millennialmedia/a/a/c/a;
iput-boolean p3, p0, Lcom/millennialmedia/a/a/z;->b:Z
iput-object p4, p0, Lcom/millennialmedia/a/a/z;->c:Ljava/lang/Class;
return-void
:cond_28
move-object v0, v1
goto :goto_b
:cond_2a
move-object p1, v1
goto :goto_13
:cond_2c
const/4 v0, 0x0
goto :goto_1e
.end method
.method synthetic constructor <init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;Lcom/millennialmedia/a/a/y$1;)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/a/a/z;-><init>(Ljava/lang/Object;Lcom/millennialmedia/a/a/c/a;ZLjava/lang/Class;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
.registers 10
const/4 v6, 0x0
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->a:Lcom/millennialmedia/a/a/c/a;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->a:Lcom/millennialmedia/a/a/c/a;
invoke-virtual {v0, p2}, Lcom/millennialmedia/a/a/c/a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
iget-boolean v0, p0, Lcom/millennialmedia/a/a/z;->b:Z
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->a:Lcom/millennialmedia/a/a/c/a;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;
move-result-object v0
invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_2d
:cond_1d
const/4 v0, 0x1
:goto_1e
if-eqz v0, :cond_3a
new-instance v0, Lcom/millennialmedia/a/a/y;
iget-object v1, p0, Lcom/millennialmedia/a/a/z;->d:Lcom/millennialmedia/a/a/u;
iget-object v2, p0, Lcom/millennialmedia/a/a/z;->e:Lcom/millennialmedia/a/a/l;
move-object v3, p1
move-object v4, p2
move-object v5, p0
invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/a/a/y;-><init>(Lcom/millennialmedia/a/a/u;Lcom/millennialmedia/a/a/l;Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/ab;Lcom/millennialmedia/a/a/y$1;)V
:goto_2c
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_1e
:cond_2f
iget-object v0, p0, Lcom/millennialmedia/a/a/z;->c:Ljava/lang/Class;
invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
goto :goto_1e
:cond_3a
move-object v0, v6
goto :goto_2c
.end method