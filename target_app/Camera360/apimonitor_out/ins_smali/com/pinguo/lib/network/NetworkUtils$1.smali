.class  Lcom/pinguo/lib/network/NetworkUtils$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"
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
invoke-virtual {p0, p1, p2}, Lcom/pinguo/lib/network/NetworkUtils$1;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
.registers 4
invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method