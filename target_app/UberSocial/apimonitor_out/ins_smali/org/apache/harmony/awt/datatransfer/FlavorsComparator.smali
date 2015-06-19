.class public Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I
.registers 7
const/4 v2, 0x0
const/4 v0, -0x1
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-nez v3, :cond_11
invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-nez v3, :cond_11
move v0, v2
:goto_10
:cond_10
return v0
:cond_11
invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-nez v3, :cond_1d
invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-nez v3, :cond_10
:cond_1d
invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-eqz v3, :cond_2b
invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z
move-result v3
if-nez v3, :cond_2b
move v0, v1
goto :goto_10
:cond_2b
const/4 v3, 0x2
new-array v3, v3, [Ljava/awt/datatransfer/DataFlavor;
aput-object p1, v3, v2
aput-object p2, v3, v1
invoke-static {v3}, Ljava/awt/datatransfer/DataFlavor;->selectBestTextFlavor([Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/datatransfer/DataFlavor;
move-result-object v2
if-eq v2, p1, :cond_10
move v0, v1
goto :goto_10
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/awt/datatransfer/DataFlavor;
check-cast p2, Ljava/awt/datatransfer/DataFlavor;
invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/awt/datatransfer/FlavorsComparator;->compare(Ljava/awt/datatransfer/DataFlavor;Ljava/awt/datatransfer/DataFlavor;)I
move-result v0
return v0
.end method