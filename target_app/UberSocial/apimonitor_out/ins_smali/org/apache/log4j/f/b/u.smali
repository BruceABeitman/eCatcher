.class  Lorg/apache/log4j/f/b/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/u;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/b/u;->a:Lorg/apache/log4j/f/b/d;
const-string v1, "LogFactor5 Properties"
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/d;->f(Ljava/lang/String;)V
return-void
.end method