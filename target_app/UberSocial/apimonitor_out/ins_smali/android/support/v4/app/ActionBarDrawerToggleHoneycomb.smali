.class  Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHoneycomb"
.field private static final THEME_ATTRS:[I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x101030b
aput v2, v0, v1
sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
.registers 3
sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I
invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
.end method
.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
.registers 9
if-nez p0, :cond_38
new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V
:goto_7
move-object v0, v1
check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;
if-eqz v2, :cond_2e
:try_start_e
invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x13
if-gt v0, v3, :cond_2e
invoke-virtual {v2}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
:goto_2e
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_2f
:cond_2e
return-object v1
:catch_2f
move-exception v0
const-string v2, "ActionBarDrawerToggleHoneycomb"
const-string v3, "Couldn\'t set content description via JB-MR2 API"
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2e
:cond_38
move-object v1, p0
goto :goto_7
.end method
.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
.registers 10
if-nez p0, :cond_48
new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V
:goto_7
move-object v0, v1
check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;
if-eqz v2, :cond_36
:try_start_e
invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
iget-object v3, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p2, v4, v5
invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2c
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d
:goto_2c
return-object v1
:catch_2d
move-exception v0
const-string v2, "ActionBarDrawerToggleHoneycomb"
const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2c
:cond_36
iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;
if-eqz v2, :cond_40
iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;
invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_2c
:cond_40
const-string v0, "ActionBarDrawerToggleHoneycomb"
const-string v2, "Couldn\'t set home-as-up indicator"
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2c
:cond_48
move-object v1, p0
goto :goto_7
.end method