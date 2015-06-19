.class public final Lcom/pinguo/lib/util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
return-object p0
.end method
.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-nez p0, :cond_8
const/4 v0, 0x0
goto :goto_3
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public static indexOfArray([Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
const/4 v1, -0x1
if-nez p1, :cond_5
move v0, v1
:goto_4
:cond_4
return v0
:cond_5
const/4 v0, 0x0
:goto_6
array-length v2, p0
if-lt v0, v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
aget-object v2, p0, v0
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method