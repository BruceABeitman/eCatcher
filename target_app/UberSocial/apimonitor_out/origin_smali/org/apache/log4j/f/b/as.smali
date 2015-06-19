.class public Lorg/apache/log4j/f/b/as;
.super Lorg/apache/log4j/f/b/al;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .registers 7

    const-string v0, "LogFactor5"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/log4j/f/b/al;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {p0, p2, v1}, Lorg/apache/log4j/f/b/as;->a(Ljava/lang/String;Ljava/awt/Container;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/as;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v1, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/as;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v1, v0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/as;->a()V

    return-void
.end method
