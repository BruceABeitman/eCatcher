.class Lorg/apache/log4j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/a/q;

.field private final b:Ljavax/swing/JComboBox;

.field private final c:Lorg/apache/log4j/a/a;


# direct methods
.method constructor <init>(Lorg/apache/log4j/a/a;Lorg/apache/log4j/a/q;Ljavax/swing/JComboBox;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/log4j/a/b;->c:Lorg/apache/log4j/a/a;

    iput-object p2, p0, Lorg/apache/log4j/a/b;->a:Lorg/apache/log4j/a/q;

    iput-object p3, p0, Lorg/apache/log4j/a/b;->b:Ljavax/swing/JComboBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 4

    iget-object v1, p0, Lorg/apache/log4j/a/b;->a:Lorg/apache/log4j/a/q;

    iget-object v0, p0, Lorg/apache/log4j/a/b;->b:Ljavax/swing/JComboBox;

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ag;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/a/q;->a(Lorg/apache/log4j/ag;)V

    return-void
.end method
