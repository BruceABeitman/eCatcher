.class public Lorg/apache/log4j/f/b/a/h;
.super Ljavax/swing/tree/DefaultTreeCellEditor;
.source "SourceFile"


# instance fields
.field protected a:Ljavax/swing/Icon;

.field private b:Lorg/apache/log4j/f/b/a/t;


# direct methods
.method public constructor <init>(Ljavax/swing/JTree;Lorg/apache/log4j/f/b/a/t;Lorg/apache/log4j/f/b/a/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/tree/DefaultTreeCellEditor;-><init>(Ljavax/swing/JTree;Ljavax/swing/tree/DefaultTreeCellRenderer;Ljavax/swing/tree/TreeCellEditor;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/h;->a:Ljavax/swing/Icon;

    iput-object p2, p0, Lorg/apache/log4j/f/b/a/h;->b:Lorg/apache/log4j/f/b/a/t;

    invoke-virtual {p2, v0}, Lorg/apache/log4j/f/b/a/t;->setIcon(Ljavax/swing/Icon;)V

    invoke-virtual {p2, v0}, Lorg/apache/log4j/f/b/a/t;->setLeafIcon(Ljavax/swing/Icon;)V

    invoke-virtual {p2, v0}, Lorg/apache/log4j/f/b/a/t;->setOpenIcon(Ljavax/swing/Icon;)V

    invoke-virtual {p2, v0}, Lorg/apache/log4j/f/b/a/t;->setClosedIcon(Ljavax/swing/Icon;)V

    iput-object v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->editingIcon:Ljavax/swing/Icon;

    return-void
.end method


# virtual methods
.method protected a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/f/b/a/h;->offset:I

    return-void
.end method

.method public a(Ljava/awt/event/MouseEvent;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/h;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/h;->tree:Ljavax/swing/JTree;

    iget v1, p0, Lorg/apache/log4j/f/b/a/h;->lastRow:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->getRowBounds(I)Ljava/awt/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/h;->b:Lorg/apache/log4j/f/b/a/t;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/t;->b()Ljava/awt/Dimension;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/f/b/a/h;->offset:I

    iget v3, v1, Ljava/awt/Dimension;->width:I

    add-int/2addr v2, v3

    iget v1, v1, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v2, v1}, Ljava/awt/Rectangle;->translate(II)V

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public a(Ljava/util/EventObject;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/awt/event/MouseEvent;

    if-eqz v1, :cond_1f

    check-cast p1, Ljava/awt/event/MouseEvent;

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/h;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->isLeaf()Z

    move-result v0

    :cond_1f
    return v0
.end method

.method protected b(Ljava/util/EventObject;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/awt/event/MouseEvent;

    if-eqz v1, :cond_b

    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/h;->a(Ljava/awt/event/MouseEvent;)Z

    move-result v0

    :cond_b
    return v0
.end method
