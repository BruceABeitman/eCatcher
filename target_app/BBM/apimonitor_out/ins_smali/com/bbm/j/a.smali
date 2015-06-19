.class public abstract Lcom/bbm/j/a;
.super Ljava/lang/Object;
.source "ComputedValue.java"
.implements Lcom/bbm/j/r;
.field private a:Lcom/bbm/j/d;
.field  b:Ljava/lang/Object;
.field public c:Z
.field private final d:Lcom/bbm/j/i;
.field private e:Ljava/util/List;
.field private final f:Lcom/bbm/j/q;
.field private final g:Lcom/bbm/j/h;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;
iput-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
new-instance v0, Lcom/bbm/j/i;
invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V
iput-object v0, p0, Lcom/bbm/j/a;->d:Lcom/bbm/j/i;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/j/a;->c:Z
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
new-instance v0, Lcom/bbm/j/b;
invoke-direct {v0, p0}, Lcom/bbm/j/b;-><init>(Lcom/bbm/j/a;)V
iput-object v0, p0, Lcom/bbm/j/a;->f:Lcom/bbm/j/q;
new-instance v0, Lcom/bbm/j/c;
invoke-direct {v0, p0}, Lcom/bbm/j/c;-><init>(Lcom/bbm/j/a;)V
iput-object v0, p0, Lcom/bbm/j/a;->g:Lcom/bbm/j/h;
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/g;
iget-object v2, p0, Lcom/bbm/j/a;->g:Lcom/bbm/j/h;
invoke-interface {v0, v2}, Lcom/bbm/j/g;->b(Lcom/bbm/j/h;)V
goto :goto_4
:cond_16
return-void
.end method
.method private f()V
.registers 4
iget-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
invoke-direct {p0, v0}, Lcom/bbm/j/a;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/bbm/j/a;->f:Lcom/bbm/j/q;
invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/q;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
iget-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/g;
iget-object v2, p0, Lcom/bbm/j/a;->g:Lcom/bbm/j/h;
invoke-interface {v0, v2}, Lcom/bbm/j/g;->a(Lcom/bbm/j/h;)V
goto :goto_13
:cond_25
return-void
.end method
.method public abstract a()Ljava/lang/Object;
.end method
.method public final a(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/j/a;->d:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method public final b()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
sget-object v1, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;
if-eq v0, v1, :cond_10
iget-boolean v0, p0, Lcom/bbm/j/a;->c:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
sget-object v1, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;
if-ne v0, v1, :cond_13
:cond_10
invoke-direct {p0}, Lcom/bbm/j/a;->f()V
:cond_13
sget-object v0, Lcom/bbm/j/d;->a:Lcom/bbm/j/d;
iput-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
iget-object v0, p0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final b(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/j/a;->d:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
sget-object v1, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;
if-ne v0, v1, :cond_a
sget-object v0, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;
iput-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
:cond_a
iget-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
sget-object v1, Lcom/bbm/j/d;->c:Lcom/bbm/j/d;
if-ne v0, v1, :cond_11
:cond_10
:goto_10
return-void
:cond_11
iget-boolean v0, p0, Lcom/bbm/j/a;->c:Z
if-eqz v0, :cond_22
sget-object v0, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;
iput-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/j/a;->d:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
goto :goto_10
:cond_22
iget-object v0, p0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
invoke-direct {p0}, Lcom/bbm/j/a;->f()V
iget-object v1, p0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
sget-object v1, Lcom/bbm/j/d;->a:Lcom/bbm/j/d;
if-ne v0, v1, :cond_39
sget-object v0, Lcom/bbm/j/d;->b:Lcom/bbm/j/d;
iput-object v0, p0, Lcom/bbm/j/a;->a:Lcom/bbm/j/d;
:cond_39
iget-object v0, p0, Lcom/bbm/j/a;->d:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
goto :goto_10
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
invoke-direct {p0, v0}, Lcom/bbm/j/a;->a(Ljava/util/List;)V
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/j/a;->e:Ljava/util/List;
return-void
.end method
.method public final e()Ljava/lang/Object;
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
invoke-virtual {p0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method