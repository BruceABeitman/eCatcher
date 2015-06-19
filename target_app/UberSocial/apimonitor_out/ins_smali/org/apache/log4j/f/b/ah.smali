.class  Lorg/apache/log4j/f/b/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/ah;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/ah;->a:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->e()V
iget-object v0, p0, Lorg/apache/log4j/f/b/ah;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->s()V
return-void
.end method