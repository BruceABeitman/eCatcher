.class public Landroid/support/v7/widget/h;
.super Landroid/support/v4/view/ActionProvider;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "share_history.xml"
.field private static final b:I = 0x4
.field private c:I
.field private final d:Landroid/support/v7/widget/k;
.field private final e:Landroid/content/Context;
.field private f:Ljava/lang/String;
.field private g:Landroid/support/v7/widget/i;
.field private h:Landroid/support/v7/internal/widget/j;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V
const/4 v0, 0x4
iput v0, p0, Landroid/support/v7/widget/h;->c:I
new-instance v0, Landroid/support/v7/widget/k;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/k;-><init>(Landroid/support/v7/widget/h;Landroid/support/v7/widget/h$1;)V
iput-object v0, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/k;
const-string v0, "share_history.xml"
iput-object v0, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
iput-object p1, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Landroid/support/v7/widget/h;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
return-object v0
.end method
.method private a()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/h;->g:Landroid/support/v7/widget/i;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v7/widget/h;->h:Landroid/support/v7/internal/widget/j;
if-nez v0, :cond_11
new-instance v0, Landroid/support/v7/widget/j;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/j;-><init>(Landroid/support/v7/widget/h;Landroid/support/v7/widget/h$1;)V
iput-object v0, p0, Landroid/support/v7/widget/h;->h:Landroid/support/v7/internal/widget/j;
:cond_11
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/h;->h:Landroid/support/v7/internal/widget/j;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/j;)V
goto :goto_4
.end method
.method static synthetic b(Landroid/support/v7/widget/h;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/widget/h;)Landroid/support/v7/widget/i;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/h;->g:Landroid/support/v7/widget/i;
return-object v0
.end method
.method public a(Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Intent;)V
return-void
.end method
.method public a(Landroid/support/v7/widget/i;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/h;->g:Landroid/support/v7/widget/i;
invoke-direct {p0}, Landroid/support/v7/widget/h;->a()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
invoke-direct {p0}, Landroid/support/v7/widget/h;->a()V
return-void
.end method
.method public hasSubMenu()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onCreateActionView()Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;
move-result-object v0
new-instance v1, Landroid/support/v7/internal/widget/ActivityChooserView;
iget-object v2, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
invoke-direct {v1, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/internal/widget/d;)V
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
iget-object v2, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
sget v3, Landroid/support/v7/a/d;->actionModeShareDrawable:I
const/4 v4, 0x1
invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget-object v2, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/ActionProvider;)V
sget v0, Landroid/support/v7/a/l;->abc_shareactionprovider_share_with_application:I
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V
sget v0, Landroid/support/v7/a/l;->abc_shareactionprovider_share_with:I
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V
return-object v1
.end method
.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
.registers 10
const/4 v1, 0x0
invoke-interface {p1}, Landroid/view/SubMenu;->clear()V
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v7/widget/h;->f:Ljava/lang/String;
invoke-static {v0, v2}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;
move-result-object v2
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual {v2}, Landroid/support/v7/internal/widget/d;->b()I
move-result v4
iget v0, p0, Landroid/support/v7/widget/h;->c:I
invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I
move-result v5
move v0, v1
:goto_1d
if-ge v0, v5, :cond_3b
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/d;->a(I)Landroid/content/pm/ResolveInfo;
move-result-object v6
invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v7
invoke-interface {p1, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v7
invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
move-result-object v6
iget-object v7, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/k;
invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
add-int/lit8 v0, v0, 0x1
goto :goto_1d
:cond_3b
if-ge v5, v4, :cond_68
iget-object v0, p0, Landroid/support/v7/widget/h;->e:Landroid/content/Context;
sget v6, Landroid/support/v7/a/l;->abc_activity_chooser_view_see_all:I
invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v1, v5, v5, v0}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v5
move v0, v1
:goto_4a
if-ge v0, v4, :cond_68
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/d;->a(I)Landroid/content/pm/ResolveInfo;
move-result-object v6
invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v7
invoke-interface {v5, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v7
invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
move-result-object v6
iget-object v7, p0, Landroid/support/v7/widget/h;->d:Landroid/support/v7/widget/k;
invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
add-int/lit8 v0, v0, 0x1
goto :goto_4a
:cond_68
return-void
.end method