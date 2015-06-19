.class public Lorg/apache/log4j/f/b/ao;
.super Lorg/apache/log4j/f/b/al;
.source "SourceFile"


# static fields
.field public static final b:I = 0x1e


# instance fields
.field private c:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/f/b/ao;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/f/b/al;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljava/awt/FlowLayout;

    invoke-direct {v1}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v2, Ljavax/swing/JLabel;

    invoke-direct {v2, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, p4}, Ljavax/swing/JTextField;-><init>(I)V

    iput-object v2, p0, Lorg/apache/log4j/f/b/ao;->c:Ljavax/swing/JTextField;

    iget-object v2, p0, Lorg/apache/log4j/f/b/ao;->c:Ljavax/swing/JTextField;

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v2, Lorg/apache/log4j/f/b/ap;

    invoke-direct {v2, p0}, Lorg/apache/log4j/f/b/ap;-><init>(Lorg/apache/log4j/f/b/ao;)V

    invoke-virtual {p0, v2}, Lorg/apache/log4j/f/b/ao;->addKeyListener(Ljava/awt/event/KeyListener;)V

    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Ok"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/log4j/f/b/aq;

    invoke-direct {v3, p0}, Lorg/apache/log4j/f/b/aq;-><init>(Lorg/apache/log4j/f/b/ao;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v3, Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-direct {v3, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/log4j/f/b/ar;

    invoke-direct {v4, p0}, Lorg/apache/log4j/f/b/ar;-><init>(Lorg/apache/log4j/f/b/ao;)V

    invoke-virtual {v3, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/ao;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v1, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/ao;->getContentPane()Ljava/awt/Container;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v1, v0, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/ao;->pack()V

    invoke-virtual {p0, p0}, Lorg/apache/log4j/f/b/ao;->a(Ljava/awt/Window;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/ao;->a()V

    return-void
.end method

.method static a(Lorg/apache/log4j/f/b/ao;)Ljavax/swing/JTextField;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/ao;->c:Ljavax/swing/JTextField;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/ao;->c:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return-object v0
.end method
