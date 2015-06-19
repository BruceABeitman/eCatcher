.class public Lorg/apache/log4j/f/b/a/d;
.super Ljavax/swing/tree/DefaultTreeModel;
.source "SourceFile"
.field private static final d:J = -0x2f60907d0d57f51dL
.field protected a:Z
.field protected b:Ljava/awt/event/ActionListener;
.field protected c:Ljava/awt/event/ActionEvent;
.method public constructor <init>(Lorg/apache/log4j/f/b/a/i;)V
.registers 5
invoke-direct {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/d;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
new-instance v0, Ljava/awt/event/ActionEvent;
const/16 v1, 0x3e9
const-string v2, "Nodes Selection changed"
invoke-direct {v0, p0, v1, v2}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V
iput-object v0, p0, Lorg/apache/log4j/f/b/a/d;->c:Ljava/awt/event/ActionEvent;
return-void
.end method
.method public a(Lorg/apache/log4j/f/b/a/i;)Ljavax/swing/tree/TreePath;
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Ljavax/swing/tree/TreePath;
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/d;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V
goto :goto_3
.end method
.method public a()Lorg/apache/log4j/f/b/a/i;
.registers 2
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->getRoot()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
return-object v0
.end method
.method public a(Ljava/lang/String;)Lorg/apache/log4j/f/b/a/i;
.registers 3
new-instance v0, Lorg/apache/log4j/f/b/a/u;
invoke-direct {v0, p1}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;
move-result-object v0
return-object v0
.end method
.method public a(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;
.registers 11
const/4 v2, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->getRoot()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
move v1, v2
move-object v3, v0
:goto_9
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/u;->a()I
move-result v0
if-ge v1, v0, :cond_40
invoke-virtual {p1, v1}, Lorg/apache/log4j/f/b/a/u;->a(I)Lorg/apache/log4j/f/b/a/b;
move-result-object v4
invoke-virtual {v3}, Lorg/apache/log4j/f/b/a/i;->children()Ljava/util/Enumeration;
move-result-object v5
:cond_17
invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4}, Lorg/apache/log4j/f/b/a/b;->a()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_17
const/4 v3, 0x1
move v8, v3
move-object v3, v0
move v0, v8
:goto_3d
if-nez v0, :cond_41
const/4 v3, 0x0
:cond_40
return-object v3
:cond_41
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_45
move v0, v2
goto :goto_3d
.end method
.method public declared-synchronized a(Ljava/awt/event/ActionListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->add(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Lorg/apache/log4j/f/b/a/i;Z)V
.registers 4
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->b()Z
move-result v0
if-ne v0, p2, :cond_7
:goto_6
return-void
:cond_7
if-eqz p2, :cond_e
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/f/b/a/d;->c(Lorg/apache/log4j/f/b/a/i;Z)V
goto :goto_6
:cond_e
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/i;Z)V
goto :goto_6
.end method
.method public a(Lorg/apache/log4j/f/g;)V
.registers 8
const/4 v2, 0x1
new-instance v0, Lorg/apache/log4j/f/b/a/u;
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->c(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;
move-result-object v3
invoke-virtual {v3}, Lorg/apache/log4j/f/b/a/i;->g()V
iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/d;->a:Z
if-eqz v0, :cond_3c
invoke-virtual {p1}, Lorg/apache/log4j/f/g;->d()Z
move-result v0
if-eqz v0, :cond_3c
invoke-virtual {p0, v3}, Lorg/apache/log4j/f/b/a/d;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;
move-result-object v4
array-length v5, v4
move v1, v2
:goto_24
add-int/lit8 v0, v5, -0x1
if-ge v1, v0, :cond_36
aget-object v0, v4, v1
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0, v2}, Lorg/apache/log4j/f/b/a/i;->c(Z)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_24
:cond_36
invoke-virtual {v3, v2}, Lorg/apache/log4j/f/b/a/i;->b(Z)V
invoke-virtual {p0, v3}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V
:cond_3c
return-void
.end method
.method public b()V
.registers 3
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->i()V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V
goto :goto_8
:cond_1b
return-void
.end method
.method public declared-synchronized b(Ljava/awt/event/ActionListener;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->remove(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected b(Lorg/apache/log4j/f/b/a/i;)V
.registers 3
new-instance v0, Lorg/apache/log4j/f/b/a/e;
invoke-direct {v0, p0, p1}, Lorg/apache/log4j/f/b/a/e;-><init>(Lorg/apache/log4j/f/b/a/d;Lorg/apache/log4j/f/b/a/i;)V
invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
return-void
.end method
.method public b(Lorg/apache/log4j/f/b/a/i;Z)V
.registers 6
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;
move-result-object v1
:cond_4
:goto_4
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->b()Z
move-result v2
if-eq v2, p2, :cond_4
invoke-virtual {v0, p2}, Lorg/apache/log4j/f/b/a/i;->a(Z)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V
goto :goto_4
:cond_1d
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->c()V
return-void
.end method
.method public b(Lorg/apache/log4j/f/b/a/u;)Z
.registers 11
const/4 v5, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->getRoot()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
move v1, v2
move-object v3, v0
move v0, v2
:goto_b
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/u;->a()I
move-result v4
if-ge v1, v4, :cond_4f
invoke-virtual {p1, v1}, Lorg/apache/log4j/f/b/a/u;->a(I)Lorg/apache/log4j/f/b/a/b;
move-result-object v4
invoke-virtual {v3}, Lorg/apache/log4j/f/b/a/i;->children()Ljava/util/Enumeration;
move-result-object v6
:cond_19
invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_55
invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4}, Lorg/apache/log4j/f/b/a/b;->a()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_19
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->b()Z
move-result v3
if-eqz v3, :cond_51
move v3, v5
move-object v4, v0
move v0, v5
:goto_44
if-eqz v3, :cond_48
if-nez v0, :cond_49
:cond_48
:goto_48
return v2
:cond_49
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v3
move-object v3, v4
goto :goto_b
:cond_4f
move v2, v0
goto :goto_48
:cond_51
move v3, v2
move-object v4, v0
move v0, v5
goto :goto_44
:cond_55
move v0, v2
move-object v4, v3
move v3, v2
goto :goto_44
.end method
.method public c(Lorg/apache/log4j/f/b/a/u;)Lorg/apache/log4j/f/b/a/i;
.registers 10
const/4 v2, 0x0
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->getRoot()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
move v1, v2
move-object v3, v0
:goto_9
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/u;->a()I
move-result v0
if-ge v1, v0, :cond_53
invoke-virtual {p1, v1}, Lorg/apache/log4j/f/b/a/u;->a(I)Lorg/apache/log4j/f/b/a/b;
move-result-object v4
invoke-virtual {v3}, Lorg/apache/log4j/f/b/a/i;->children()Ljava/util/Enumeration;
move-result-object v5
:cond_17
invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4}, Lorg/apache/log4j/f/b/a/b;->a()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_17
const/4 v3, 0x1
:goto_3a
if-nez v3, :cond_54
new-instance v3, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v4}, Lorg/apache/log4j/f/b/a/b;->a()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lorg/apache/log4j/f/b/a/i;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->getChildCount()I
move-result v4
invoke-virtual {p0, v3, v0, v4}, Lorg/apache/log4j/f/b/a/d;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V
invoke-virtual {p0, v3}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/i;)V
:goto_4f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_53
return-object v3
:cond_54
move-object v3, v0
goto :goto_4f
:cond_56
move-object v0, v3
move v3, v2
goto :goto_3a
.end method
.method protected c()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/apache/log4j/f/b/a/d;->b:Ljava/awt/event/ActionListener;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/d;->c:Ljava/awt/event/ActionEvent;
invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V
:cond_b
return-void
.end method
.method public c(Lorg/apache/log4j/f/b/a/i;Z)V
.registers 8
invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/d;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;
move-result-object v2
array-length v3, v2
const/4 v0, 0x1
move v1, v0
:goto_7
if-ge v1, v3, :cond_1d
aget-object v0, v2, v1
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->b()Z
move-result v4
if-eq v4, p2, :cond_19
invoke-virtual {v0, p2}, Lorg/apache/log4j/f/b/a/i;->a(Z)V
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V
:cond_19
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_1d
invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/d;->c()V
return-void
.end method