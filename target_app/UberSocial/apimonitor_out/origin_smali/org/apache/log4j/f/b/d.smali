.class public Lorg/apache/log4j/f/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Detailed"


# instance fields
.field protected A:Lorg/apache/log4j/f/b/b/a;

.field protected B:Lorg/apache/log4j/f/b/b/b;

.field protected C:Ljava/io/File;

.field protected b:Ljavax/swing/JFrame;

.field protected c:I

.field protected d:I

.field protected e:Lorg/apache/log4j/f/b/at;

.field protected f:Lorg/apache/log4j/f/b/a/f;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Lorg/apache/log4j/f/e;

.field protected j:Ljavax/swing/JScrollPane;

.field protected k:Ljavax/swing/JLabel;

.field protected l:Ljava/lang/Object;

.field protected m:Ljavax/swing/JComboBox;

.field protected n:I

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Z

.field protected r:Z

.field protected s:Ljava/awt/Dimension;

.field protected t:Z

.field protected u:Ljava/util/List;

.field protected v:Ljava/util/Map;

.field protected w:Ljava/util/Map;

.field protected x:Ljava/util/List;

.field protected y:Ljava/util/List;

.field protected z:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x226

    iput v0, p0, Lorg/apache/log4j/f/b/d;->c:I

    const/16 v0, 0x1f4

    iput v0, p0, Lorg/apache/log4j/f/b/d;->d:I

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    sget-object v0, Lorg/apache/log4j/f/e;->e:Lorg/apache/log4j/f/e;

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->i:Lorg/apache/log4j/f/e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->l:Ljava/lang/Object;

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/log4j/f/b/d;->n:I

    const-string v0, "Dialog"

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->o:Ljava/lang/String;

    const-string v0, "Detailed"

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->p:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/log4j/f/b/d;->q:Z

    iput-boolean v3, p0, Lorg/apache/log4j/f/b/d;->r:Z

    iput-boolean v2, p0, Lorg/apache/log4j/f/b/d;->t:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->u:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->v:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->w:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->x:Ljava/util/List;

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->y:Ljava/util/List;

    iput-boolean v2, p0, Lorg/apache/log4j/f/b/d;->z:Z

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->A:Lorg/apache/log4j/f/b/b/a;

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->C:Ljava/io/File;

    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->x:Ljava/util/List;

    invoke-static {}, Lorg/apache/log4j/f/b/av;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->y:Ljava/util/List;

    const-string v0, "monitor.exit"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_62

    const-string v0, "false"

    :cond_62
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iput-boolean v3, p0, Lorg/apache/log4j/f/b/d;->t:Z

    :cond_74
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->q()V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    new-instance v1, Lorg/apache/log4j/f/b/ak;

    invoke-direct {v1, p0, p0}, Lorg/apache/log4j/f/b/ak;-><init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->addWindowListener(Ljava/awt/event/WindowListener;)V

    return-void
.end method


# virtual methods
.method protected A()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/ai;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/ai;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected B()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all LogLevels"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/aj;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/aj;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected C()Ljavax/swing/JMenu;
    .registers 4

    new-instance v1, Ljavax/swing/JMenu;

    const-string v0, "Configure LogLevel Colors"

    invoke-direct {v1, v0}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x63

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ak()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/e;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->b(Lorg/apache/log4j/f/e;)Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_10

    :cond_24
    return-object v1
.end method

.method protected D()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset LogLevel Colors"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/f;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/f;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected E()Ljavax/swing/JMenu;
    .registers 4

    new-instance v1, Ljavax/swing/JMenu;

    const-string v0, "View"

    invoke-direct {v1, v0}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x76

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->al()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/av;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->b(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_10

    :cond_24
    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->G()Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->H()Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v1
.end method

.method protected F()Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/av;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->b(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/swing/JCheckBoxMenuItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    return-object v1
.end method

.method protected G()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Show all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/j;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/j;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected H()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Hide all Columns"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/k;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/k;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected I()Ljavax/swing/JMenu;
    .registers 3

    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "File"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->J()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->K()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->L()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JMenu;)V

    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->M()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v0
.end method

.method protected J()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/l;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/l;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected K()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Open URL..."

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/m;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/m;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected L()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Close"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    const-string v1, "control Q"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    new-instance v1, Lorg/apache/log4j/f/b/n;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/n;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected M()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Exit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/q;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/q;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected N()Ljavax/swing/JMenu;
    .registers 3

    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Configure"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->O()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->P()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->Q()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v0
.end method

.method protected O()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Save"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/r;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/r;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected P()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Reset"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/s;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/s;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected Q()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Set Max Number of Records"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/t;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/t;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected R()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->A:Lorg/apache/log4j/f/b/b/a;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/b/a;->a()V

    return-void
.end method

.method protected S()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->A:Lorg/apache/log4j/f/b/b/a;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/b/a;->b()V

    return-void
.end method

.method protected T()V
    .registers 6

    new-instance v0, Lorg/apache/log4j/f/b/ao;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v1

    const-string v2, "Set Max Number of Records"

    const-string v3, ""

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/log4j/f/b/ao;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/ao;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/d;->b(I)V
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    new-instance v1, Lorg/apache/log4j/f/b/am;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\' is an invalid parameter.\nPlease try again."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->T()V

    goto :goto_1c
.end method

.method protected U()Ljavax/swing/JMenu;
    .registers 3

    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Help"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->V()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v0
.end method

.method protected V()Ljavax/swing/JMenuItem;
    .registers 3

    const-string v0, "LogFactor5 Properties"

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "LogFactor5 Properties"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/u;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/u;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected W()Ljavax/swing/JMenu;
    .registers 3

    new-instance v0, Ljavax/swing/JMenu;

    const-string v1, "Edit"

    invoke-direct {v0, v1}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->Y()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->X()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->Z()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->aa()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v0
.end method

.method protected X()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find Next"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    const-string v1, "F3"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    new-instance v1, Lorg/apache/log4j/f/b/v;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/v;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected Y()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Find"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    const-string v1, "control F"

    invoke-static {v1}, Ljavax/swing/KeyStroke;->getKeyStroke(Ljava/lang/String;)Ljavax/swing/KeyStroke;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    new-instance v1, Lorg/apache/log4j/f/b/w;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/w;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected Z()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Sort by NDC"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/x;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/x;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;Ljava/util/List;)I
    .registers 9

    const/4 v2, 0x0

    if-gez p1, :cond_19

    move v1, v2

    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    :goto_9
    if-ge v3, v4, :cond_22

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/g;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v3

    :goto_18
    return v0

    :cond_19
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_20
    add-int/lit8 v2, v2, 0x1

    :cond_22
    if-ge v2, v1, :cond_32

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/g;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto :goto_18

    :cond_32
    const/4 v0, -0x1

    goto :goto_18
.end method

.method protected a(Ljavax/swing/JComboBox;I)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getItemCount()I

    move-result v5

    invoke-virtual {p1, v0}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v0

    :goto_12
    if-ge v4, v5, :cond_2b

    invoke-virtual {p1, v4}, Ljavax/swing/JComboBox;->getItemAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v1, v0, :cond_2f

    if-gt v0, p2, :cond_2f

    move-object v1, v2

    :goto_25
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_12

    :cond_2b
    invoke-virtual {p1, v3}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    return v1

    :cond_2f
    move v0, v1

    move-object v1, v3

    goto :goto_25
.end method

.method public a(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/d;->b(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/d;->c(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->v:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(I)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lorg/apache/log4j/f/b/e;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/f/b/e;-><init>(Lorg/apache/log4j/f/b/d;I)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public a(II)V
    .registers 5

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    if-lez p1, :cond_10

    iget v1, v0, Ljava/awt/Dimension;->width:I

    if-ge p1, v1, :cond_10

    iput p1, p0, Lorg/apache/log4j/f/b/d;->c:I

    :cond_10
    if-lez p2, :cond_18

    iget v0, v0, Ljava/awt/Dimension;->height:I

    if-ge p2, v0, :cond_18

    iput p2, p0, Lorg/apache/log4j/f/b/d;->d:I

    :cond_18
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->p()V

    return-void
.end method

.method protected a(Ljava/awt/Component;I)V
    .registers 6

    invoke-virtual {p1}, Ljava/awt/Component;->getFont()Ljava/awt/Font;

    move-result-object v0

    new-instance v1, Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/Font;->getStyle()I

    move-result v0

    invoke-direct {v1, v2, v0, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1, v1}, Ljava/awt/Component;->setFont(Ljava/awt/Font;)V

    return-void
.end method

.method protected a(Ljava/awt/event/ActionEvent;)V
    .registers 7

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/f/b/b/b;->b(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lorg/apache/log4j/f/a/c;

    invoke-direct {v3, v2}, Lorg/apache/log4j/f/a/c;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, p0}, Lorg/apache/log4j/f/a/c;->a(Lorg/apache/log4j/f/b/d;)V

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/f/b/b/b;->c(I)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ag()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    new-instance v0, Lorg/apache/log4j/f/b/am;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to load file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " - LogFactor5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/apache/log4j/f/b/at;)V
    .registers 5

    const-string v0, "Detailed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lorg/apache/log4j/f/b/at;->d()V

    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->p:Ljava/lang/String;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "does not match a supported view."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Ljavax/swing/JFrame;)V
    .registers 6

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/swing/JFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Ljava/awt/Dimension;->height:I

    iget v1, v1, Ljava/awt/Dimension;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljavax/swing/JFrame;->setLocation(II)V

    return-void
.end method

.method protected a(Ljavax/swing/JMenu;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/b/b;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Ljavax/swing/JMenu;->addSeparator()V

    const/4 v0, 0x0

    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_42

    new-instance v2, Ljavax/swing/JMenuItem;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->setMnemonic(I)V

    new-instance v3, Lorg/apache/log4j/f/b/o;

    invoke-direct {v3, p0}, Lorg/apache/log4j/f/b/o;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {p1, v2}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_42
    return-void
.end method

.method protected a(Ljavax/swing/JMenuItem;Lorg/apache/log4j/f/e;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    const-string v1, "Choose LogLevel Color"

    invoke-virtual {p1}, Ljavax/swing/JMenuItem;->getForeground()Ljava/awt/Color;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljavax/swing/JColorChooser;->showDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2, p2, v0}, Lorg/apache/log4j/f/e;->a(Lorg/apache/log4j/f/e;Ljava/awt/Color;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->e()V

    :cond_1a
    return-void
.end method

.method protected a(Ljavax/swing/JTextArea;)V
    .registers 4

    invoke-virtual {p1}, Ljavax/swing/JTextArea;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/apache/log4j/f/a/b;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/at;->a(Lorg/apache/log4j/f/a/b;)V

    return-void
.end method

.method public a(Lorg/apache/log4j/f/g;)V
    .registers 4

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->z:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    new-instance v0, Lorg/apache/log4j/f/b/p;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/f/b/p;-><init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/g;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/log4j/f/b/d;->t:Z

    return-void
.end method

.method protected a(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/apache/log4j/f/a/c;

    invoke-direct {v1, p1}, Lorg/apache/log4j/f/a/c;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p0}, Lorg/apache/log4j/f/a/c;->a(Lorg/apache/log4j/f/b/d;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :catch_b
    move-exception v1

    new-instance v1, Lorg/apache/log4j/f/b/am;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected a(Ljava/net/URL;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/apache/log4j/f/a/c;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/f/a/c;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, p0}, Lorg/apache/log4j/f/a/c;->a(Lorg/apache/log4j/f/b/d;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v1

    new-instance v1, Lorg/apache/log4j/f/b/am;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error reading URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected a(Lorg/apache/log4j/f/g;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lorg/apache/log4j/f/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/f/g;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_10

    :cond_e
    if-nez p2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_10

    :cond_2d
    const/4 v0, 0x1

    goto :goto_10
.end method

.method protected aa()Ljavax/swing/JMenuItem;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Restore all NDCs"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/y;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/y;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected ab()Ljavax/swing/JToolBar;
    .registers 9

    const/high16 v7, 0x3f00

    new-instance v2, Ljavax/swing/JToolBar;

    invoke-direct {v2}, Ljavax/swing/JToolBar;-><init>()V

    const-string v0, "JToolBar.isRollover"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v1}, Ljavax/swing/JToolBar;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljavax/swing/JComboBox;

    invoke-direct {v3}, Ljavax/swing/JComboBox;-><init>()V

    new-instance v4, Ljavax/swing/JComboBox;

    invoke-direct {v4}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v4, p0, Lorg/apache/log4j/f/b/d;->m:Ljavax/swing/JComboBox;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_28

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_28
    const-string v1, "org/apache/log4j/lf5/viewer/images/channelexplorer_new.gif"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_36

    new-instance v0, Ljavax/swing/ImageIcon;

    invoke-direct {v0, v1}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    :cond_36
    new-instance v5, Ljavax/swing/JButton;

    const-string v1, "Clear Log Table"

    invoke-direct {v5, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_42

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setIcon(Ljavax/swing/Icon;)V

    :cond_42
    const-string v0, "Clear Log Table."

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/log4j/f/b/z;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/z;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v5, v0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/f/b/d;->q:Z

    if-eqz v1, :cond_6b

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getAvailableFontFamilyNames()[Ljava/lang/String;

    move-result-object v0

    :goto_5f
    const/4 v1, 0x0

    :goto_60
    array-length v6, v0

    if-ge v1, v6, :cond_70

    aget-object v6, v0, v1

    invoke-virtual {v3, v6}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_6b
    invoke-virtual {v0}, Ljava/awt/Toolkit;->getFontList()[Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :cond_70
    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/log4j/f/b/ab;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/ab;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v3, v0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    const-string v0, "8"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "9"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "10"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "12"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "14"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "16"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "18"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    const-string v0, "24"

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/log4j/f/b/d;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/log4j/f/b/ac;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/ac;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, " Font: "

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v2, v3}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v2, v4}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v2}, Ljavax/swing/JToolBar;->addSeparator()V

    invoke-virtual {v2}, Ljavax/swing/JToolBar;->addSeparator()V

    invoke-virtual {v2, v5}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v5, v7}, Ljavax/swing/JButton;->setAlignmentY(F)V

    invoke-virtual {v5, v7}, Ljavax/swing/JButton;->setAlignmentX(F)V

    invoke-virtual {v3}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    invoke-virtual {v4}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    return-object v2
.end method

.method protected ac()Ljavax/swing/JComboBox;
    .registers 4

    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ak()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->i:Lorg/apache/log4j/f/e;

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/log4j/f/b/ad;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/ad;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    return-object v0
.end method

.method protected ad()V
    .registers 1

    return-void
.end method

.method protected ae()V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->C:Ljava/io/File;

    if-nez v0, :cond_2a

    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    :goto_9
    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/d;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->C:Ljava/io/File;

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/b/b;->a(Ljava/io/File;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ag()V

    :cond_29
    return-void

    :cond_2a
    new-instance v0, Ljavax/swing/JFileChooser;

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->C:Ljava/io/File;

    invoke-direct {v0, v1}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    goto :goto_9
.end method

.method protected af()V
    .registers 5

    new-instance v0, Lorg/apache/log4j/f/b/ao;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v1

    const-string v2, "Open URL"

    const-string v3, "URL:"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/f/b/ao;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/ao;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/d;->a(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/b/b;->a(Ljava/net/URL;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ag()V
    :try_end_42
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-void

    :catch_43
    move-exception v0

    new-instance v0, Lorg/apache/log4j/f/b/am;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->f()Ljavax/swing/JFrame;

    move-result-object v1

    const-string v2, "Error reading URL."

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/f/b/am;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;)V

    goto :goto_42
.end method

.method protected ag()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getJMenuBar()Ljavax/swing/JMenuBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->getMenu(I)Ljavax/swing/JMenu;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JMenu;->removeAll()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->J()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->K()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->L()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JMenu;)V

    invoke-virtual {v0}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->M()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-void
.end method

.method protected ah()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Z)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->aj()V

    return-void
.end method

.method protected ai()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/b/b;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Z)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->aj()V

    return-void
.end method

.method protected aj()V
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->t:Z

    if-nez v0, :cond_39

    const-string v0, "Are you sure you want to close the logging "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "console?\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "(Note: This will not shut down the Virtual Machine,\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "or the Swing event thread.)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1d
    const-string v2, "Are you sure you want to dispose of the Logging Console?"

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->t:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_26

    const-string v2, "Are you sure you want to exit?"

    :cond_26
    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljavax/swing/JOptionPane;->showConfirmDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;)I

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->b()V

    :cond_38
    return-void

    :cond_39
    const-string v0, "Are you sure you want to exit?\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "This will shut down the Virtual Machine.\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d
.end method

.method protected ak()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected al()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected b(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Displaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " records out of a total of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " records."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    check-cast v0, Ljavax/swing/JCheckBoxMenuItem;

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/d;->c(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->w:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method protected b(Lorg/apache/log4j/f/e;)Ljavax/swing/JMenuItem;
    .registers 5

    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/f/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/log4j/f/e;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/g;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/log4j/f/b/g;-><init>(Lorg/apache/log4j/f/b/d;Ljavax/swing/JMenuItem;Lorg/apache/log4j/f/e;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->dispose()V

    iput-boolean v1, p0, Lorg/apache/log4j/f/b/d;->z:Z

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->t:Z

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_10
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/f/b/a;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/d;->e(Ljava/lang/String;)Lorg/apache/log4j/f/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a;->a(Lorg/apache/log4j/f/h;)V

    return-void
.end method

.method protected b(Z)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ak()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/e;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method protected c(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;
    .registers 5

    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    invoke-virtual {p1}, Lorg/apache/log4j/f/b/av;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/i;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/i;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method protected c(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;
    .registers 5

    new-instance v0, Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Lorg/apache/log4j/f/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    invoke-virtual {p1}, Lorg/apache/log4j/f/e;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    new-instance v1, Lorg/apache/log4j/f/b/h;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/h;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    return-object v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->m:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JComboBox;I)I

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->g:Ljava/lang/String;

    return-void
.end method

.method protected c(Z)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->al()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/av;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->b(Lorg/apache/log4j/f/b/av;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public d()Lorg/apache/log4j/f/a/b;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->a()Lorg/apache/log4j/f/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected d(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    const-string v2, "Text not found"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->j:Ljavax/swing/JScrollPane;

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/f/b/b;->a(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V

    goto :goto_20
.end method

.method protected d(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_7

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    goto :goto_6
.end method

.method protected d(Lorg/apache/log4j/f/e;)V
    .registers 3

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->i:Lorg/apache/log4j/f/e;

    if-ne v0, p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->i:Lorg/apache/log4j/f/e;

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->e()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->s()V

    goto :goto_6
.end method

.method protected e(Ljava/lang/String;)Lorg/apache/log4j/f/h;
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    new-instance v0, Lorg/apache/log4j/f/b/ae;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/ae;-><init>(Lorg/apache/log4j/f/b/d;)V

    return-object v0
.end method

.method protected e(I)V
    .registers 3

    iput p1, p0, Lorg/apache/log4j/f/b/d;->n:I

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    iget-object v0, v0, Lorg/apache/log4j/f/b/at;->b:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/f/b/d;->a(Ljava/awt/Component;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->d(I)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/f/b/d;->a(Ljava/awt/Component;I)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->t:Z

    return v0
.end method

.method public f()Ljavax/swing/JFrame;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    return-object v0
.end method

.method protected f(I)V
    .registers 4

    int-to-long v0, p1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected f(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public g()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->v:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->w:Ljava/util/Map;

    return-object v0
.end method

.method public i()Lorg/apache/log4j/f/b/a/f;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected k()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->e(Ljava/lang/String;)Lorg/apache/log4j/f/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a;->a(Lorg/apache/log4j/f/h;)V

    goto :goto_a
.end method

.method protected l()V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->m()I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/f/b/a;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/log4j/f/b/d;->a(ILjava/lang/String;Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->d(I)V

    goto :goto_a
.end method

.method protected m()I
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v0

    return v0
.end method

.method protected n()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    iget-object v0, v0, Lorg/apache/log4j/f/b/at;->b:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JTextArea;)V

    return-void
.end method

.method protected o()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    iget-object v0, v0, Lorg/apache/log4j/f/b/at;->b:Ljavax/swing/JTextArea;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method protected p()V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    iget v1, p0, Lorg/apache/log4j/f/b/d;->c:I

    iget v2, p0, Lorg/apache/log4j/f/b/d;->d:I

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JFrame;->setSize(II)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Ljavax/swing/JFrame;)V

    return-void
.end method

.method protected q()V
    .registers 9

    const/16 v7, 0x82

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljavax/swing/JFrame;

    const-string v1, "LogFactor5"

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0, v5}, Ljavax/swing/JFrame;->setDefaultCloseOperation(I)V

    const-string v0, "/org/apache/log4j/lf5/viewer/images/lf5_small_icon.gif"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    new-instance v2, Ljavax/swing/ImageIcon;

    invoke-direct {v2, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    invoke-virtual {v2}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JFrame;->setIconImage(Ljava/awt/Image;)V

    :cond_2c
    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->p()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->x()Ljavax/swing/JTextArea;

    move-result-object v0

    new-instance v1, Ljavax/swing/JScrollPane;

    invoke-direct {v1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance v2, Lorg/apache/log4j/f/b/at;

    invoke-direct {v2, v0}, Lorg/apache/log4j/f/b/at;-><init>(Ljavax/swing/JTextArea;)V

    iput-object v2, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->p:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/f/b/d;->a(Ljava/lang/String;Lorg/apache/log4j/f/b/at;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    new-instance v2, Ljava/awt/Font;

    iget-object v3, p0, Lorg/apache/log4j/f/b/d;->o:Ljava/lang/String;

    iget v4, p0, Lorg/apache/log4j/f/b/d;->n:I

    invoke-direct {v2, v3, v5, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/at;->a(Ljava/awt/Font;)V

    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-direct {v0, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->j:Ljavax/swing/JScrollPane;

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/d;->r:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->j:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v0

    new-instance v2, Lorg/apache/log4j/f/b/az;

    invoke-direct {v2}, Lorg/apache/log4j/f/b/az;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/swing/JScrollBar;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    :cond_6f
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    invoke-virtual {v0, v5}, Ljavax/swing/JSplitPane;->setOrientation(I)V

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->j:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v2}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    new-instance v1, Lorg/apache/log4j/f/b/a/f;

    invoke-direct {v1}, Lorg/apache/log4j/f/b/a/f;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->r()Lorg/apache/log4j/f/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/f/b/a;->a(Lorg/apache/log4j/f/h;)V

    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v2, p0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;

    invoke-direct {v1, v2}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance v2, Ljava/awt/Dimension;

    const/16 v3, 0x190

    invoke-direct {v2, v7, v3}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v2, Lorg/apache/log4j/f/b/b/b;

    invoke-direct {v2}, Lorg/apache/log4j/f/b/b/b;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/f/b/d;->B:Lorg/apache/log4j/f/b/b/b;

    new-instance v2, Ljavax/swing/JSplitPane;

    invoke-direct {v2}, Ljavax/swing/JSplitPane;-><init>()V

    invoke-virtual {v2, v6}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    invoke-virtual {v2, v0}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    invoke-virtual {v2, v1}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    invoke-virtual {v2, v7}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->y()Ljavax/swing/JMenuBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JRootPane;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    const-string v1, "Center"

    invoke-virtual {v0, v2, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ab()Ljavax/swing/JToolBar;

    move-result-object v1

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->w()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->v()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->u()V

    new-instance v0, Lorg/apache/log4j/f/b/b/a;

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/f/b/b/a;-><init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/at;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/d;->A:Lorg/apache/log4j/f/b/b/a;

    return-void
.end method

.method protected r()Lorg/apache/log4j/f/h;
    .registers 2

    new-instance v0, Lorg/apache/log4j/f/b/aa;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/aa;-><init>(Lorg/apache/log4j/f/b/d;)V

    return-object v0
.end method

.method protected s()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->k:Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    return-void
.end method

.method protected t()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->c()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a;->d()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/f/b/d;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;

    move-result-object v0

    new-instance v1, Lorg/apache/log4j/f/b/af;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/af;-><init>(Lorg/apache/log4j/f/b/d;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/d;->a(Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/log4j/f/b/ag;

    invoke-direct {v1, p0, v0}, Lorg/apache/log4j/f/b/ag;-><init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/b/a;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected v()V
    .registers 3

    new-instance v0, Lorg/apache/log4j/f/b/ah;

    invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/ah;-><init>(Lorg/apache/log4j/f/b/d;)V

    iget-object v1, p0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a/d;->a(Ljava/awt/event/ActionListener;)V

    return-void
.end method

.method protected w()Ljavax/swing/JPanel;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v1, Ljavax/swing/JLabel;

    const-string v2, "No log records to display."

    invoke-direct {v1, v2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/log4j/f/b/d;->k:Ljavax/swing/JLabel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    invoke-static {}, Ljavax/swing/BorderFactory;->createEtchedBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2, v3, v3, v3}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-object v0
.end method

.method protected x()Ljavax/swing/JTextArea;
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Ljavax/swing/JTextArea;

    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    new-instance v1, Ljava/awt/Font;

    const-string v2, "Monospaced"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v4, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setTabSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setLineWrap(Z)V

    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setWrapStyleWord(Z)V

    return-object v0
.end method

.method protected y()Ljavax/swing/JMenuBar;
    .registers 3

    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->I()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->W()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->z()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->E()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->N()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->U()Ljavax/swing/JMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    return-object v0
.end method

.method protected z()Ljavax/swing/JMenu;
    .registers 4

    new-instance v1, Ljavax/swing/JMenu;

    const-string v0, "Log Level"

    invoke-direct {v1, v0}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x6c

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->setMnemonic(C)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->ak()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/e;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/d;->a(Lorg/apache/log4j/f/e;)Ljavax/swing/JCheckBoxMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    goto :goto_10

    :cond_24
    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->A()Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->B()Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v1}, Ljavax/swing/JMenu;->addSeparator()V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->C()Ljavax/swing/JMenu;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/d;->D()Ljavax/swing/JMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    return-object v1
.end method
