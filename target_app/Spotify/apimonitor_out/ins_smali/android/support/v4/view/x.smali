.class public final Landroid/support/v4/view/x;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Landroid/support/v4/view/ab;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/aa;
invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V
sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
:goto_d
return-void
:cond_e
const/16 v1, 0xb
if-lt v0, v1, :cond_1a
new-instance v0, Landroid/support/v4/view/z;
invoke-direct {v0}, Landroid/support/v4/view/z;-><init>()V
sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
goto :goto_d
:cond_1a
new-instance v0, Landroid/support/v4/view/y;
invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V
sput-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
goto :goto_d
.end method
.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/l;)Landroid/view/MenuItem;
.registers 4
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0, p1}, Landroid/support/v4/a/a/b;->a(Landroid/support/v4/view/l;)Landroid/support/v4/a/a/b;
move-result-object p0
:goto_a
return-object p0
:cond_b
const-string v0, "MenuItemCompat"
const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_a
.end method
.method public static a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
.registers 3
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0, p1}, Landroid/support/v4/a/a/b;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ab;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
move-result-object v0
goto :goto_a
.end method
.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
.registers 2
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0}, Landroid/support/v4/a/a/b;->getActionView()Landroid/view/View;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0}, Landroid/support/v4/view/ab;->a(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v0
goto :goto_a
.end method
.method public static a(Landroid/view/MenuItem;I)V
.registers 3
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_a
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0, p1}, Landroid/support/v4/a/a/b;->setShowAsAction(I)V
:goto_9
return-void
:cond_a
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ab;->a(Landroid/view/MenuItem;I)V
goto :goto_9
.end method
.method public static b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
.registers 3
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0, p1}, Landroid/support/v4/a/a/b;->setActionView(I)Landroid/view/MenuItem;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ab;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
move-result-object v0
goto :goto_a
.end method
.method public static b(Landroid/view/MenuItem;)Z
.registers 2
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0}, Landroid/support/v4/a/a/b;->expandActionView()Z
move-result v0
:goto_a
return v0
:cond_b
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0}, Landroid/support/v4/view/ab;->b(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_a
.end method
.method public static c(Landroid/view/MenuItem;)Z
.registers 2
instance-of v0, p0, Landroid/support/v4/a/a/b;
if-eqz v0, :cond_b
check-cast p0, Landroid/support/v4/a/a/b;
invoke-interface {p0}, Landroid/support/v4/a/a/b;->isActionViewExpanded()Z
move-result v0
:goto_a
return v0
:cond_b
sget-object v0, Landroid/support/v4/view/x;->a:Landroid/support/v4/view/ab;
invoke-interface {v0, p0}, Landroid/support/v4/view/ab;->c(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_a
.end method