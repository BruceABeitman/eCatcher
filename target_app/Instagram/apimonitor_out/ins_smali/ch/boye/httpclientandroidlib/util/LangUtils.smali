.class public final Lch/boye/httpclientandroidlib/util/LangUtils;
.super Ljava/lang/Object;
.source "LangUtils.java"
.field public static final HASH_OFFSET:I = 0x25
.field public static final HASH_SEED:I = 0x11
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p0, :cond_8
if-nez p1, :cond_7
move v1, v2
:cond_7
:goto_7
return v1
:cond_8
if-eqz p1, :cond_7
array-length v0, p0
array-length v3, p1
if-ne v0, v3, :cond_7
move v0, v1
:goto_f
array-length v3, p0
if-ge v0, v3, :cond_1f
aget-object v3, p0, v0
aget-object v4, p1, v0
invoke-static {v3, v4}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1f
move v1, v2
goto :goto_7
.end method
.method public static hashCode(II)I
.registers 3
mul-int/lit8 v0, p0, 0x25
add-int/2addr v0, p1
return v0
.end method
.method public static hashCode(ILjava/lang/Object;)I
.registers 3
if-eqz p1, :cond_b
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v0
:goto_6
invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I
move-result v0
return v0
:cond_b
const/4 v0, 0x0
goto :goto_6
.end method
.method public static hashCode(IZ)I
.registers 3
if-eqz p1, :cond_8
const/4 v0, 0x1
:goto_3
invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(II)I
move-result v0
return v0
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method