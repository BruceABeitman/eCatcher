.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"
.field public static final LEFT:I = 0x0
.field public static final LEFT_RIGHT:I = 0x2
.field public static final RIGHT:I = 0x1
.field public static final SLIDING_CONTENT:I = 0x1
.field public static final SLIDING_WINDOW:I = 0x0
.field private static final TAG:Ljava/lang/String; = null
.field public static final TOUCHMODE_FULLSCREEN:I = 0x1
.field public static final TOUCHMODE_MARGIN:I = 0x0
.field public static final TOUCHMODE_NONE:I = 0x2
.field private mActionbarOverlay:Z
.field private mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
.field private mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
.field private mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
.field private mSlidingOverLay:Landroid/view/View;
.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.field private mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 26
invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/16 v20, 0x0
move/from16 v0, v20
move-object/from16 v1, p0
iput-boolean v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z
new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;
const/16 v20, -0x1
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-direct {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v20, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
move-object/from16 v20, v0
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;
const/16 v20, -0x1
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
new-instance v20, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v20, v0
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
move-object/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v21, v0
invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
move-object/from16 v20, v0
new-instance v21, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;
invoke-direct/range {v21 .. v22}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
invoke-virtual/range {v20 .. v21}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnPageChangeListener(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$OnPageChangeListener;)V
sget-object v20, Lcom/jeremyfeinstein/slidingmenu/lib/R$styleable;->SlidingMenu:[I
move-object/from16 v0, p1
move-object/from16 v1, p2
move-object/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v14
const/16 v20, 0x0
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v7
move-object/from16 v0, p0
invoke-virtual {v0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V
const/16 v20, 0x1
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v17
const/16 v20, -0x1
move/from16 v0, v17
move/from16 v1, v20
if-eq v0, v1, :cond_136
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(I)V
:goto_c1
const/16 v20, 0x2
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v18
const/16 v20, -0x1
move/from16 v0, v18
move/from16 v1, v20
if-eq v0, v1, :cond_148
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(I)V
:goto_dc
const/16 v20, 0x6
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v15
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
const/16 v20, 0x7
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v16
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V
const/16 v20, 0x3
const/high16 v21, -0x4080
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v20
move/from16 v0, v20
float-to-int v8, v0
const/16 v20, 0x4
const/high16 v21, -0x4080
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v20
move/from16 v0, v20
float-to-int v0, v0
move/from16 v19, v0
const/16 v20, -0x1
move/from16 v0, v20
if-eq v8, v0, :cond_159
const/16 v20, -0x1
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_159
new-instance v20, Ljava/lang/IllegalStateException;
const-string v21, "Cannot set both behindOffset and behindWidth for a SlidingMenu"
invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v20
:cond_136
new-instance v20, Landroid/widget/FrameLayout;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V
goto/16 :goto_c1
:cond_148
new-instance v20, Landroid/widget/FrameLayout;
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V
goto :goto_dc
:cond_159
const/16 v20, -0x1
move/from16 v0, v20
if-eq v8, v0, :cond_1f0
move-object/from16 v0, p0
invoke-virtual {v0, v8}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V
:goto_164
const/16 v20, 0x5
const v21, 0x3ea8f5c3
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v9
move-object/from16 v0, p0
invoke-virtual {v0, v9}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V
const/16 v20, 0x8
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v12
const/16 v20, -0x1
move/from16 v0, v20
if-eq v12, v0, :cond_18d
move-object/from16 v0, p0
invoke-virtual {v0, v12}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V
:cond_18d
const/16 v20, 0x9
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v20
move/from16 v0, v20
float-to-int v13, v0
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V
const/16 v20, 0xa
const/16 v21, 0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v6
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeEnabled(Z)V
const/16 v20, 0xb
const v21, 0x3ea8f5c3
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V
const/16 v20, 0xc
const/16 v21, 0x0
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v10
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorEnabled(Z)V
const/16 v20, 0xd
const/16 v21, -0x1
move/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v11
const/16 v20, -0x1
move/from16 v0, v20
if-eq v11, v0, :cond_1ec
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSelectorDrawable(I)V
:cond_1ec
invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_1f0
const/16 v20, -0x1
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_201
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V
goto/16 :goto_164
:cond_201
const/16 v20, 0x0
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V
goto/16 :goto_164
.end method
.method static synthetic access$000(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$100(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
return-object v0
.end method
.method static synthetic access$200(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
return-object v0
.end method
.method static synthetic access$300(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
return-object v0
.end method
.method static synthetic access$500()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;
return-object v0
.end method
.method public addIgnoredView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V
return-void
.end method
.method public attachToActivity(Landroid/app/Activity;I)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V
return-void
.end method
.method public attachToActivity(Landroid/app/Activity;IZ)V
.registers 14
const/4 v7, 0x1
const/4 v9, 0x0
if-eqz p2, :cond_e
if-eq p2, v7, :cond_e
new-instance v6, Ljava/lang/IllegalArgumentException;
const-string v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_e
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;
move-result-object v6
if-eqz v6, :cond_1c
new-instance v6, Ljava/lang/IllegalStateException;
const-string v7, "This SlidingMenu appears to already be attached"
invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v6
:cond_1c
invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v6
new-array v7, v7, [I
const v8, 0x1010054
aput v8, v7, v9
invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
packed-switch p2, :pswitch_data_78
:goto_35
:cond_35
return-void
:pswitch_36
iput-boolean v9, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z
invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v6
invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/view/ViewGroup;
invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V
invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0, v5}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V
goto :goto_35
:pswitch_55
iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z
const v6, 0x1020002
invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup;
invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V
invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v6
if-nez v6, :cond_35
invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V
goto :goto_35
nop
:pswitch_data_78
.packed-switch 0x0
:pswitch_36
:pswitch_55
.end packed-switch
.end method
.method public clearIgnoredViews()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->clearIgnoredViews()V
return-void
.end method
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
.registers 8
iget v1, p1, Landroid/graphics/Rect;->left:I
iget v2, p1, Landroid/graphics/Rect;->right:I
iget v3, p1, Landroid/graphics/Rect;->top:I
iget v0, p1, Landroid/graphics/Rect;->bottom:I
iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mActionbarOverlay:Z
if-nez v4, :cond_16
sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->TAG:Ljava/lang/String;
const-string v5, "setting padding!"
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0, v1, v3, v2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V
:cond_16
const/4 v4, 0x1
return v4
.end method
.method public getBehindOffset()I
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I
return v0
.end method
.method public getBehindScrollScale()F
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getScrollScale()F
move-result v0
return v0
.end method
.method public getContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getContent()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getMenu()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getContent()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getMode()I
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMode()I
move-result v0
return v0
.end method
.method public getSecondaryMenu()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSecondaryContent()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getTouchModeAbove()I
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getTouchMode()I
move-result v0
return v0
.end method
.method public getTouchmodeMarginThreshold()I
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getMarginThreshold()I
move-result v0
return v0
.end method
.method public getViewAbove()Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
return-object v0
.end method
.method public getViewBehind()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
return-object v0
.end method
.method public isMenuShowing()Z
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_13
:cond_11
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public isSecondaryMenuShowing()Z
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isSlidingEnabled()Z
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->isSlidingEnabled()Z
move-result v0
return v0
.end method
.method public manageLayers(F)V
.registers 6
const/4 v1, 0x0
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-ge v2, v3, :cond_8
:goto_7
:cond_7
return-void
:cond_8
const/4 v2, 0x0
cmpl-float v2, p1, v2
if-lez v2, :cond_2e
const/high16 v2, 0x3f80
cmpg-float v2, p1, v2
if-gez v2, :cond_2e
const/4 v0, 0x1
:goto_14
if-eqz v0, :cond_17
const/4 v1, 0x2
:cond_17
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContent()Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLayerType()I
move-result v2
if-eq v1, v2, :cond_7
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getHandler()Landroid/os/Handler;
move-result-object v2
new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$2;
invoke-direct {v3, p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$2;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;I)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_7
:cond_2e
move v0, v1
goto :goto_14
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 5
const-string v1, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, p1
check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v1
invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getItem()I
move-result v2
invoke-virtual {v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getCurrentItem()I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V
move-object v2, v0
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method
.method public removeIgnoredView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V
return-void
.end method
.method public setAboveOffset(I)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setAboveOffset(I)V
return-void
.end method
.method public setAboveOffsetRes(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v0, v1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setAboveOffset(I)V
return-void
.end method
.method public setBehindCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
return-void
.end method
.method public setBehindOffset(I)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setWidthOffset(I)V
return-void
.end method
.method public setBehindOffsetRes(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v0, v1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V
return-void
.end method
.method public setBehindScrollScale(F)V
.registers 4
const/4 v0, 0x0
cmpg-float v0, p1, v0
if-gez v0, :cond_13
const/high16 v0, 0x3f80
cmpl-float v0, p1, v0
if-lez v0, :cond_13
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "ScrollScale must be between 0 and 1"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setScrollScale(F)V
return-void
.end method
.method public setBehindWidth(I)V
.registers 11
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v7
const-string v8, "window"
invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/view/WindowManager;
invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
:try_start_10
const-class v0, Landroid/view/Display;
const/4 v7, 0x1
new-array v5, v7, [Ljava/lang/Class;
const/4 v7, 0x0
const-class v8, Landroid/graphics/Point;
aput-object v8, v5, v7
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4}, Landroid/graphics/Point;-><init>()V
const-string v7, "getSize"
invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v4, v7, v8
invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
iget v6, v4, Landroid/graphics/Point;->x:I
:goto_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_36
sub-int v7, v6, p1
invoke-virtual {p0, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V
return-void
:catch_36
move-exception v2
invoke-virtual {v1}, Landroid/view/Display;->getWidth()I
move-result v6
goto :goto_30
.end method
.method public setBehindWidthRes(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v0, v1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V
return-void
.end method
.method public setContent(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V
return-void
.end method
.method public setContent(Landroid/view/View;)V
.registers 7
const/4 v4, -0x1
new-instance v1, Landroid/widget/RelativeLayout;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
new-instance v2, Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/high16 v3, -0x100
invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v3, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setContent(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V
return-void
.end method
.method public setFadeDegree(F)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeDegree(F)V
return-void
.end method
.method public setFadeEnabled(Z)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setFadeEnabled(Z)V
return-void
.end method
.method public setMenu(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V
return-void
.end method
.method public setMenu(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setContent(Landroid/view/View;)V
return-void
.end method
.method public setMode(I)V
.registers 4
if-eqz p1, :cond_10
const/4 v0, 0x1
if-eq p1, v0, :cond_10
const/4 v0, 0x2
if-eq p1, v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMode(I)V
return-void
.end method
.method public setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mCloseListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
return-void
.end method
.method public setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
return-void
.end method
.method public setOnOpenListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mOpenListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
return-void
.end method
.method public setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
return-void
.end method
.method public setSecondaryMenu(I)V
.registers 4
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V
return-void
.end method
.method public setSecondaryMenu(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V
return-void
.end method
.method public setSecondaryOnOpenListner(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSecondaryOpenListner:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
return-void
.end method
.method public setSecondaryShadowDrawable(I)V
.registers 3
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setSelectedView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectedView(Landroid/view/View;)V
return-void
.end method
.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public setSelectorDrawable(I)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public setSelectorEnabled(Z)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setSelectorEnabled(Z)V
return-void
.end method
.method public setShadowDrawable(I)V
.registers 3
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setShadowWidth(I)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setShadowWidth(I)V
return-void
.end method
.method public setShadowWidthRes(I)V
.registers 3
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F
move-result v0
float-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V
return-void
.end method
.method public setSlidingEnabled(Z)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setSlidingEnabled(Z)V
return-void
.end method
.method public setStatic(Z)V
.registers 5
const/4 v2, 0x1
if-eqz p1, :cond_13
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(I)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCustomViewBehind(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V
invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V
goto :goto_12
.end method
.method public setTouchModeAbove(I)V
.registers 4
const/4 v0, 0x1
if-eq p1, v0, :cond_10
if-eqz p1, :cond_10
const/4 v0, 0x2
if-eq p1, v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setTouchMode(I)V
return-void
.end method
.method public setTouchModeBehind(I)V
.registers 4
const/4 v0, 0x1
if-eq p1, v0, :cond_10
if-eqz p1, :cond_10
const/4 v0, 0x2
if-eq p1, v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setTouchMode(I)V
return-void
.end method
.method public setTouchmodeMarginThreshold(I)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMarginThreshold(I)V
return-void
.end method
.method public showContent()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V
return-void
.end method
.method public showContent(Z)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
const/4 v1, 0x1
invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
if-eqz v0, :cond_16
if-nez p1, :cond_16
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mSlidingOverLay:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_16
return-void
.end method
.method public showMenu()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V
return-void
.end method
.method public showMenu(Z)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
const/4 v1, 0x0
invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V
return-void
.end method
.method public showSecondaryMenu()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu(Z)V
return-void
.end method
.method public showSecondaryMenu(Z)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
const/4 v1, 0x2
invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->setCurrentItem(IZ)V
return-void
.end method
.method public toggle()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle(Z)V
return-void
.end method
.method public toggle(Z)V
.registers 3
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent(Z)V
:goto_9
return-void
:cond_a
invoke-virtual {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu(Z)V
goto :goto_9
.end method