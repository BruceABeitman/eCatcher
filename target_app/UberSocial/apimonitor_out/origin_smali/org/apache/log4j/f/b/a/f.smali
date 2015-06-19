.class public Lorg/apache/log4j/f/b/a/f;
.super Ljavax/swing/JTree;
.source "SourceFile"


# static fields
.field private static final c:J = 0x6ff11a69406207b8L


# instance fields
.field protected a:Lorg/apache/log4j/f/b/a/d;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/f;->b:Z

    new-instance v0, Lorg/apache/log4j/f/b/a/i;

    const-string v1, "Categories"

    invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/a/i;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/log4j/f/b/a/d;

    invoke-direct {v1, v0}, Lorg/apache/log4j/f/b/a/d;-><init>(Lorg/apache/log4j/f/b/a/i;)V

    iput-object v1, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/f;->setModel(Ljavax/swing/tree/TreeModel;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/f;->b()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/f/b/a/d;)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/f;->b:Z

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/f;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/MouseEvent;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Ljavax/swing/JTree;->getToolTipText(Ljava/awt/event/MouseEvent;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method

.method public a()Lorg/apache/log4j/f/b/a/d;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    return-object v0
.end method

.method protected b()V
    .registers 5

    const/4 v3, 0x1

    const-string v0, "JTree.lineStyle"

    const-string v1, "Angled"

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/f/b/a/f;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/log4j/f/b/a/t;

    invoke-direct {v0}, Lorg/apache/log4j/f/b/a/t;-><init>()V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/f/b/a/f;->setEditable(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/f;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    new-instance v0, Lorg/apache/log4j/f/b/a/j;

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/a/j;-><init>(Lorg/apache/log4j/f/b/a/d;)V

    new-instance v1, Lorg/apache/log4j/f/b/a/h;

    new-instance v2, Lorg/apache/log4j/f/b/a/t;

    invoke-direct {v2}, Lorg/apache/log4j/f/b/a/t;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/log4j/f/b/a/h;-><init>(Ljavax/swing/JTree;Lorg/apache/log4j/f/b/a/t;Lorg/apache/log4j/f/b/a/j;)V

    invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/a/f;->setCellEditor(Ljavax/swing/tree/TreeCellEditor;)V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/f/b/a/f;->setShowsRootHandles(Z)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/f;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/f;->d()V

    return-void
.end method

.method protected c()V
    .registers 3

    iget-boolean v0, p0, Lorg/apache/log4j/f/b/a/f;->b:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/f/b/a/f;->b:Z

    new-instance v0, Ljavax/swing/tree/TreePath;

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/f/b/a/i;->getPath()[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/f;->expandPath(Ljavax/swing/tree/TreePath;)V

    goto :goto_4
.end method

.method protected d()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/f;->a:Lorg/apache/log4j/f/b/a/d;

    new-instance v1, Lorg/apache/log4j/f/b/a/g;

    invoke-direct {v1, p0}, Lorg/apache/log4j/f/b/a/g;-><init>(Lorg/apache/log4j/f/b/a/f;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a/d;->addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V

    return-void
.end method
