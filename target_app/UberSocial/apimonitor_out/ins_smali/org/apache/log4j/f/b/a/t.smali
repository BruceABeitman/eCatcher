.class public Lorg/apache/log4j/f/b/a/t;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "SourceFile"
.field public static final a:Ljava/awt/Color; = null
.field protected static d:Ljavax/swing/ImageIcon; = null
.field private static final e:J = -0x53ea340b672cefe8L
.field protected b:Ljavax/swing/JCheckBox;
.field protected c:Ljavax/swing/JPanel;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Ljava/awt/Color;
const/16 v1, 0xbd
const/16 v2, 0x71
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V
sput-object v0, Lorg/apache/log4j/f/b/a/t;->a:Ljava/awt/Color;
const/4 v0, 0x0
sput-object v0, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V
new-instance v0, Ljavax/swing/JCheckBox;
invoke-direct {v0}, Ljavax/swing/JCheckBox;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
new-instance v0, Ljavax/swing/JPanel;
invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
const-string v1, "Tree.textBackground"
invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V
sget-object v0, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
if-nez v0, :cond_32
const-string v0, "/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
new-instance v1, Ljavax/swing/ImageIcon;
invoke-direct {v1, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V
sput-object v1, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
:cond_32
invoke-virtual {p0, v2}, Lorg/apache/log4j/f/b/a/t;->setOpaque(Z)V
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
invoke-virtual {v0, v2}, Ljavax/swing/JCheckBox;->setOpaque(Z)V
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setOpaque(Z)V
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
new-instance v1, Ljava/awt/FlowLayout;
invoke-direct {v1, v2, v2, v2}, Ljava/awt/FlowLayout;-><init>(III)V
invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
invoke-virtual {v0, p0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;
sget-object v0, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/t;->setOpenIcon(Ljavax/swing/Icon;)V
sget-object v0, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/t;->setClosedIcon(Ljavax/swing/Icon;)V
sget-object v0, Lorg/apache/log4j/f/b/a/t;->d:Ljavax/swing/ImageIcon;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/t;->setLeafIcon(Ljavax/swing/Icon;)V
return-void
.end method
.method public a(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
.registers 11
move-object v0, p2
check-cast v0, Lorg/apache/log4j/f/b/a/i;
invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
if-nez p6, :cond_30
iget-object v1, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljavax/swing/JCheckBox;->setVisible(Z)V
:goto_e
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/t;->a(Lorg/apache/log4j/f/b/a/i;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
invoke-virtual {v2, v1}, Ljavax/swing/JPanel;->setToolTipText(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->k()Z
move-result v1
if-eqz v1, :cond_22
sget-object v1, Lorg/apache/log4j/f/b/a/t;->a:Ljava/awt/Color;
invoke-virtual {p0, v1}, Lorg/apache/log4j/f/b/a/t;->setForeground(Ljava/awt/Color;)V
:cond_22
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->j()Z
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;
invoke-virtual {p0, v0}, Lorg/apache/log4j/f/b/a/t;->setForeground(Ljava/awt/Color;)V
:cond_2d
iget-object v0, p0, Lorg/apache/log4j/f/b/a/t;->c:Ljavax/swing/JPanel;
return-object v0
:cond_30
iget-object v1, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljavax/swing/JCheckBox;->setVisible(Z)V
iget-object v1, p0, Lorg/apache/log4j/f/b/a/t;->b:Ljavax/swing/JCheckBox;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->b()Z
move-result v2
invoke-virtual {v1, v2}, Ljavax/swing/JCheckBox;->setSelected(Z)V
goto :goto_e
.end method
.method protected a(Lorg/apache/log4j/f/b/a/i;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, " contains a total of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {p1}, Lorg/apache/log4j/f/b/a/i;->l()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
const-string v1, " LogRecords."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, " Right-click for more info."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Ljava/awt/Dimension;
.registers 3
const/4 v1, 0x0
new-instance v0, Ljava/awt/Dimension;
invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V
return-object v0
.end method