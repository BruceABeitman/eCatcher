.class  Lorg/apache/log4j/f/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/f/h;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/ae;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lorg/apache/log4j/f/g;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->l()Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/apache/log4j/f/b/a/u;
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->e()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V
if-eqz v1, :cond_16
iget-object v3, p0, Lorg/apache/log4j/f/b/ae;->a:Lorg/apache/log4j/f/b/d;
iget-object v3, v3, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;
if-nez v3, :cond_17
:cond_16
:goto_16
return v0
:cond_17
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lorg/apache/log4j/f/b/ae;->a:Lorg/apache/log4j/f/b/d;
iget-object v3, v3, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_16
iget-object v1, p0, Lorg/apache/log4j/f/b/ae;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->b()Lorg/apache/log4j/f/e;
move-result-object v3
invoke-virtual {v1, v3}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;
move-result-object v1
invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z
move-result v1
if-eqz v1, :cond_16
iget-object v1, p0, Lorg/apache/log4j/f/b/ae;->a:Lorg/apache/log4j/f/b/d;
iget-object v1, v1, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;
invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;
move-result-object v1
invoke-virtual {v1, v2}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/u;)Z
move-result v1
if-eqz v1, :cond_16
const/4 v0, 0x1
goto :goto_16
.end method