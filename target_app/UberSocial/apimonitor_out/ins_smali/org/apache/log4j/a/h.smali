.class  Lorg/apache/log4j/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/a/q;
.field private final b:Ljavax/swing/JButton;
.field private final c:Lorg/apache/log4j/a/a;
.method constructor <init>(Lorg/apache/log4j/a/a;Lorg/apache/log4j/a/q;Ljavax/swing/JButton;)V
.registers 4
iput-object p1, p0, Lorg/apache/log4j/a/h;->c:Lorg/apache/log4j/a/a;
iput-object p2, p0, Lorg/apache/log4j/a/h;->a:Lorg/apache/log4j/a/q;
iput-object p3, p0, Lorg/apache/log4j/a/h;->b:Ljavax/swing/JButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/a/h;->a:Lorg/apache/log4j/a/q;
invoke-virtual {v0}, Lorg/apache/log4j/a/q;->d()V
iget-object v1, p0, Lorg/apache/log4j/a/h;->b:Ljavax/swing/JButton;
iget-object v0, p0, Lorg/apache/log4j/a/h;->a:Lorg/apache/log4j/a/q;
invoke-virtual {v0}, Lorg/apache/log4j/a/q;->e()Z
move-result v0
if-eqz v0, :cond_15
const-string v0, "Resume"
:goto_11
invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V
return-void
:cond_15
const-string v0, "Pause"
goto :goto_11
.end method