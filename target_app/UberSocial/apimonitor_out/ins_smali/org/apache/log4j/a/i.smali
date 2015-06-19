.class  Lorg/apache/log4j/a/i;
.super Ljavax/swing/JPanel;
.source "SourceFile"
.implements Ljavax/swing/event/ListSelectionListener;
.field static a:Ljava/lang/Class;
.field private static final b:Lorg/apache/log4j/aa;
.field private static final c:Ljava/text/MessageFormat;
.field private final d:Lorg/apache/log4j/a/q;
.field private final e:Ljavax/swing/JEditorPane;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lorg/apache/log4j/a/i;->a:Ljava/lang/Class;
if-nez v0, :cond_1c
const-string v0, "org.apache.log4j.a.i"
invoke-static {v0}, Lorg/apache/log4j/a/i;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/i;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/i;->b:Lorg/apache/log4j/aa;
new-instance v0, Ljava/text/MessageFormat;
const-string v1, "<b>Time:</b> <code>{0,time,medium}</code>&nbsp;&nbsp;<b>Priority:</b> <code>{1}</code>&nbsp;&nbsp;<b>Thread:</b> <code>{2}</code>&nbsp;&nbsp;<b>NDC:</b> <code>{3}</code><br><b>Logger:</b> <code>{4}</code><br><b>Location:</b> <code>{5}</code><br><b>Message:</b><pre>{6}</pre><b>Throwable:</b><pre>{7}</pre>"
invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lorg/apache/log4j/a/i;->c:Ljava/text/MessageFormat;
return-void
:cond_1c
sget-object v0, Lorg/apache/log4j/a/i;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method constructor <init>(Ljavax/swing/JTable;Lorg/apache/log4j/a/q;)V
.registers 5
invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V
iput-object p2, p0, Lorg/apache/log4j/a/i;->d:Lorg/apache/log4j/a/q;
new-instance v0, Ljava/awt/BorderLayout;
invoke-direct {v0}, Ljava/awt/BorderLayout;-><init>()V
invoke-virtual {p0, v0}, Lorg/apache/log4j/a/i;->setLayout(Ljava/awt/LayoutManager;)V
const-string v0, "Details: "
invoke-static {v0}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/apache/log4j/a/i;->setBorder(Ljavax/swing/border/Border;)V
new-instance v0, Ljavax/swing/JEditorPane;
invoke-direct {v0}, Ljavax/swing/JEditorPane;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
iget-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljavax/swing/JEditorPane;->setEditable(Z)V
iget-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
const-string v1, "text/html"
invoke-virtual {v0, v1}, Ljavax/swing/JEditorPane;->setContentType(Ljava/lang/String;)V
new-instance v0, Ljavax/swing/JScrollPane;
iget-object v1, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V
const-string v1, "Center"
invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/a/i;->add(Ljava/awt/Component;Ljava/lang/Object;)V
invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;
move-result-object v0
invoke-interface {v0, p0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V
return-void
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
.method private static a(Lorg/apache/log4j/a/j;)Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lorg/apache/log4j/a/j;->h()[Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_e
array-length v3, v1
if-ge v0, v3, :cond_1f
aget-object v3, v1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
const-string v4, "\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1f
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method private b(Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_a
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_35
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
sparse-switch v2, :sswitch_data_3a
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_1a
add-int/lit8 v0, v0, 0x1
goto :goto_a
:sswitch_1d
const-string v2, "&lt;"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1a
:sswitch_23
const-string v2, "&gt;"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1a
:sswitch_29
const-string v2, "&quot;"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1a
:sswitch_2f
const-string v2, "&amp;"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1a
:cond_35
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
:sswitch_data_3a
.sparse-switch
0x22 -> :sswitch_29
0x26 -> :sswitch_2f
0x3c -> :sswitch_1d
0x3e -> :sswitch_23
.end sparse-switch
.end method
.method public a(Ljavax/swing/event/ListSelectionEvent;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return-void
:cond_8
invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljavax/swing/ListSelectionModel;
invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
const-string v1, "Nothing selected"
invoke-virtual {v0, v1}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V
goto :goto_7
:cond_1c
invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I
move-result v0
iget-object v1, p0, Lorg/apache/log4j/a/i;->d:Lorg/apache/log4j/a/q;
invoke-virtual {v1, v0}, Lorg/apache/log4j/a/q;->c(I)Lorg/apache/log4j/a/j;
move-result-object v0
const/16 v1, 0x8
new-array v1, v1, [Ljava/lang/Object;
new-instance v2, Ljava/util/Date;
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->a()J
move-result-wide v3
invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
aput-object v2, v1, v5
const/4 v2, 0x1
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->b()Lorg/apache/log4j/ag;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->e()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->d()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x4
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->c()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x5
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->g()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x6
invoke-virtual {v0}, Lorg/apache/log4j/a/j;->f()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x7
invoke-static {v0}, Lorg/apache/log4j/a/i;->a(Lorg/apache/log4j/a/j;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
aput-object v0, v1, v2
iget-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
sget-object v2, Lorg/apache/log4j/a/i;->c:Ljava/text/MessageFormat;
invoke-virtual {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V
iget-object v0, p0, Lorg/apache/log4j/a/i;->e:Ljavax/swing/JEditorPane;
invoke-virtual {v0, v5}, Ljavax/swing/JEditorPane;->setCaretPosition(I)V
goto/16 :goto_7
.end method