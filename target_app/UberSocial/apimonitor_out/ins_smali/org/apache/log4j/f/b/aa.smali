.class  Lorg/apache/log4j/f/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/f/h;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/aa;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lorg/apache/log4j/f/g;)Z
.registers 5
new-instance v0, Lorg/apache/log4j/f/b/a/u;
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lorg/apache/log4j/f/b/aa;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->b()Lorg/apache/log4j/f/e;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;
move-result-object v1
invoke-virtual {v1}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z
move-result v1
if-eqz v1, :cond_29
iget-object v1, p0, Lorg/apache/log4j/f/b/aa;->a:Lorg/apache/log4j/f/b/d;
iget-object v1, v1, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;
invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;
move-result-object v1
invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/u;)Z
move-result v0
if-eqz v0, :cond_29
const/4 v0, 0x1
:goto_28
return v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method