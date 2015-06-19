.class public Lorg/apache/log4j/a/o;
.super Ljavax/swing/JFrame;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "chainsaw.port"

.field static b:Ljava/lang/Class; = null

.field private static final c:I = 0x115d

.field private static final d:Lorg/apache/log4j/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/log4j/a/o;->b:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.a.o"

    invoke-static {v0}, Lorg/apache/log4j/a/o;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/a/o;->b:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/a/o;->d:Lorg/apache/log4j/aa;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/a/o;->b:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 9

    const/16 v7, 0x384

    const/16 v6, 0x12c

    const/4 v5, 0x0

    const-string v0, "CHAINSAW - Log4J Log Viewer"

    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/log4j/a/q;

    invoke-direct {v1}, Lorg/apache/log4j/a/q;-><init>()V

    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/a/o;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    new-instance v2, Ljavax/swing/JMenu;

    const-string v3, "File"

    invoke-direct {v2, v3}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    :try_start_21
    new-instance v0, Lorg/apache/log4j/a/l;

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/a/l;-><init>(Ljavax/swing/JFrame;Lorg/apache/log4j/a/q;)V

    new-instance v3, Ljavax/swing/JMenuItem;

    const-string v4, "Load file..."

    invoke-direct {v3, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
    :try_end_33
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_21 .. :try_end_33} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_33} :catch_ac

    :goto_33
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v3, "Exit"

    invoke-direct {v0, v3}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    sget-object v2, Lorg/apache/log4j/a/k;->a:Lorg/apache/log4j/a/k;

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    new-instance v0, Lorg/apache/log4j/a/a;

    invoke-direct {v0, v1}, Lorg/apache/log4j/a/a;-><init>(Lorg/apache/log4j/a/q;)V

    invoke-virtual {p0}, Lorg/apache/log4j/a/o;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "North"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0, v1}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    invoke-virtual {v0, v5}, Ljavax/swing/JTable;->setSelectionMode(I)V

    new-instance v2, Ljavax/swing/JScrollPane;

    invoke-direct {v2, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v3, "Events: "

    invoke-static {v3}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v7, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v3, Lorg/apache/log4j/a/i;

    invoke-direct {v3, v0, v1}, Lorg/apache/log4j/a/i;-><init>(Ljavax/swing/JTable;Lorg/apache/log4j/a/q;)V

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v7, v6}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v0}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0, v5, v2, v3}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    invoke-virtual {p0}, Lorg/apache/log4j/a/o;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/log4j/a/p;

    invoke-direct {v0, p0}, Lorg/apache/log4j/a/p;-><init>(Lorg/apache/log4j/a/o;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/a/o;->addWindowListener(Ljava/awt/event/WindowListener;)V

    invoke-virtual {p0}, Lorg/apache/log4j/a/o;->pack()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/log4j/a/o;->setVisible(Z)V

    invoke-direct {p0, v1}, Lorg/apache/log4j/a/o;->a(Lorg/apache/log4j/a/q;)V

    return-void

    :catch_9c
    move-exception v0

    sget-object v3, Lorg/apache/log4j/a/o;->d:Lorg/apache/log4j/aa;

    const-string v4, "Missing classes for XML parser"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "XML parser not in classpath - unable to load XML events."

    const-string v3, "CHAINSAW"

    invoke-static {p0, v0, v3, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_33

    :catch_ac
    move-exception v0

    sget-object v3, Lorg/apache/log4j/a/o;->d:Lorg/apache/log4j/aa;

    const-string v4, "Unable to create the action to load XML files"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v0, "Unable to create a XML parser - unable to load XML events."

    const-string v3, "CHAINSAW"

    invoke-static {p0, v0, v3, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_33
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private static a()V
    .registers 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "log4j.rootLogger"

    const-string v2, "DEBUG, A1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "log4j.appender.A1"

    const-string v2, "org.apache.log4j.ConsoleAppender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "log4j.appender.A1.layout"

    const-string v2, "org.apache.log4j.TTCCLayout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;)V

    return-void
.end method

.method private a(Lorg/apache/log4j/a/q;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x115d

    const-string v1, "chainsaw.port"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_1a

    move-result v0

    move v1, v0

    :goto_11
    :try_start_11
    new-instance v0, Lorg/apache/log4j/a/m;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/a/m;-><init>(Lorg/apache/log4j/a/q;I)V

    invoke-virtual {v0}, Lorg/apache/log4j/a/m;->start()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_5c

    :goto_19
    return-void

    :catch_1a
    move-exception v2

    sget-object v2, Lorg/apache/log4j/a/o;->d:Lorg/apache/log4j/aa;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to parse chainsaw.port property with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/aa;->c(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to parse port number from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\', quitting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHAINSAW"

    invoke-static {p0, v1, v2, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_5a
    move v1, v0

    goto :goto_11

    :catch_5c
    move-exception v0

    sget-object v2, Lorg/apache/log4j/a/o;->d:Lorg/apache/log4j/aa;

    const-string v3, "Unable to connect to socket server, quiting"

    invoke-virtual {v2, v3, v0}, Lorg/apache/log4j/aa;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to create socket on port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", quitting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAINSAW"

    invoke-static {p0, v0, v1, v5}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_19
.end method

.method public static a([Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lorg/apache/log4j/a/o;->a()V

    new-instance v0, Lorg/apache/log4j/a/o;

    invoke-direct {v0}, Lorg/apache/log4j/a/o;-><init>()V

    return-void
.end method
