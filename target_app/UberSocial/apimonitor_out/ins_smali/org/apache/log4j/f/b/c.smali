.class final Lorg/apache/log4j/f/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljavax/swing/JComponent;
.method constructor <init>(Ljavax/swing/JComponent;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/f/b/c;->a:Ljavax/swing/JComponent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/c;->a:Ljavax/swing/JComponent;
invoke-virtual {v0}, Ljavax/swing/JComponent;->repaint()V
return-void
.end method