.class  Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegate;Landroid/support/v7/app/ActionBarActivityDelegate$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V
return-void
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v5, 0x0
iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
iget-object v2, v2, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;
const/4 v3, 0x1
new-array v3, v3, [I
iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivityDelegate;->getHomeAsUpIndicatorAttrId()I
move-result v4
aput v4, v3, v5
invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
.end method
.method public setActionBarDescription(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_b
return-void
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_e
return-void
.end method