.class  Lorg/apache/log4j/f/b/z;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/z;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/z;->a:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->b()V
iget-object v0, p0, Lorg/apache/log4j/f/b/z;->a:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/d;->b()V
iget-object v0, p0, Lorg/apache/log4j/f/b/z;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->s()V
iget-object v0, p0, Lorg/apache/log4j/f/b/z;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->o()V
invoke-static {}, Lorg/apache/log4j/f/g;->n()V
return-void
.end method