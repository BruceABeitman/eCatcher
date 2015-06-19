.class public Lorg/apache/log4j/f/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static a(ILjava/awt/Adjustable;)V
.registers 2
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-interface {p1, p0}, Ljava/awt/Adjustable;->setValue(I)V
goto :goto_2
.end method
.method public static a(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V
.registers 5
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/log4j/f/b/b;->a(ILjavax/swing/table/TableModel;)Z
move-result v0
if-eqz v0, :cond_4
invoke-virtual {p1}, Ljavax/swing/JTable;->getRowHeight()I
move-result v0
mul-int/2addr v0, p0
invoke-virtual {p2}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/log4j/f/b/b;->a(ILjava/awt/Adjustable;)V
invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/log4j/f/b/b;->a(ILjavax/swing/ListSelectionModel;)V
invoke-static {p1}, Lorg/apache/log4j/f/b/b;->a(Ljavax/swing/JComponent;)V
goto :goto_4
.end method
.method protected static a(ILjavax/swing/ListSelectionModel;)V
.registers 2
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-interface {p1, p0, p0}, Ljavax/swing/ListSelectionModel;->setSelectionInterval(II)V
goto :goto_2
.end method
.method public static a(Ljava/awt/Adjustable;)V
.registers 2
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
new-instance v0, Lorg/apache/log4j/f/b/az;
invoke-direct {v0}, Lorg/apache/log4j/f/b/az;-><init>()V
invoke-interface {p0, v0}, Ljava/awt/Adjustable;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V
goto :goto_2
.end method
.method protected static a(Ljavax/swing/JComponent;)V
.registers 2
new-instance v0, Lorg/apache/log4j/f/b/c;
invoke-direct {v0, p0}, Lorg/apache/log4j/f/b/c;-><init>(Ljavax/swing/JComponent;)V
invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V
return-void
.end method
.method public static a(Ljavax/swing/JScrollPane;)V
.registers 2
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p0}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/f/b/b;->a(Ljava/awt/Adjustable;)V
goto :goto_2
.end method
.method protected static a(ILjavax/swing/table/TableModel;)Z
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
if-ltz p0, :cond_3
invoke-interface {p1}, Ljavax/swing/table/TableModel;->getRowCount()I
move-result v1
if-ge p0, v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method