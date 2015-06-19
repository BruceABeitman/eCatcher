.class  Lorg/apache/log4j/f/b/ar;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/ao;
.method constructor <init>(Lorg/apache/log4j/f/b/ao;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/ar;->a:Lorg/apache/log4j/f/b/ao;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/b/ar;->a:Lorg/apache/log4j/f/b/ao;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/ao;->hide()V
iget-object v0, p0, Lorg/apache/log4j/f/b/ar;->a:Lorg/apache/log4j/f/b/ao;
invoke-static {v0}, Lorg/apache/log4j/f/b/ao;->a(Lorg/apache/log4j/f/b/ao;)Ljavax/swing/JTextField;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V
return-void
.end method