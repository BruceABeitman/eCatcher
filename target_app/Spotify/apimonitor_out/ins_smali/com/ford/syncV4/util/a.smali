.class public final Lcom/ford/syncV4/util/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a([BI)I
.registers 5
const/4 v0, 0x0
move v1, v0
move v0, p1
:goto_3
add-int/lit8 v2, p1, 0x4
if-ge v0, v2, :cond_11
shl-int/lit8 v1, v1, 0x8
aget-byte v2, p0, v0
and-int/lit16 v2, v2, 0xff
or-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_11
return v1
.end method
.method public static final a(I)[B
.registers 4
const/4 v0, 0x4
new-array v0, v0, [B
const/4 v1, 0x0
ushr-int/lit8 v2, p0, 0x18
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x1
ushr-int/lit8 v2, p0, 0x10
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x2
ushr-int/lit8 v2, p0, 0x8
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x3
int-to-byte v2, p0
aput-byte v2, v0, v1
return-object v0
.end method