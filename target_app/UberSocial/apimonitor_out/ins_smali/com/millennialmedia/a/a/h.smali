.class public final Lcom/millennialmedia/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/millennialmedia/a/a/b/g;
.field private b:Lcom/millennialmedia/a/a/x;
.field private c:Lcom/millennialmedia/a/a/e;
.field private final d:Ljava/util/Map;
.field private final e:Ljava/util/List;
.field private final f:Ljava/util/List;
.field private g:Z
.field private h:Ljava/lang/String;
.field private i:I
.field private j:I
.field private k:Z
.field private l:Z
.field private m:Z
.field private n:Z
.field private o:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/millennialmedia/a/a/b/g;->a:Lcom/millennialmedia/a/a/b/g;
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
sget-object v0, Lcom/millennialmedia/a/a/x;->a:Lcom/millennialmedia/a/a/x;
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->b:Lcom/millennialmedia/a/a/x;
sget-object v0, Lcom/millennialmedia/a/a/d;->a:Lcom/millennialmedia/a/a/d;
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->c:Lcom/millennialmedia/a/a/e;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->d:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->f:Ljava/util/List;
iput v1, p0, Lcom/millennialmedia/a/a/h;->i:I
iput v1, p0, Lcom/millennialmedia/a/a/h;->j:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->m:Z
return-void
.end method
.method private a(Ljava/lang/String;IILjava/util/List;)V
.registers 8
const/4 v2, 0x2
if-eqz p1, :cond_3c
const-string v0, ""
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3c
new-instance v0, Lcom/millennialmedia/a/a/a;
invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/a;-><init>(Ljava/lang/String;)V
:goto_14
const-class v1, Ljava/util/Date;
invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->c(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;
move-result-object v1
invoke-static {v1, v0}, Lcom/millennialmedia/a/a/y;->a(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
move-result-object v1
invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-class v1, Ljava/sql/Timestamp;
invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->c(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;
move-result-object v1
invoke-static {v1, v0}, Lcom/millennialmedia/a/a/y;->a(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
move-result-object v1
invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-class v1, Ljava/sql/Date;
invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->c(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;
move-result-object v1
invoke-static {v1, v0}, Lcom/millennialmedia/a/a/y;->a(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
move-result-object v0
invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_3b
return-void
:cond_3c
if-eq p2, v2, :cond_3b
if-eq p3, v2, :cond_3b
new-instance v0, Lcom/millennialmedia/a/a/a;
invoke-direct {v0, p2, p3}, Lcom/millennialmedia/a/a/a;-><init>(II)V
goto :goto_14
.end method
.method public a()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->o:Z
return-object p0
.end method
.method public a(D)Lcom/millennialmedia/a/a/h;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/g;->a(D)Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public a(I)Lcom/millennialmedia/a/a/h;
.registers 3
iput p1, p0, Lcom/millennialmedia/a/a/h;->i:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->h:Ljava/lang/String;
return-object p0
.end method
.method public a(II)Lcom/millennialmedia/a/a/h;
.registers 4
iput p1, p0, Lcom/millennialmedia/a/a/h;->i:I
iput p2, p0, Lcom/millennialmedia/a/a/h;->j:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->h:Ljava/lang/String;
return-object p0
.end method
.method public a(Lcom/millennialmedia/a/a/ab;)Lcom/millennialmedia/a/a/h;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Lcom/millennialmedia/a/a/b;)Lcom/millennialmedia/a/a/h;
.registers 5
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/b;ZZ)Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public a(Lcom/millennialmedia/a/a/d;)Lcom/millennialmedia/a/a/h;
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/h;->c:Lcom/millennialmedia/a/a/e;
return-object p0
.end method
.method public a(Lcom/millennialmedia/a/a/e;)Lcom/millennialmedia/a/a/h;
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/h;->c:Lcom/millennialmedia/a/a/e;
return-object p0
.end method
.method public a(Lcom/millennialmedia/a/a/x;)Lcom/millennialmedia/a/a/h;
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/h;->b:Lcom/millennialmedia/a/a/x;
return-object p0
.end method
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/a/a/h;
.registers 6
const/4 v1, 0x0
instance-of v0, p2, Lcom/millennialmedia/a/a/u;
if-nez v0, :cond_d
instance-of v0, p2, Lcom/millennialmedia/a/a/l;
if-nez v0, :cond_d
instance-of v0, p2, Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_32
:cond_d
const/4 v0, 0x1
:goto_e
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
instance-of v0, p2, Lcom/millennialmedia/a/a/l;
if-nez v0, :cond_19
instance-of v0, p2, Lcom/millennialmedia/a/a/u;
if-eqz v0, :cond_22
:cond_19
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->f:Ljava/util/List;
invoke-static {p1, p2}, Lcom/millennialmedia/a/a/y;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_22
instance-of v0, p2, Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
check-cast p2, Lcom/millennialmedia/a/a/aa;
invoke-static {p1, p2}, Lcom/millennialmedia/a/a/b/a/p;->b(Ljava/lang/Class;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_31
return-object p0
:cond_32
move v0, v1
goto :goto_e
.end method
.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/h;
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/h;->h:Ljava/lang/String;
return-object p0
.end method
.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/millennialmedia/a/a/h;
.registers 5
instance-of v0, p2, Lcom/millennialmedia/a/a/u;
if-nez v0, :cond_10
instance-of v0, p2, Lcom/millennialmedia/a/a/l;
if-nez v0, :cond_10
instance-of v0, p2, Lcom/millennialmedia/a/a/i;
if-nez v0, :cond_10
instance-of v0, p2, Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_49
:cond_10
const/4 v0, 0x1
:goto_11
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
instance-of v0, p2, Lcom/millennialmedia/a/a/i;
if-eqz v0, :cond_20
iget-object v1, p0, Lcom/millennialmedia/a/a/h;->d:Ljava/util/Map;
move-object v0, p2
check-cast v0, Lcom/millennialmedia/a/a/i;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_20
instance-of v0, p2, Lcom/millennialmedia/a/a/u;
if-nez v0, :cond_28
instance-of v0, p2, Lcom/millennialmedia/a/a/l;
if-eqz v0, :cond_35
:cond_28
invoke-static {p1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
invoke-static {v0, p2}, Lcom/millennialmedia/a/a/y;->b(Lcom/millennialmedia/a/a/c/a;Ljava/lang/Object;)Lcom/millennialmedia/a/a/ab;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_35
instance-of v0, p2, Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
invoke-static {p1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;
move-result-object v1
check-cast p2, Lcom/millennialmedia/a/a/aa;
invoke-static {v1, p2}, Lcom/millennialmedia/a/a/b/a/p;->a(Lcom/millennialmedia/a/a/c/a;Lcom/millennialmedia/a/a/aa;)Lcom/millennialmedia/a/a/ab;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_48
return-object p0
:cond_49
const/4 v0, 0x0
goto :goto_11
.end method
.method public varargs a([I)Lcom/millennialmedia/a/a/h;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/g;->a([I)Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public varargs a([Lcom/millennialmedia/a/a/b;)Lcom/millennialmedia/a/a/h;
.registers 7
const/4 v4, 0x1
array-length v1, p1
const/4 v0, 0x0
:goto_3
if-ge v0, v1, :cond_12
aget-object v2, p1, v0
iget-object v3, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
invoke-virtual {v3, v2, v4, v4}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/b;ZZ)Lcom/millennialmedia/a/a/b/g;
move-result-object v2
iput-object v2, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_12
return-object p0
.end method
.method public b()Lcom/millennialmedia/a/a/h;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/g;->c()Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public b(Lcom/millennialmedia/a/a/b;)Lcom/millennialmedia/a/a/h;
.registers 5
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/b;ZZ)Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public c()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->g:Z
return-object p0
.end method
.method public d()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->k:Z
return-object p0
.end method
.method public e()Lcom/millennialmedia/a/a/h;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/g;->b()Lcom/millennialmedia/a/a/b/g;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
return-object p0
.end method
.method public f()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->n:Z
return-object p0
.end method
.method public g()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->m:Z
return-object p0
.end method
.method public h()Lcom/millennialmedia/a/a/h;
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/a/a/h;->l:Z
return-object p0
.end method
.method public i()Lcom/millennialmedia/a/a/f;
.registers 13
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->e:Ljava/util/List;
invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->f:Ljava/util/List;
invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/millennialmedia/a/a/h;->h:Ljava/lang/String;
iget v1, p0, Lcom/millennialmedia/a/a/h;->i:I
iget v2, p0, Lcom/millennialmedia/a/a/h;->j:I
invoke-direct {p0, v0, v1, v2, v11}, Lcom/millennialmedia/a/a/h;->a(Ljava/lang/String;IILjava/util/List;)V
new-instance v0, Lcom/millennialmedia/a/a/f;
iget-object v1, p0, Lcom/millennialmedia/a/a/h;->a:Lcom/millennialmedia/a/a/b/g;
iget-object v2, p0, Lcom/millennialmedia/a/a/h;->c:Lcom/millennialmedia/a/a/e;
iget-object v3, p0, Lcom/millennialmedia/a/a/h;->d:Ljava/util/Map;
iget-boolean v4, p0, Lcom/millennialmedia/a/a/h;->g:Z
iget-boolean v5, p0, Lcom/millennialmedia/a/a/h;->k:Z
iget-boolean v6, p0, Lcom/millennialmedia/a/a/h;->o:Z
iget-boolean v7, p0, Lcom/millennialmedia/a/a/h;->m:Z
iget-boolean v8, p0, Lcom/millennialmedia/a/a/h;->n:Z
iget-boolean v9, p0, Lcom/millennialmedia/a/a/h;->l:Z
iget-object v10, p0, Lcom/millennialmedia/a/a/h;->b:Lcom/millennialmedia/a/a/x;
invoke-direct/range {v0 .. v11}, Lcom/millennialmedia/a/a/f;-><init>(Lcom/millennialmedia/a/a/b/g;Lcom/millennialmedia/a/a/e;Ljava/util/Map;ZZZZZZLcom/millennialmedia/a/a/x;Ljava/util/List;)V
return-object v0
.end method