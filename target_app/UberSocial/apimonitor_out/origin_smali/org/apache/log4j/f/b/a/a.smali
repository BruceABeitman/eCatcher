.class public Lorg/apache/log4j/f/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/table/TableCellEditor;
.implements Ljavax/swing/tree/TreeCellEditor;


# static fields
.field static e:Ljava/lang/Class;


# instance fields
.field protected a:Ljavax/swing/event/EventListenerList;

.field protected b:Ljava/lang/Object;

.field protected c:Ljavax/swing/event/ChangeEvent;

.field protected d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/a;->a:Ljavax/swing/event/EventListenerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/f/b/a/a;->d:I

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


# virtual methods
.method public a(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .registers 7

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/f/b/a/a;->d:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljavax/swing/event/CellEditorListener;)V
    .registers 4

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/a;->a:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/f/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void

    :cond_12
    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    goto :goto_e
.end method

.method public a(Ljava/util/EventObject;)Z
    .registers 4

    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/f/b/a/a;->d:I

    if-ge v0, v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/f/b/a/a;->d:I

    return v0
.end method

.method public b(Ljavax/swing/event/CellEditorListener;)V
    .registers 4

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/a;->a:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/f/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void

    :cond_12
    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    goto :goto_e
.end method

.method public b(Ljava/util/EventObject;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/log4j/f/b/a/a;->a(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_12

    check-cast p1, Ljava/awt/event/MouseEvent;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/f/b/a/a;->d:I

    if-lt v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/a;->e()V

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/a;->f()V

    return-void
.end method

.method protected e()V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/a;->a:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_a
    if-ltz v1, :cond_39

    aget-object v3, v2, v1

    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    if-nez v0, :cond_36

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/f/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    :goto_1a
    if-ne v3, v0, :cond_32

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    if-nez v0, :cond_27

    new-instance v0, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v0, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    :cond_27
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v0, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    :cond_32
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_a

    :cond_36
    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    goto :goto_1a

    :cond_39
    return-void
.end method

.method protected f()V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/a;->a:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_a
    if-ltz v1, :cond_39

    aget-object v3, v2, v1

    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    if-nez v0, :cond_36

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/f/b/a/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    :goto_1a
    if-ne v3, v0, :cond_32

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    if-nez v0, :cond_27

    new-instance v0, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v0, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    :cond_27
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v2, v0

    check-cast v0, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/f/b/a/a;->c:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v0, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    :cond_32
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_a

    :cond_36
    sget-object v0, Lorg/apache/log4j/f/b/a/a;->e:Ljava/lang/Class;

    goto :goto_1a

    :cond_39
    return-void
.end method
