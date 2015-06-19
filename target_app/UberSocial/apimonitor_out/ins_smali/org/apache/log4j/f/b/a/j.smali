.class public Lorg/apache/log4j/f/b/a/j;
.super Lorg/apache/log4j/f/b/a/a;
.source "SourceFile"
.field protected f:Lorg/apache/log4j/f/b/a/s;
.field protected g:Lorg/apache/log4j/f/b/a/i;
.field protected h:Ljavax/swing/JCheckBox;
.field protected i:Lorg/apache/log4j/f/b/a/d;
.field protected j:Ljavax/swing/JTree;
.method public constructor <init>(Lorg/apache/log4j/f/b/a/d;)V
.registers 4
invoke-direct {p0}, Lorg/apache/log4j/f/b/a/a;-><init>()V
new-instance v0, Lorg/apache/log4j/f/b/a/s;
invoke-direct {v0}, Lorg/apache/log4j/f/b/a/s;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/f/b/a/j;->f:Lorg/apache/log4j/f/b/a/s;
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->f:Lorg/apache/log4j/f/b/a/s;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/s;->a()Ljavax/swing/JCheckBox;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/f/b/a/j;->h:Ljavax/swing/JCheckBox;
iput-object p1, p0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->h:Ljavax/swing/JCheckBox;
new-instance v1, Lorg/apache/log4j/f/b/a/k;
invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/a/k;-><init>(Lorg/apache/log4j/f/b/a/j;)V
invoke-virtual {v0, v1}, Ljavax/swing/JCheckBox;->addActionListener(Ljava/awt/event/ActionListener;)V
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->f:Lorg/apache/log4j/f/b/a/s;
new-instance v1, Lorg/apache/log4j/f/b/a/l;
invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/a/l;-><init>(Lorg/apache/log4j/f/b/a/j;)V
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a/s;->addMouseListener(Ljava/awt/event/MouseListener;)V
return-void
.end method
.method public a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
.registers 15
move-object v0, p2
check-cast v0, Lorg/apache/log4j/f/b/a/i;
iput-object v0, p0, Lorg/apache/log4j/f/b/a/j;->g:Lorg/apache/log4j/f/b/a/i;
iput-object p1, p0, Lorg/apache/log4j/f/b/a/j;->j:Ljavax/swing/JTree;
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->f:Lorg/apache/log4j/f/b/a/s;
const/4 v7, 0x1
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-virtual/range {v0 .. v7}, Lorg/apache/log4j/f/b/a/s;->a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->g:Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->getUserObject()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected a(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
.registers 4
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Properties"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/m;
invoke-direct {v1, p0, p1}, Lorg/apache/log4j/f/b/a/m;-><init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected a(Lorg/apache/log4j/f/b/a/i;II)V
.registers 7
new-instance v0, Ljavax/swing/JPopupMenu;
invoke-direct {v0}, Ljavax/swing/JPopupMenu;-><init>()V
const/16 v1, 0x96
const/16 v2, 0x190
invoke-virtual {v0, v1, v2}, Ljavax/swing/JPopupMenu;->setSize(II)V
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->getParent()Ljavax/swing/tree/TreeNode;
move-result-object v1
if-nez v1, :cond_1c
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/j;->g()Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V
:cond_1c
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->d(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->e(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->f(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->g(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->a(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/j;->f:Lorg/apache/log4j/f/b/a/s;
invoke-virtual {v0, v1, p2, p3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V
return-void
.end method
.method protected b(Lorg/apache/log4j/f/b/a/i;)V
.registers 6
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->j:Ljavax/swing/JTree;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->c(Lorg/apache/log4j/f/b/a/i;)Ljava/lang/Object;
move-result-object v1
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Category Properties: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, -0x1
invoke-static {v0, v1, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V
return-void
.end method
.method protected c(Lorg/apache/log4j/f/b/a/i;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Category: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->j()Z
move-result v1
if-eqz v1, :cond_2a
const-string v1, "Contains at least one fatal LogRecord."
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2a
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->k()Z
move-result v1
if-eqz v1, :cond_35
const-string v1, "Contains descendants with a fatal LogRecord."
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_35
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "LogRecords in this category alone: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->h()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "LogRecords in descendant categories: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->n()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "LogRecords in this category including descendants: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->l()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected d(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
.registers 4
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Select All Descendant Categories"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/n;
invoke-direct {v1, p0, p1}, Lorg/apache/log4j/f/b/a/n;-><init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected e(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
.registers 4
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Deselect All Descendant Categories"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/o;
invoke-direct {v1, p0, p1}, Lorg/apache/log4j/f/b/a/o;-><init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected f(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
.registers 4
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Expand All Descendant Categories"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/p;
invoke-direct {v1, p0, p1}, Lorg/apache/log4j/f/b/a/p;-><init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected g()Ljavax/swing/JMenuItem;
.registers 3
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Remove All Empty Categories"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/r;
invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/a/r;-><init>(Lorg/apache/log4j/f/b/a/j;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected g(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/JMenuItem;
.registers 4
new-instance v0, Ljavax/swing/JMenuItem;
const-string v1, "Collapse All Descendant Categories"
invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V
new-instance v1, Lorg/apache/log4j/f/b/a/q;
invoke-direct {v1, p0, p1}, Lorg/apache/log4j/f/b/a/q;-><init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
return-object v0
.end method
.method protected h()I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;
invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;
move-result-object v1
invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;
move-result-object v2
move v1, v0
:goto_c
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->isLeaf()Z
move-result v3
if-eqz v3, :cond_35
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->h()I
move-result v3
if-nez v3, :cond_35
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->getParent()Ljavax/swing/tree/TreeNode;
move-result-object v3
if-eqz v3, :cond_35
iget-object v3, p0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;
invoke-virtual {v3, v0}, Lorg/apache/log4j/f/b/a/d;->removeNodeFromParent(Ljavax/swing/tree/MutableTreeNode;)V
add-int/lit8 v1, v1, 0x1
move v0, v1
:goto_32
move v1, v0
goto :goto_c
:cond_34
return v1
:cond_35
move v0, v1
goto :goto_32
.end method
.method protected h(Lorg/apache/log4j/f/b/a/i;)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/j;->j(Lorg/apache/log4j/f/b/a/i;)V
goto :goto_4
:cond_14
return-void
.end method
.method protected i(Lorg/apache/log4j/f/b/a/i;)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/j;->l(Lorg/apache/log4j/f/b/a/i;)V
goto :goto_4
:cond_14
return-void
.end method
.method protected j(Lorg/apache/log4j/f/b/a/i;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->j:Ljavax/swing/JTree;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->k(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V
return-void
.end method
.method protected k(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;
.registers 4
new-instance v0, Ljavax/swing/tree/TreePath;
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->getPath()[Ljavax/swing/tree/TreeNode;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V
return-object v0
.end method
.method protected l(Lorg/apache/log4j/f/b/a/i;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/b/a/j;->j:Ljavax/swing/JTree;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/j;->k(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JTree;->collapsePath(Ljavax/swing/tree/TreePath;)V
return-void
.end method