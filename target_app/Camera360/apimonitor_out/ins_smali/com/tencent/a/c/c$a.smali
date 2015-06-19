.class public final Lcom/tencent/a/c/c$a;
.super Ljava/lang/Object;
.source "ProGuard"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final a(II)Z
.registers 3
and-int v0, p0, p1
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method