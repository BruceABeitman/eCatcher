.class  Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "SourceFile"
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;
.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;
.field public upIndicatorView:Landroid/widget/ImageView;
.method constructor <init>(Landroid/app/Activity;)V
.registers 10
const v7, 0x102002c
const/4 v6, 0x1
const/4 v5, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_8
const-class v0, Landroid/app/ActionBar;
const-string v1, "setHomeAsUpIndicator"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/graphics/drawable/Drawable;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;
const-class v0, Landroid/app/ActionBar;
const-string v1, "setHomeActionContentDescription"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
:try_end_2c
.catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d
:goto_2c
:cond_2c
return-void
:catch_2d
move-exception v0
invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_2c
invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v2
if-ne v2, v7, :cond_58
:goto_4f
instance-of v1, v0, Landroid/widget/ImageView;
if-eqz v1, :cond_2c
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;
goto :goto_2c
:cond_58
move-object v0, v1
goto :goto_4f
.end method