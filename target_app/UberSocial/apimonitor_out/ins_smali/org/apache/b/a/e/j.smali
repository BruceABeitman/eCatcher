.class public Lorg/apache/b/a/e/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/f/c;
.field static a:Ljava/lang/Class;
.field static b:Ljava/lang/Class;
.field static c:Ljava/lang/Class;
.field static d:Ljava/lang/Class;
.field static e:Ljava/lang/Class;
.field private final f:Lorg/apache/b/a/e/f;
.field private g:Ljava/util/Stack;
.method public constructor <init>(Lorg/apache/b/a/e/f;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Stack;
invoke-direct {v0}, Ljava/util/Stack;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
iput-object p1, p0, Lorg/apache/b/a/e/j;->f:Lorg/apache/b/a/e/f;
return-void
.end method
.method private a(Ljava/lang/Class;)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_47
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Internal stack error: Expected \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "\' found \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_47
return-void
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public a()V
.registers 3
sget-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
if-nez v0, :cond_32
const-string v0, "org.apache.b.a.e.g"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/g;
sget-object v1, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
if-nez v1, :cond_35
const-string v1, "org.apache.b.a.e.f"
invoke-static {v1}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sput-object v1, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
:goto_23
invoke-direct {p0, v1}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v1, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lorg/apache/b/a/e/f;
invoke-virtual {v1, v0}, Lorg/apache/b/a/e/f;->a(Lorg/apache/b/a/e/g;)V
return-void
:cond_32
sget-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
goto :goto_c
:cond_35
sget-object v1, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
goto :goto_23
.end method
.method public a(Ljava/io/InputStream;)V
.registers 5
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
if-nez v0, :cond_22
const-string v0, "org.apache.b.a.e.k"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
new-instance v1, Lorg/apache/b/a/g/b;
const/16 v0, 0x80
invoke-direct {v1, v0}, Lorg/apache/b/a/g/b;-><init>(I)V
:goto_16
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_25
int-to-char v0, v0
invoke-virtual {v1, v0}, Lorg/apache/b/a/g/b;->a(C)V
goto :goto_16
:cond_22
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
goto :goto_c
:cond_25
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/k;
invoke-virtual {v1}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/k;->b(Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
sget-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
if-nez v0, :cond_1f
const-string v0, "org.apache.b.a.e.g"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/g;
invoke-static {p1}, Lorg/apache/b/a/c/k;->d(Ljava/lang/String;)Lorg/apache/b/a/c/k;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/g;->a(Lorg/apache/b/a/c/k;)V
return-void
:cond_1f
sget-object v0, Lorg/apache/b/a/e/j;->c:Ljava/lang/Class;
goto :goto_c
.end method
.method public a(Lorg/apache/b/a/b/a;)V
.registers 5
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
if-nez v0, :cond_29
const-string v0, "org.apache.b.a.e.f"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/f;
invoke-interface {p1}, Lorg/apache/b/a/b/a;->d()Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/apache/b/a/e/k;
invoke-direct {v2, v1}, Lorg/apache/b/a/e/k;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lorg/apache/b/a/e/f;->a(Lorg/apache/b/a/e/c;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_29
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method public a(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V
.registers 5
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
if-nez v0, :cond_43
const-string v0, "org.apache.b.a.e.f"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
invoke-interface {p1}, Lorg/apache/b/a/b/a;->f()Ljava/lang/String;
move-result-object v0
const-string v1, "base64"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_46
new-instance v0, Lorg/apache/b/a/a/b;
invoke-direct {v0, p2}, Lorg/apache/b/a/a/b;-><init>(Ljava/io/InputStream;)V
move-object p2, v0
:goto_21
:cond_21
invoke-interface {p1}, Lorg/apache/b/a/b/a;->b()Ljava/lang/String;
move-result-object v0
const-string v1, "text/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_55
new-instance v0, Lorg/apache/b/a/e/n;
invoke-interface {p1}, Lorg/apache/b/a/b/a;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p2, v1}, Lorg/apache/b/a/e/n;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
move-object v1, v0
:goto_37
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/f;
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/f;->a(Lorg/apache/b/a/e/c;)V
return-void
:cond_43
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
goto :goto_c
:cond_46
const-string v1, "quoted-printable"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Lorg/apache/b/a/a/i;
invoke-direct {v0, p2}, Lorg/apache/b/a/a/i;-><init>(Ljava/io/InputStream;)V
move-object p2, v0
goto :goto_21
:cond_55
new-instance v0, Lorg/apache/b/a/e/m;
invoke-direct {v0, p2}, Lorg/apache/b/a/e/m;-><init>(Ljava/io/InputStream;)V
move-object v1, v0
goto :goto_37
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
iget-object v1, p0, Lorg/apache/b/a/e/j;->f:Lorg/apache/b/a/e/f;
invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
return-void
:cond_10
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
if-nez v0, :cond_35
const-string v0, "org.apache.b.a.e.f"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
:goto_1c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
new-instance v1, Lorg/apache/b/a/e/i;
invoke-direct {v1}, Lorg/apache/b/a/e/i;-><init>()V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/f;
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/f;->a(Lorg/apache/b/a/e/c;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
:cond_35
sget-object v0, Lorg/apache/b/a/e/j;->a:Ljava/lang/Class;
goto :goto_1c
.end method
.method public b(Ljava/io/InputStream;)V
.registers 5
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
if-nez v0, :cond_22
const-string v0, "org.apache.b.a.e.k"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
new-instance v1, Lorg/apache/b/a/g/b;
const/16 v0, 0x80
invoke-direct {v1, v0}, Lorg/apache/b/a/g/b;-><init>(I)V
:goto_16
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_25
int-to-char v0, v0
invoke-virtual {v1, v0}, Lorg/apache/b/a/g/b;->a(C)V
goto :goto_16
:cond_22
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
goto :goto_c
:cond_25
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/k;
invoke-virtual {v1}, Lorg/apache/b/a/g/b;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/k;->c(Ljava/lang/String;)V
return-void
.end method
.method public c()V
.registers 2
sget-object v0, Lorg/apache/b/a/e/j;->b:Ljava/lang/Class;
if-nez v0, :cond_15
const-string v0, "org.apache.b.a.e.i"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->b:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
return-void
:cond_15
sget-object v0, Lorg/apache/b/a/e/j;->b:Ljava/lang/Class;
goto :goto_c
.end method
.method public c(Ljava/io/InputStream;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public d()V
.registers 3
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
new-instance v1, Lorg/apache/b/a/e/g;
invoke-direct {v1}, Lorg/apache/b/a/e/g;-><init>()V
invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
return-void
.end method
.method public f()V
.registers 3
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
if-nez v0, :cond_25
const-string v0, "org.apache.b.a.e.k"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
new-instance v1, Lorg/apache/b/a/e/d;
invoke-direct {v1}, Lorg/apache/b/a/e/d;-><init>()V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/k;
invoke-virtual {v0, v1}, Lorg/apache/b/a/e/k;->a(Lorg/apache/b/a/e/d;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_25
sget-object v0, Lorg/apache/b/a/e/j;->d:Ljava/lang/Class;
goto :goto_c
.end method
.method public g()V
.registers 2
sget-object v0, Lorg/apache/b/a/e/j;->e:Ljava/lang/Class;
if-nez v0, :cond_15
const-string v0, "org.apache.b.a.e.d"
invoke-static {v0}, Lorg/apache/b/a/e/j;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/j;->e:Ljava/lang/Class;
:goto_c
invoke-direct {p0, v0}, Lorg/apache/b/a/e/j;->a(Ljava/lang/Class;)V
iget-object v0, p0, Lorg/apache/b/a/e/j;->g:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
return-void
:cond_15
sget-object v0, Lorg/apache/b/a/e/j;->e:Ljava/lang/Class;
goto :goto_c
.end method