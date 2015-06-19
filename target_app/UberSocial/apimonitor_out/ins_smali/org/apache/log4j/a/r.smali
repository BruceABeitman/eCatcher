.class final Lorg/apache/log4j/a/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 9
const/4 v1, 0x1
const/4 v0, -0x1
if-nez p1, :cond_8
if-nez p2, :cond_8
const/4 v0, 0x0
:cond_7
:goto_7
return v0
:cond_8
if-eqz p1, :cond_7
if-nez p2, :cond_e
move v0, v1
goto :goto_7
:cond_e
check-cast p1, Lorg/apache/log4j/a/j;
check-cast p2, Lorg/apache/log4j/a/j;
invoke-virtual {p1}, Lorg/apache/log4j/a/j;->a()J
move-result-wide v2
invoke-virtual {p2}, Lorg/apache/log4j/a/j;->a()J
move-result-wide v4
cmp-long v2, v2, v4
if-gez v2, :cond_7
move v0, v1
goto :goto_7
.end method