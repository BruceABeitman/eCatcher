.class public final Landroid/support/v7/internal/view/menu/af;
.super Ljava/lang/Object;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/view/SubMenu;)Landroid/support/v4/internal/view/SupportSubMenu;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/internal/view/menu/ai;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ai;-><init>(Landroid/view/SubMenu;)V
return-object v0
:cond_c
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public static a(Landroid/view/Menu;)Landroid/view/Menu;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/internal/view/menu/ag;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ag;-><init>(Landroid/view/Menu;)V
move-object p0, v0
:cond_c
return-object p0
.end method
.method public static a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_d
new-instance v0, Landroid/support/v7/internal/view/menu/x;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/x;-><init>(Landroid/view/MenuItem;)V
move-object p0, v0
:cond_c
:goto_c
return-object p0
:cond_d
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/internal/view/menu/s;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/view/MenuItem;)V
move-object p0, v0
goto :goto_c
.end method
.method public static b(Landroid/view/Menu;)Landroid/support/v4/internal/view/SupportMenu;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/internal/view/menu/ag;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ag;-><init>(Landroid/view/Menu;)V
return-object v0
:cond_c
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public static b(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/internal/view/menu/x;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/x;-><init>(Landroid/view/MenuItem;)V
:goto_b
return-object v0
:cond_c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_18
new-instance v0, Landroid/support/v7/internal/view/menu/s;
invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/view/MenuItem;)V
goto :goto_b
:cond_18
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method