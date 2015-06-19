.class public final Landroid/support/v4/view/bd;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Landroid/support/v4/view/bg;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/bf;
invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V
sput-object v0, Landroid/support/v4/view/bd;->a:Landroid/support/v4/view/bg;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/view/be;
invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V
sput-object v0, Landroid/support/v4/view/bd;->a:Landroid/support/v4/view/bg;
goto :goto_d
.end method
.method public static a(Landroid/view/ViewConfiguration;)I
.registers 2
sget-object v0, Landroid/support/v4/view/bd;->a:Landroid/support/v4/view/bg;
invoke-interface {v0, p0}, Landroid/support/v4/view/bg;->a(Landroid/view/ViewConfiguration;)I
move-result v0
return v0
.end method