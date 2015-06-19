.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
.registers 6
const/4 v1, 0x1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v0, v2, :cond_b
invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
:goto_a
return v1
:cond_b
const/16 v2, 0xb
if-lt v0, v2, :cond_13
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V
goto :goto_a
:cond_13
const/4 v1, 0x0
goto :goto_a
.end method