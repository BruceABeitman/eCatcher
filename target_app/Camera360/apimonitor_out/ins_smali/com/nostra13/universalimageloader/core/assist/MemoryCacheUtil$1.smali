.class final Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1;
.super Ljava/lang/Object;
.source "MemoryCacheUtil.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil$1;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
.registers 7
const/4 v3, 0x0
const-string/jumbo v2, "_"
invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "_"
invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v2
return v2
.end method