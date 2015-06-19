.class final Lnet/sourceforge/zmanim/util/Zman$3;
.super Ljava/lang/Object;
.source "Zman.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 10
move-object v0, p1
check-cast v0, Lnet/sourceforge/zmanim/util/Zman;
move-object v1, v0
move-object v0, p2
check-cast v0, Lnet/sourceforge/zmanim/util/Zman;
move-object v2, v0
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J
move-result-wide v3
invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J
move-result-wide v5
cmp-long v3, v3, v5
if-nez v3, :cond_16
const/4 v3, 0x0
:goto_15
return v3
:cond_16
invoke-virtual {v1}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J
move-result-wide v3
invoke-virtual {v2}, Lnet/sourceforge/zmanim/util/Zman;->getDuration()J
move-result-wide v5
cmp-long v3, v3, v5
if-lez v3, :cond_24
const/4 v3, 0x1
goto :goto_15
:cond_24
const/4 v3, -0x1
goto :goto_15
.end method