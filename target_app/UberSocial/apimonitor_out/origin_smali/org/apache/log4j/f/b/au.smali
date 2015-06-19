.class Lorg/apache/log4j/f/b/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# instance fields
.field protected a:Ljavax/swing/JTable;

.field private final b:Lorg/apache/log4j/f/b/at;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/f/b/at;Ljavax/swing/JTable;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/log4j/f/b/au;->a:Ljavax/swing/JTable;

    return-void
.end method


# virtual methods
.method public a(Ljavax/swing/event/ListSelectionEvent;)V
    .registers 8

    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/ListSelectionModel;

    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v3

    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v1, v1, Lorg/apache/log4j/f/b/at;->c:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_8b

    const-string v1, ""

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->a:Ljavax/swing/JTable;

    invoke-virtual {v4}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_37
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget-object v5, v5, Lorg/apache/log4j/f/b/at;->f:[Lorg/apache/log4j/f/b/av;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->h:I

    if-eq v0, v4, :cond_6a

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->m:I

    if-eq v0, v4, :cond_6a

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->j:I

    if-ne v0, v4, :cond_6f

    :cond_6a
    const-string v4, "\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6f
    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->g:I

    if-eq v0, v4, :cond_7b

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->k:I

    if-ne v0, v4, :cond_80

    :cond_7b
    const-string v4, "\t\t"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_8b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget-object v1, v1, Lorg/apache/log4j/f/b/at;->f:[Lorg/apache/log4j/f/b/av;

    iget-object v4, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v4, v4, Lorg/apache/log4j/f/b/at;->c:I

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/f/b/au;->a:Ljavax/swing/JTable;

    invoke-virtual {v0}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget v1, v1, Lorg/apache/log4j/f/b/at;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v3, v1}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c6
    iget-object v0, p0, Lorg/apache/log4j/f/b/au;->b:Lorg/apache/log4j/f/b/at;

    iget-object v0, v0, Lorg/apache/log4j/f/b/at;->b:Ljavax/swing/JTextArea;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    goto/16 :goto_6
.end method
