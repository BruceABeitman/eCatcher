.class public Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl; = null
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
:goto_d
return-void
:cond_e
new-instance v0, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
.registers 3
sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
.registers 3
sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)Z
move-result v0
return v0
.end method