.class public final Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Landroid/support/v4/view/w;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/v;
invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V
sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/view/t;
invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V
sput-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;
goto :goto_d
.end method
.method public static a(Landroid/view/KeyEvent;)Z
.registers 3
sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;
invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I
move-result v1
invoke-interface {v0, v1}, Landroid/support/v4/view/w;->b(I)Z
move-result v0
return v0
.end method
.method public static b(Landroid/view/KeyEvent;)Z
.registers 3
sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;
invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I
move-result v1
invoke-interface {v0, v1}, Landroid/support/v4/view/w;->c(I)Z
move-result v0
return v0
.end method
.method public static c(Landroid/view/KeyEvent;)V
.registers 2
sget-object v0, Landroid/support/v4/view/s;->a:Landroid/support/v4/view/w;
invoke-interface {v0, p0}, Landroid/support/v4/view/w;->a(Landroid/view/KeyEvent;)V
return-void
.end method