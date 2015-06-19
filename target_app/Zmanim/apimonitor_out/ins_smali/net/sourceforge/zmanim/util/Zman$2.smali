.class final Lnet/sourceforge/zmanim/util/Zman$2;
.super Ljava/lang/Object;
.source "Zman.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 8
move-object v0, p1
check-cast v0, Lnet/sourceforge/zmanim/util/Zman;
move-object v1, v0
move-object v0, p2
check-cast v0, Lnet/sourceforge/zmanim/util/Zman;
move-object v2, v0
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/Zman;->getZmanLabel()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v3
return v3
.end method