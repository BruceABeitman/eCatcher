.class public Lorg/apache/log4j/p;
.super Lorg/apache/log4j/u;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "%m%n"
.field public static final b:Ljava/lang/String; = "%r [%t] %p %c %x - %m%n"
.field public static final e:Ljava/lang/String; = "PATTERN_RULE_REGISTRY"
.field protected final c:I
.field protected final d:I
.field private f:Lorg/apache/log4j/c/q;
.field private g:Ljava/lang/String;
.field private j:Z
.method public constructor <init>()V
.registers 2
const-string v0, "%m%n"
invoke-direct {p0, v0}, Lorg/apache/log4j/p;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lorg/apache/log4j/u;-><init>()V
const/16 v0, 0x100
iput v0, p0, Lorg/apache/log4j/p;->c:I
const/16 v0, 0x400
iput v0, p0, Lorg/apache/log4j/p;->d:I
iput-object p1, p0, Lorg/apache/log4j/p;->g:Ljava/lang/String;
if-nez p1, :cond_12
const-string p1, "%m%n"
:cond_12
invoke-virtual {p0, p1}, Lorg/apache/log4j/p;->b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/c/r;->c()Lorg/apache/log4j/c/q;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
iget-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
instance-of v0, v0, Lorg/apache/log4j/i/a;
if-eqz v0, :cond_32
iget-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
check-cast v0, Lorg/apache/log4j/i/a;
invoke-virtual {v0}, Lorg/apache/log4j/i/a;->a()Z
move-result v0
if-nez v0, :cond_30
const/4 v0, 0x1
:goto_2d
iput-boolean v0, p0, Lorg/apache/log4j/p;->j:Z
:goto_2f
return-void
:cond_30
move v0, v1
goto :goto_2d
:cond_32
iput-boolean v1, p0, Lorg/apache/log4j/p;->j:Z
goto :goto_2f
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/p;->g:Ljava/lang/String;
return-object v0
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
:goto_7
if-eqz v0, :cond_f
invoke-virtual {v0, v1, p1}, Lorg/apache/log4j/c/q;->a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
iget-object v0, v0, Lorg/apache/log4j/c/q;->a:Lorg/apache/log4j/c/q;
goto :goto_7
:cond_f
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-static {p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/p;->g:Ljava/lang/String;
iget-object v0, p0, Lorg/apache/log4j/p;->g:Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/apache/log4j/p;->b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/c/r;->c()Lorg/apache/log4j/c/q;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
iget-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
instance-of v0, v0, Lorg/apache/log4j/i/a;
if-eqz v0, :cond_29
iget-object v0, p0, Lorg/apache/log4j/p;->f:Lorg/apache/log4j/c/q;
check-cast v0, Lorg/apache/log4j/i/a;
invoke-virtual {v0}, Lorg/apache/log4j/i/a;->a()Z
move-result v0
if-nez v0, :cond_27
const/4 v0, 0x1
:goto_24
iput-boolean v0, p0, Lorg/apache/log4j/p;->j:Z
:goto_26
return-void
:cond_27
move v0, v1
goto :goto_24
:cond_29
iput-boolean v1, p0, Lorg/apache/log4j/p;->j:Z
goto :goto_26
.end method
.method protected b(Ljava/lang/String;)Lorg/apache/log4j/c/r;
.registers 3
new-instance v0, Lorg/apache/log4j/i/b;
invoke-direct {v0, p1}, Lorg/apache/log4j/i/b;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/p;->j:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public i()V
.registers 1
return-void
.end method