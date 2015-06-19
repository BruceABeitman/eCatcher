.class public Lcom/spotify/android/paste/widget/NavigationItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field private static final e:[I
.field private a:Landroid/widget/TextView;
.field private b:Lcom/spotify/android/paste/widget/NotificationBadgeView;
.field private c:Z
.field private d:Lcom/spotify/android/paste/graphics/f;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x10100a2
aput v2, v0, v1
sput-object v0, Lcom/spotify/android/paste/widget/NavigationItemView;->e:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->q:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 15
const/4 v10, 0x1
const/high16 v9, 0x40a0
const/4 v8, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-class v0, Lcom/spotify/android/paste/widget/NavigationItemView;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/android/paste/e;->s:[I
invoke-virtual {p1, p2, v0, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v2
const/4 v3, 0x5
invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v3
const/4 v4, 0x2
invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
const/4 v5, 0x3
const/4 v6, -0x1
invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v5
const/4 v6, 0x4
invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v6
const/4 v7, 0x6
invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v7
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, v2}, Lcom/spotify/android/paste/widget/NavigationItemView;->setMinimumHeight(I)V
invoke-virtual {p0, v3, v8, v3, v8}, Lcom/spotify/android/paste/widget/NavigationItemView;->setPadding(IIII)V
sget v0, Lcom/spotify/android/paste/d;->g:I
invoke-static {p1, v0, p0}, Lcom/spotify/android/paste/widget/NavigationItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
sget v0, Lcom/spotify/android/paste/c;->r:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
sget v0, Lcom/spotify/android/paste/c;->i:I
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/NotificationBadgeView;
iput-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->b:Lcom/spotify/android/paste/widget/NotificationBadgeView;
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
invoke-static {p1, v0, v7}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v10}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V
if-gez v5, :cond_a8
new-instance v0, Lcom/spotify/android/paste/graphics/f;
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
:goto_73
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, v6}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->b:Lcom/spotify/android/paste/widget/NotificationBadgeView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget-object v1, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/f;->getIntrinsicWidth()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/NavigationItemView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v9, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v2
sub-int/2addr v1, v2
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/NavigationItemView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v9, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v3
add-int/2addr v2, v3
iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I
iget-object v4, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v4}, Lcom/spotify/android/paste/graphics/f;->getIntrinsicHeight()I
move-result v4
div-int/lit8 v4, v4, 0x2
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
return-void
:cond_a8
new-instance v0, Lcom/spotify/android/paste/graphics/f;
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;
int-to-float v2, v5
invoke-direct {v0, p1, v1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
goto :goto_73
.end method
.method public final a()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Z)V
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(I)V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->b:Lcom/spotify/android/paste/widget/NotificationBadgeView;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/NotificationBadgeView;->a(I)V
return-void
.end method
.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
.registers 5
const/4 v2, 0x0
if-nez p1, :cond_9
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto :goto_8
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->c:Z
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/NavigationItemView;->refreshDrawableState()V
return-void
.end method
.method protected onCreateDrawableState(I)[I
.registers 4
add-int/lit8 v0, p1, 0x1
invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/android/paste/widget/NavigationItemView;->c:Z
if-eqz v1, :cond_f
sget-object v1, Lcom/spotify/android/paste/widget/NavigationItemView;->e:[I
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/NavigationItemView;->mergeDrawableStates([I[I)[I
:cond_f
return-object v0
.end method