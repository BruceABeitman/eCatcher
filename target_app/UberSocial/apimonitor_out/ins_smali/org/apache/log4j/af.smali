.class public Lorg/apache/log4j/af;
.super Lorg/apache/log4j/u;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "%m%n"
.field public static final b:Ljava/lang/String; = "%r [%t] %p %c %x - %m%n"
.field protected final c:I
.field protected final d:I
.field private e:Ljava/lang/StringBuffer;
.field private f:Ljava/lang/String;
.field private g:Lorg/apache/log4j/c/q;
.method public constructor <init>()V
.registers 2
const-string v0, "%m%n"
invoke-direct {p0, v0}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/16 v1, 0x100
invoke-direct {p0}, Lorg/apache/log4j/u;-><init>()V
iput v1, p0, Lorg/apache/log4j/af;->c:I
const/16 v0, 0x400
iput v0, p0, Lorg/apache/log4j/af;->d:I
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
iput-object p1, p0, Lorg/apache/log4j/af;->f:Ljava/lang/String;
if-nez p1, :cond_18
const-string p1, "%m%n"
:cond_18
invoke-virtual {p0, p1}, Lorg/apache/log4j/af;->b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/c/r;->c()Lorg/apache/log4j/c/q;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/af;->g:Lorg/apache/log4j/c/q;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/af;->f:Ljava/lang/String;
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->capacity()I
move-result v0
const/16 v1, 0x400
if-le v0, v1, :cond_1f
new-instance v0, Ljava/lang/StringBuffer;
const/16 v1, 0x100
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
:goto_13
iget-object v0, p0, Lorg/apache/log4j/af;->g:Lorg/apache/log4j/c/q;
:goto_15
if-eqz v0, :cond_26
iget-object v1, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
invoke-virtual {v0, v1, p1}, Lorg/apache/log4j/c/q;->a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
iget-object v0, v0, Lorg/apache/log4j/c/q;->a:Lorg/apache/log4j/c/q;
goto :goto_15
:cond_1f
iget-object v0, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
goto :goto_13
:cond_26
iget-object v0, p0, Lorg/apache/log4j/af;->e:Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/af;->f:Ljava/lang/String;
invoke-virtual {p0, p1}, Lorg/apache/log4j/af;->b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/c/r;->c()Lorg/apache/log4j/c/q;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/af;->g:Lorg/apache/log4j/c/q;
return-void
.end method
.method protected b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
.registers 3
new-instance v0, Lorg/apache/log4j/c/r;
invoke-direct {v0, p1}, Lorg/apache/log4j/c/r;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public i()V
.registers 1
return-void
.end method