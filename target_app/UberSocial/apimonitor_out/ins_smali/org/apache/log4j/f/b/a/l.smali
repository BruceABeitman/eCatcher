.class  Lorg/apache/log4j/f/b/a/l;
.super Ljava/awt/event/MouseAdapter;
.source "SourceFile"
.field private final a:Lorg/apache/log4j/f/b/a/j;
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/a/l;->a:Lorg/apache/log4j/f/b/a/j;
invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/MouseEvent;)V
.registers 6
invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getModifiers()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_19
iget-object v0, p0, Lorg/apache/log4j/f/b/a/l;->a:Lorg/apache/log4j/f/b/a/j;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/l;->a:Lorg/apache/log4j/f/b/a/j;
iget-object v1, v1, Lorg/apache/log4j/f/b/a/j;->g:Lorg/apache/log4j/f/b/a/i;
invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I
move-result v2
invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I
move-result v3
invoke-virtual {v0, v1, v2, v3}, Lorg/apache/log4j/f/b/a/j;->a(Lorg/apache/log4j/f/b/a/i;II)V
:cond_19
iget-object v0, p0, Lorg/apache/log4j/f/b/a/l;->a:Lorg/apache/log4j/f/b/a/j;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/j;->c()Z
return-void
.end method