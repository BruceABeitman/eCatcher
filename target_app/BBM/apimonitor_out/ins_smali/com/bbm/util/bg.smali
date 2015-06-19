.class public final Lcom/bbm/util/bg;
.super Ljava/lang/Object;
.source "Equal.java"
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p0, :cond_8
if-nez p1, :cond_a
:cond_8
const/4 v0, 0x0
goto :goto_3
:cond_a
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method