.class Lorg/apache/log4j/f/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/a/j;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/k;->a:Lorg/apache/log4j/f/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/k;->a:Lorg/apache/log4j/f/b/a/j;

    iget-object v0, v0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/k;->a:Lorg/apache/log4j/f/b/a/j;

    iget-object v1, v1, Lorg/apache/log4j/f/b/a/j;->g:Lorg/apache/log4j/f/b/a/i;

    iget-object v2, p0, Lorg/apache/log4j/f/b/a/k;->a:Lorg/apache/log4j/f/b/a/j;

    iget-object v2, v2, Lorg/apache/log4j/f/b/a/j;->h:Ljavax/swing/JCheckBox;

    invoke-virtual {v2}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/b/a/i;Z)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/k;->a:Lorg/apache/log4j/f/b/a/j;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/j;->c()Z

    return-void
.end method
