.class public abstract Lcom/google/a/g;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Z
.field private c:Ljava/util/Hashtable;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/a/g;->b:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/a/g;->a:Ljava/lang/String;
return-void
.end method
.method private static a(Lcom/google/a/m$a;Z)I
.registers 3
if-eqz p1, :cond_4
const/4 v0, 0x2
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Lcom/google/a/m$a;->a()I
move-result v0
goto :goto_3
.end method
.method private a(Lcom/google/a/f;I)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1}, Lcom/google/a/g;->d(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
if-nez v0, :cond_c
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V
throw v0
:cond_c
invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/google/a/b;)V
.registers 3
invoke-virtual {p1}, Lcom/google/a/b;->c()Lcom/google/a/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/a/g;->a(Lcom/google/a/c;)V
return-void
.end method
.method private static a(Lcom/google/a/f;)V
.registers 3
invoke-virtual {p0}, Lcom/google/a/f;->d()Z
move-result v0
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "This is a repeated extension."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method private a(Lcom/google/a/f;ILjava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Lcom/google/a/g;->a()V
invoke-direct {p0, p1}, Lcom/google/a/g;->e(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
return-void
.end method
.method private a(Lcom/google/a/f;Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0}, Lcom/google/a/g;->a()V
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {p1}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private a(Ljava/io/InputStream;)V
.registers 3
invoke-static {p1}, Lcom/google/a/c;->a(Ljava/io/InputStream;)Lcom/google/a/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/a/g;->a(Lcom/google/a/c;)V
return-void
.end method
.method private a(Ljava/io/OutputStream;)V
.registers 3
invoke-static {p1}, Lcom/google/a/d;->a(Ljava/io/OutputStream;)Lcom/google/a/d;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
invoke-virtual {v0}, Lcom/google/a/d;->h()V
return-void
.end method
.method protected static a(Lcom/google/a/c;I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/google/a/c;->a(I)Z
move-result v0
return v0
.end method
.method private a(Lcom/google/a/g;)Z
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
iget-object v2, p1, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Type mismtach."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
:cond_1a
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
iget-object v3, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
iget-object v4, p1, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v3, :cond_40
if-eqz v0, :cond_40
invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
move v0, v1
goto :goto_21
:cond_40
if-nez v3, :cond_44
if-eqz v0, :cond_1a
:cond_44
move v0, v1
goto :goto_21
.end method
.method private b(Lcom/google/a/d;)V
.registers 7
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
:goto_6
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_d
return-void
:cond_d
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0}, Lcom/google/a/f;->d()Z
move-result v3
if-eqz v3, :cond_29
invoke-virtual {v0}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v3
check-cast v1, Ljava/util/Vector;
invoke-virtual {v3, v0, v1, p1}, Lcom/google/a/m$a;->a(Lcom/google/a/f;Ljava/util/Vector;Lcom/google/a/d;)V
goto :goto_6
:cond_29
invoke-virtual {v0}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4, v0, v1, p1}, Lcom/google/a/m$a;->a(ZLcom/google/a/f;Ljava/lang/Object;Lcom/google/a/d;)V
goto :goto_6
.end method
.method private b(Lcom/google/a/f;Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0}, Lcom/google/a/g;->a()V
invoke-direct {p0, p1}, Lcom/google/a/g;->e(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method private b(Lcom/google/a/c;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
and-int/lit8 v2, p2, 0x7
ushr-int/lit8 v3, p2, 0x3
iget-object v4, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v4, v3}, Lcom/google/a/f;->a(Ljava/lang/String;I)Lcom/google/a/f;
move-result-object v3
if-eqz v3, :cond_3d
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
invoke-static {v4, v0}, Lcom/google/a/g;->a(Lcom/google/a/m$a;Z)I
move-result v4
if-ne v2, v4, :cond_20
move v2, v0
:goto_19
if-eqz v2, :cond_3f
invoke-virtual {p1, p2}, Lcom/google/a/c;->a(I)Z
move-result v0
:goto_1f
return v0
:cond_20
invoke-virtual {v3}, Lcom/google/a/f;->d()Z
move-result v4
if-eqz v4, :cond_3d
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
invoke-virtual {v4}, Lcom/google/a/m$a;->b()Z
move-result v4
if-eqz v4, :cond_3d
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
invoke-static {v4, v1}, Lcom/google/a/g;->a(Lcom/google/a/m$a;Z)I
move-result v4
if-ne v2, v4, :cond_3d
move v2, v0
move v0, v1
goto :goto_19
:cond_3d
move v2, v1
goto :goto_19
:cond_3f
if-eqz v0, :cond_84
invoke-virtual {p1}, Lcom/google/a/c;->r()I
move-result v0
invoke-virtual {p1, v0}, Lcom/google/a/c;->b(I)I
move-result v2
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v0
sget-object v4, Lcom/google/a/m$a;->b:Lcom/google/a/m$a;
if-ne v0, v4, :cond_7d
:goto_51
invoke-virtual {p1}, Lcom/google/a/c;->u()I
move-result v0
if-gtz v0, :cond_5c
:goto_57
invoke-virtual {p1, v2}, Lcom/google/a/c;->c(I)V
:goto_5a
move v0, v1
goto :goto_1f
:cond_5c
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v4
invoke-virtual {v3}, Lcom/google/a/f;->f()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/e;
invoke-virtual {v0, v4}, Lcom/google/a/e;->a(I)Lcom/google/a/e;
move-result-object v0
if-nez v0, :cond_6e
move v0, v1
goto :goto_1f
:cond_6e
invoke-direct {p0, v3, v0}, Lcom/google/a/g;->b(Lcom/google/a/f;Ljava/lang/Object;)V
goto :goto_51
:cond_72
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/a/m$a;->a(Lcom/google/a/c;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, v3, v0}, Lcom/google/a/g;->b(Lcom/google/a/f;Ljava/lang/Object;)V
:cond_7d
invoke-virtual {p1}, Lcom/google/a/c;->u()I
move-result v0
if-gtz v0, :cond_72
goto :goto_57
:cond_84
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v0
sget-object v2, Lcom/google/a/m$a;->d:Lcom/google/a/m$a;
if-ne v0, v2, :cond_d7
const/4 v2, 0x0
invoke-virtual {v3}, Lcom/google/a/f;->d()Z
move-result v0
if-nez v0, :cond_10d
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v0, v3}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {v3}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_c5
:goto_a3
check-cast v0, Lcom/google/a/g;
if-eqz v0, :cond_10d
iget-boolean v4, v0, Lcom/google/a/g;->b:Z
if-nez v4, :cond_10d
:goto_ab
if-nez v0, :cond_b7
invoke-virtual {v3}, Lcom/google/a/f;->f()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/g;
invoke-virtual {v0}, Lcom/google/a/g;->d()Lcom/google/a/g;
move-result-object v0
:cond_b7
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v2
sget-object v4, Lcom/google/a/m$a;->c:Lcom/google/a/m$a;
if-ne v2, v4, :cond_ca
invoke-virtual {p1, p2}, Lcom/google/a/c;->a(I)Z
move-result v0
goto/16 :goto_1f
:cond_c5
invoke-virtual {v3}, Lcom/google/a/f;->f()Ljava/lang/Object;
move-result-object v0
goto :goto_a3
:cond_ca
invoke-virtual {p1, v0}, Lcom/google/a/c;->a(Lcom/google/a/g;)V
:cond_cd
:goto_cd
invoke-virtual {v3}, Lcom/google/a/f;->d()Z
move-result v2
if-eqz v2, :cond_fb
invoke-direct {p0, v3, v0}, Lcom/google/a/g;->b(Lcom/google/a/f;Ljava/lang/Object;)V
goto :goto_5a
:cond_d7
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v0
sget-object v2, Lcom/google/a/m$a;->b:Lcom/google/a/m$a;
if-ne v0, v2, :cond_f2
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v2
invoke-virtual {v3}, Lcom/google/a/f;->f()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/e;
invoke-virtual {v0, v2}, Lcom/google/a/e;->a(I)Lcom/google/a/e;
move-result-object v0
if-nez v0, :cond_cd
move v0, v1
goto/16 :goto_1f
:cond_f2
invoke-virtual {v3}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/a/m$a;->a(Lcom/google/a/c;)Ljava/lang/Object;
move-result-object v0
goto :goto_cd
:cond_fb
invoke-virtual {p0}, Lcom/google/a/g;->a()V
iget-object v2, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {v3}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v2, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_5a
:cond_10d
move-object v0, v2
goto :goto_ab
.end method
.method private b(Lcom/google/a/f;)Z
.registers 3
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {p1}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private c(Lcom/google/a/f;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {p1}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_11
:goto_10
return-object v0
:cond_11
invoke-virtual {p1}, Lcom/google/a/f;->f()Ljava/lang/Object;
move-result-object v0
goto :goto_10
.end method
.method private d(Lcom/google/a/f;)Ljava/util/Vector;
.registers 4
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-virtual {p1}, Lcom/google/a/f;->d()Z
move-result v0
if-nez v0, :cond_14
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Not a repeated extension."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Vector;
return-object v0
.end method
.method private e(Lcom/google/a/f;)Ljava/util/Vector;
.registers 4
invoke-direct {p0, p1}, Lcom/google/a/g;->d(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
if-nez v0, :cond_11
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_11
return-object v0
.end method
.method private f(Lcom/google/a/f;)Ljava/util/Enumeration;
.registers 4
invoke-direct {p0, p1}, Lcom/google/a/g;->d(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
goto :goto_a
.end method
.method private f()V
.registers 2
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
return-void
.end method
.method private g(Lcom/google/a/f;)I
.registers 3
invoke-direct {p0, p1}, Lcom/google/a/g;->d(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method private g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/a/g;->a:Ljava/lang/String;
return-object v0
.end method
.method private h()I
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v5
move v2, v3
:goto_8
invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_f
return v2
:cond_f
invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0}, Lcom/google/a/f;->d()Z
move-result v0
if-eqz v0, :cond_3e
move-object v0, v1
check-cast v0, Ljava/util/Vector;
move v1, v2
move v2, v3
:goto_26
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v4
if-lt v2, v4, :cond_2e
move v2, v1
goto :goto_8
:cond_2e
invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
move-result v4
mul-int/lit8 v4, v4, 0x23
add-int/2addr v4, v1
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v4
goto :goto_26
:cond_3e
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x23
add-int/2addr v0, v2
move v2, v0
goto :goto_8
.end method
.method private h(Lcom/google/a/f;)V
.registers 3
invoke-virtual {p0}, Lcom/google/a/g;->a()V
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private i()Z
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v3
:cond_7
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0}, Lcom/google/a/f;->c()Z
move-result v4
if-eqz v4, :cond_33
iget-object v4, p0, Lcom/google/a/g;->a:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/google/a/f;->a(Ljava/lang/String;Lcom/google/a/f;)V
invoke-static {v0}, Lcom/google/a/g;->a(Lcom/google/a/f;)V
iget-object v4, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v4, v0}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_33
move v0, v2
goto :goto_e
:cond_33
invoke-virtual {v0}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
sget-object v5, Lcom/google/a/m$a;->d:Lcom/google/a/m$a;
if-ne v4, v5, :cond_7
invoke-virtual {v0}, Lcom/google/a/f;->d()Z
move-result v4
if-eqz v4, :cond_6b
invoke-direct {p0, v0}, Lcom/google/a/g;->d(Lcom/google/a/f;)Ljava/util/Vector;
move-result-object v0
if-eqz v0, :cond_60
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
move-object v1, v0
:goto_4c
:cond_4c
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_7
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/g;
invoke-virtual {v0}, Lcom/google/a/g;->b()Z
move-result v0
if-nez v0, :cond_4c
move v0, v2
goto :goto_e
:cond_60
new-instance v0, Ljava/util/Vector;
invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
move-object v1, v0
goto :goto_4c
:cond_6b
move-object v0, v1
check-cast v0, Lcom/google/a/g;
invoke-virtual {v0}, Lcom/google/a/g;->b()Z
move-result v0
if-nez v0, :cond_7
move v0, v2
goto :goto_e
.end method
.method private j()I
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v3
move v2, v0
:goto_8
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_f
return v2
:cond_f
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
iget-object v1, p0, Lcom/google/a/g;->c:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0}, Lcom/google/a/f;->d()Z
move-result v4
if-eqz v4, :cond_2e
invoke-virtual {v0}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
check-cast v1, Ljava/util/Vector;
invoke-virtual {v4, v0, v1}, Lcom/google/a/m$a;->a(Lcom/google/a/f;Ljava/util/Vector;)I
move-result v0
add-int/2addr v0, v2
move v2, v0
goto :goto_8
:cond_2e
invoke-virtual {v0}, Lcom/google/a/f;->a()Lcom/google/a/m$a;
move-result-object v4
const/4 v5, 0x1
invoke-virtual {v4, v5, v0, v1}, Lcom/google/a/m$a;->a(ZLcom/google/a/f;Ljava/lang/Object;)I
move-result v0
add-int/2addr v0, v2
move v2, v0
goto :goto_8
.end method
.method protected final a()V
.registers 3
iget-boolean v0, p0, Lcom/google/a/g;->b:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "Read only message!"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
return-void
.end method
.method public abstract a(Lcom/google/a/c;)V
.end method
.method protected abstract a(Lcom/google/a/d;)V
.end method
.method public abstract b()Z
.end method
.method public abstract c()I
.end method
.method public abstract d()Lcom/google/a/g;
.end method
.method public final e()Lcom/google/a/b;
.registers 3
invoke-virtual {p0}, Lcom/google/a/g;->c()I
move-result v0
new-array v0, v0, [B
invoke-static {v0}, Lcom/google/a/d;->a([B)Lcom/google/a/d;
move-result-object v1
:try_start_a
invoke-virtual {p0, v1}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
invoke-virtual {v1}, Lcom/google/a/d;->h()V
:try_end_10
.catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_16
new-instance v1, Lcom/google/a/b;
invoke-direct {v1, v0}, Lcom/google/a/b;-><init>([B)V
return-object v1
:catch_16
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public abstract hashCode()I
.end method