.class public final Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "GravityCompat.java"
.field static final a:Landroid/support/v4/view/t;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/v;
invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V
sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/t;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/view/u;
invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V
sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/t;
goto :goto_d
.end method
.method public static a(II)I
.registers 3
sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/t;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/t;->a(II)I
move-result v0
return v0
.end method