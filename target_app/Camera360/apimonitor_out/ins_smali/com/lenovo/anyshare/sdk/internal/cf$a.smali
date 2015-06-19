.class public final Lcom/lenovo/anyshare/sdk/internal/cf$a;
.super Ljava/lang/Object;
.source "HotspotManager.java"
.method public static a(I)I
.registers 3
if-ltz p0, :cond_8
const/4 v1, 0x3
if-gt p0, v1, :cond_8
add-int/lit8 v0, p0, 0xa
:goto_7
return v0
:cond_8
move v0, p0
goto :goto_7
.end method