.class  Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "SourceFile"
.implements Landroid/graphics/drawable/Drawable$Callback;
.field private final mHasMirroring:Z
.field private mOffset:F
.field private mPosition:F
.field private final mTmpRect:Landroid/graphics/Rect;
.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
.registers 6
const/4 v0, 0x0
iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;
invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x12
if-le v1, v2, :cond_d
const/4 v0, 0x1
:cond_d
iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 8
const/4 v5, 0x0
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;
invoke-virtual {p0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;
#getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
if-ne v1, v0, :cond_4d
move v1, v0
:goto_1f
if-eqz v1, :cond_22
const/4 v0, -0x1
:cond_22
iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;
invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
move-result v2
iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F
neg-float v3, v3
int-to-float v4, v2
mul-float/2addr v3, v4
iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F
mul-float/2addr v3, v4
int-to-float v0, v0
mul-float/2addr v0, v3
invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V
if-eqz v1, :cond_46
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z
if-nez v0, :cond_46
int-to-float v0, v2
invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V
const/high16 v0, -0x4080
const/high16 v1, 0x3f80
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V
:cond_46
invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
:cond_4d
const/4 v1, 0x0
goto :goto_1f
.end method
.method public getPosition()F
.registers 2
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F
return v0
.end method
.method public setOffset(F)V
.registers 2
iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V
return-void
.end method
.method public setPosition(F)V
.registers 2
iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V
return-void
.end method