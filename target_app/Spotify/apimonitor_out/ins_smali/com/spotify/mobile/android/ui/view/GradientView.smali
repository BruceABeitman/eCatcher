.class public Lcom/spotify/mobile/android/ui/view/GradientView;
.super Landroid/view/View;
.source "SourceFile"
.field private a:Landroid/graphics/drawable/GradientDrawable;
.field private b:[I
.field private c:Landroid/graphics/drawable/GradientDrawable$Orientation;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
const/4 v0, 0x2
new-array v0, v0, [I
fill-array-data v0, :array_14
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->b:[I
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/GradientView;->a()V
return-void
nop
:array_14
.array-data 0x4
0x0t 0x0t 0x0t 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x2
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/GradientView;->isInEditMode()Z
move-result v1
if-nez v1, :cond_3e
sget-object v1, Lcom/spotify/music/d;->t:[I
invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v1
new-array v2, v4, [I
const/high16 v3, -0x100
invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v3
aput v3, v2, v0
const/4 v0, -0x1
invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v0
aput v0, v2, v5
iput-object v2, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->b:[I
const/4 v0, 0x0
invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v0
float-to-int v0, v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:goto_2e
sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
div-int/lit8 v0, v0, 0x5a
packed-switch v0, :pswitch_data_5a
:goto_37
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/GradientView;->a()V
return-void
:cond_3e
new-array v1, v4, [I
fill-array-data v1, :array_66
iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->b:[I
goto :goto_2e
:pswitch_46
sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
goto :goto_37
:pswitch_4b
sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
goto :goto_37
:pswitch_50
sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
goto :goto_37
:pswitch_55
sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
goto :goto_37
:pswitch_data_5a
.packed-switch 0x0
:pswitch_46
:pswitch_4b
:pswitch_50
:pswitch_55
.end packed-switch
:array_66
.array-data 0x4
0x0t 0x0t 0x0t 0xfft
0xfft 0xfft 0xfft 0xfft
.end array-data
.end method
.method private a()V
.registers 3
const/4 v1, 0x0
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z
if-eqz v0, :cond_9
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/GradientView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_8
return-void
:cond_9
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/GradientView;->setBackground(Landroid/graphics/drawable/Drawable;)V
goto :goto_8
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
if-nez v0, :cond_f
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->b:[I
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 10
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
if-nez v0, :cond_10
new-instance v0, Landroid/graphics/drawable/GradientDrawable;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->b:[I
invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
:cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/GradientView;->a:Landroid/graphics/drawable/GradientDrawable;
sub-int v1, p4, p2
sub-int v2, p5, p3
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V
invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V
return-void
.end method