.class  Lorg/apache/log4j/f/b/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;
const-string v1, "Sort by this NDC: "
const-string v2, "Sort Log Records by NDC"
const/4 v3, 0x3
invoke-static {v0, v1, v2, v3}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/d;->d(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->k()V
iget-object v0, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->e()V
iget-object v0, p0, Lorg/apache/log4j/f/b/x;->a:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->s()V
return-void
.end method