.class public Lorg/apache/log4j/f/b/ay;
.super Ljavax/swing/table/DefaultTableCellRenderer;
.source "SourceFile"
.field private static final c:J = -0x36d70b99e8e9e1cdL
.field protected a:Z
.field protected b:Ljava/awt/Color;
.method public constructor <init>()V
.registers 3
const/16 v1, 0xe6
invoke-direct {p0}, Ljavax/swing/table/DefaultTableCellRenderer;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/log4j/f/b/ay;->a:Z
new-instance v0, Ljava/awt/Color;
invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V
iput-object v0, p0, Lorg/apache/log4j/f/b/ay;->b:Ljava/awt/Color;
return-void
.end method
.method protected a(Lorg/apache/log4j/f/e;)Ljava/awt/Color;
.registers 3
invoke-static {}, Lorg/apache/log4j/f/e;->f()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/awt/Color;
return-object v0
.end method
.method public a(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
.registers 8
rem-int/lit8 v0, p5, 0x2
if-nez v0, :cond_23
iget-object v0, p0, Lorg/apache/log4j/f/b/ay;->b:Ljava/awt/Color;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/ay;->setBackground(Ljava/awt/Color;)V
:goto_9
invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;
move-result-object v0
check-cast v0, Lorg/apache/log4j/f/b/a;
invoke-virtual {v0, p5}, Lorg/apache/log4j/f/b/a;->c(I)Lorg/apache/log4j/f/g;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/f/g;->b()Lorg/apache/log4j/f/e;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/ay;->a(Lorg/apache/log4j/f/e;)Ljava/awt/Color;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/ay;->setForeground(Ljava/awt/Color;)V
invoke-super/range {p0 .. p6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
move-result-object v0
return-object v0
:cond_23
sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/ay;->setBackground(Ljava/awt/Color;)V
goto :goto_9
.end method