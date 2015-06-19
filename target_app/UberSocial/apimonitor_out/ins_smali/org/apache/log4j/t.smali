.class public Lorg/apache/log4j/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/j;
.implements Lorg/apache/log4j/k/p;
.implements Lorg/apache/log4j/k/v;
.field  a:Ljava/util/Hashtable;
.field  b:Lorg/apache/log4j/aa;
.field  c:Lorg/apache/log4j/h/c;
.field  d:I
.field  e:Lorg/apache/log4j/v;
.field  f:Z
.field  g:Z
.field private h:Lorg/apache/log4j/k/i;
.field private i:Ljava/util/Vector;
.field private j:Lorg/apache/log4j/k/u;
.method public constructor <init>(Lorg/apache/log4j/aa;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lorg/apache/log4j/t;->f:Z
iput-boolean v0, p0, Lorg/apache/log4j/t;->g:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/t;->j:Lorg/apache/log4j/k/u;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Vector;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
iput-object p1, p0, Lorg/apache/log4j/t;->b:Lorg/apache/log4j/aa;
sget-object v0, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/v;)V
iget-object v0, p0, Lorg/apache/log4j/t;->b:Lorg/apache/log4j/aa;
invoke-virtual {v0, p0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/j;)V
new-instance v0, Lorg/apache/log4j/h/c;
invoke-direct {v0}, Lorg/apache/log4j/h/c;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/t;->c:Lorg/apache/log4j/h/c;
new-instance v0, Lorg/apache/log4j/m;
invoke-direct {v0}, Lorg/apache/log4j/m;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/t;->h:Lorg/apache/log4j/k/i;
return-void
.end method
.method private final a(Lorg/apache/log4j/aa;)V
.registers 10
const/16 v7, 0x2e
const/4 v1, 0x0
iget-object v3, p1, Lorg/apache/log4j/aa;->a:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {v3, v7, v0}, Ljava/lang/String;->lastIndexOf(II)I
move-result v0
move v2, v0
:goto_10
if-ltz v2, :cond_76
invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
new-instance v4, Lorg/apache/log4j/h;
invoke-direct {v4, v0}, Lorg/apache/log4j/h;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_35
new-instance v0, Lorg/apache/log4j/aj;
invoke-direct {v0, p1}, Lorg/apache/log4j/aj;-><init>(Lorg/apache/log4j/aa;)V
iget-object v5, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v5, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_2d
add-int/lit8 v0, v2, -0x1
invoke-virtual {v3, v7, v0}, Ljava/lang/String;->lastIndexOf(II)I
move-result v0
move v2, v0
goto :goto_10
:cond_35
instance-of v4, v0, Lorg/apache/log4j/g;
if-eqz v4, :cond_46
const/4 v1, 0x1
check-cast v0, Lorg/apache/log4j/g;
iput-object v0, p1, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
move v0, v1
:goto_3f
if-nez v0, :cond_45
iget-object v0, p0, Lorg/apache/log4j/t;->b:Lorg/apache/log4j/aa;
iput-object v0, p1, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
:cond_45
return-void
:cond_46
instance-of v4, v0, Lorg/apache/log4j/aj;
if-eqz v4, :cond_50
check-cast v0, Lorg/apache/log4j/aj;
invoke-virtual {v0, p1}, Lorg/apache/log4j/aj;->addElement(Ljava/lang/Object;)V
goto :goto_2d
:cond_50
new-instance v4, Ljava/lang/IllegalStateException;
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
const-string v6, "unexpected object type "
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v5
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v5, " in ht."
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2d
:cond_76
move v0, v1
goto :goto_3f
.end method
.method private final a(Lorg/apache/log4j/aj;Lorg/apache/log4j/aa;)V
.registers 8
invoke-virtual {p1}, Lorg/apache/log4j/aj;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_24
invoke-virtual {p1, v1}, Lorg/apache/log4j/aj;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
iget-object v3, v0, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
iget-object v3, v3, Lorg/apache/log4j/g;->a:Ljava/lang/String;
iget-object v4, p2, Lorg/apache/log4j/aa;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_20
iget-object v3, v0, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
iput-object v3, p2, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
iput-object p2, v0, Lorg/apache/log4j/aa;->c:Lorg/apache/log4j/g;
:cond_20
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_24
return-void
.end method
.method public a(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 4
iget-object v0, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
new-instance v1, Lorg/apache/log4j/h;
invoke-direct {v1, p1}, Lorg/apache/log4j/h;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lorg/apache/log4j/aa;
if-eqz v1, :cond_12
check-cast v0, Lorg/apache/log4j/aa;
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
.registers 8
new-instance v2, Lorg/apache/log4j/h;
invoke-direct {v2, p1}, Lorg/apache/log4j/h;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
monitor-enter v3
:try_start_8
iget-object v0, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_21
invoke-interface {p2, p1}, Lorg/apache/log4j/k/i;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
invoke-virtual {v0, p0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/j;)V
iget-object v1, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, v0}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/aa;)V
monitor-exit v3
:goto_20
return-object v0
:cond_21
instance-of v1, v0, Lorg/apache/log4j/aa;
if-eqz v1, :cond_2c
check-cast v0, Lorg/apache/log4j/aa;
monitor-exit v3
goto :goto_20
:catchall_29
move-exception v0
monitor-exit v3
:try_end_2b
.catchall {:try_start_8 .. :try_end_2b} :catchall_29
throw v0
:try_start_2c
:cond_2c
instance-of v1, v0, Lorg/apache/log4j/aj;
if-eqz v1, :cond_47
invoke-interface {p2, p1}, Lorg/apache/log4j/k/i;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v1
invoke-virtual {v1, p0}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/k/j;)V
iget-object v4, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v4, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
check-cast v0, Lorg/apache/log4j/aj;
invoke-direct {p0, v0, v1}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/aj;Lorg/apache/log4j/aa;)V
invoke-direct {p0, v1}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/aa;)V
monitor-exit v3
move-object v0, v1
goto :goto_20
:cond_47
const/4 v0, 0x0
monitor-exit v3
:try_end_49
.catchall {:try_start_2c .. :try_end_49} :catchall_29
goto :goto_20
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
return-void
.end method
.method public a(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/t;->c:Lorg/apache/log4j/h/c;
invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/h/c;->a(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
return-void
.end method
.method public a(Lorg/apache/log4j/g;)V
.registers 4
iget-boolean v0, p0, Lorg/apache/log4j/t;->f:Z
if-nez v0, :cond_31
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "No appenders could be found for logger ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {p1}, Lorg/apache/log4j/g;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ")."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
const-string v0, "Please initialize the log4j system properly."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
const-string v0, "See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/t;->f:Z
:cond_31
return-void
.end method
.method public a(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
if-eqz v0, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v2, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/g;
invoke-interface {v0, p1, p2}, Lorg/apache/log4j/k/g;->a(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_1d
return-void
.end method
.method public a(Lorg/apache/log4j/k/g;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "Ignoring attempt to add an existent listener."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_d
.end method
.method public a(Lorg/apache/log4j/k/u;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/t;->j:Lorg/apache/log4j/k/u;
return-void
.end method
.method public a(Lorg/apache/log4j/v;)V
.registers 3
if-eqz p1, :cond_8
iget v0, p1, Lorg/apache/log4j/v;->l:I
iput v0, p0, Lorg/apache/log4j/t;->d:I
iput-object p1, p0, Lorg/apache/log4j/t;->e:Lorg/apache/log4j/v;
:cond_8
return-void
.end method
.method public a(I)Z
.registers 3
iget v0, p0, Lorg/apache/log4j/t;->d:I
if-le v0, p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public b()Lorg/apache/log4j/v;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/t;->e:Lorg/apache/log4j/v;
return-object v0
.end method
.method public b(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/t;->c:Lorg/apache/log4j/h/c;
invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/h/c;->a(Ljava/lang/Class;Lorg/apache/log4j/h/b;)V
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {p1, v0}, Lorg/apache/log4j/v;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0, v0}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/v;)V
:goto_a
return-void
:cond_b
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v1, "Could not convert ["
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "] to Level."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
goto :goto_a
.end method
.method  b(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
if-eqz v0, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v2, :cond_1d
iget-object v0, p0, Lorg/apache/log4j/t;->i:Ljava/util/Vector;
invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/g;
invoke-interface {v0, p1, p2}, Lorg/apache/log4j/k/g;->b(Lorg/apache/log4j/g;Lorg/apache/log4j/a;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_1d
return-void
.end method
.method public c()Ljava/util/Enumeration;
.registers 5
new-instance v0, Ljava/util/Vector;
iget-object v1, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->size()I
move-result v1
invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V
iget-object v1, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_11
:cond_11
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v2
if-eqz v2, :cond_23
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v2
instance-of v3, v2, Lorg/apache/log4j/aa;
if-eqz v3, :cond_11
invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
goto :goto_11
:cond_23
invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 3
iget-object v0, p0, Lorg/apache/log4j/t;->h:Lorg/apache/log4j/k/i;
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/t;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public d()Ljava/util/Enumeration;
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/t;->c()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;)V
.registers 3
const-string v0, "The Hiearchy.overrideAsNeeded method has been deprecated."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
return-void
.end method
.method public e()Lorg/apache/log4j/h/c;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/t;->c:Lorg/apache/log4j/h/c;
return-object v0
.end method
.method public e(Ljava/lang/String;)V
.registers 3
const-string v0, "The Hiearchy.setDisableOverride method has been deprecated."
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
return-void
.end method
.method public f()Lorg/apache/log4j/aa;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/t;->b:Lorg/apache/log4j/aa;
return-object v0
.end method
.method public g()V
.registers 6
const/4 v4, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/t;->f()Lorg/apache/log4j/aa;
move-result-object v0
sget-object v1, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
iget-object v0, p0, Lorg/apache/log4j/t;->b:Lorg/apache/log4j/aa;
invoke-virtual {v0, v4}, Lorg/apache/log4j/aa;->a(Ljava/util/ResourceBundle;)V
sget-object v0, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;
invoke-virtual {p0, v0}, Lorg/apache/log4j/t;->a(Lorg/apache/log4j/v;)V
iget-object v1, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
monitor-enter v1
:try_start_17
invoke-virtual {p0}, Lorg/apache/log4j/t;->i()V
invoke-virtual {p0}, Lorg/apache/log4j/t;->c()Ljava/util/Enumeration;
move-result-object v2
:goto_1e
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V
const/4 v3, 0x1
invoke-virtual {v0, v3}, Lorg/apache/log4j/aa;->a(Z)V
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lorg/apache/log4j/aa;->a(Ljava/util/ResourceBundle;)V
goto :goto_1e
:catchall_37
move-exception v0
monitor-exit v1
:try_end_39
.catchall {:try_start_17 .. :try_end_39} :catchall_37
throw v0
:try_start_3a
:cond_3a
monitor-exit v1
:try_end_3b
.catchall {:try_start_3a .. :try_end_3b} :catchall_37
iget-object v0, p0, Lorg/apache/log4j/t;->c:Lorg/apache/log4j/h/c;
invoke-virtual {v0}, Lorg/apache/log4j/h/c;->b()V
iput-object v4, p0, Lorg/apache/log4j/t;->j:Lorg/apache/log4j/k/u;
return-void
.end method
.method public h()Lorg/apache/log4j/k/u;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/t;->j:Lorg/apache/log4j/k/u;
return-object v0
.end method
.method public i()V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/t;->f()Lorg/apache/log4j/aa;
move-result-object v1
invoke-virtual {v1}, Lorg/apache/log4j/aa;->a()V
iget-object v2, p0, Lorg/apache/log4j/t;->a:Ljava/util/Hashtable;
monitor-enter v2
:try_start_a
invoke-virtual {p0}, Lorg/apache/log4j/t;->c()Ljava/util/Enumeration;
move-result-object v3
:goto_e
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
invoke-virtual {v0}, Lorg/apache/log4j/aa;->a()V
goto :goto_e
:catchall_1e
move-exception v0
monitor-exit v2
:try_end_20
.catchall {:try_start_a .. :try_end_20} :catchall_1e
throw v0
:cond_21
:try_start_21
invoke-virtual {v1}, Lorg/apache/log4j/aa;->m()V
invoke-virtual {p0}, Lorg/apache/log4j/t;->c()Ljava/util/Enumeration;
move-result-object v1
:goto_28
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/aa;
invoke-virtual {v0}, Lorg/apache/log4j/aa;->m()V
goto :goto_28
:cond_38
monitor-exit v2
:try_end_39
.catchall {:try_start_21 .. :try_end_39} :catchall_1e
return-void
.end method