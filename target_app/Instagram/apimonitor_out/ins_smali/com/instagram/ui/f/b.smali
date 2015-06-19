.class public final Lcom/instagram/ui/f/b;
.super Ljava/lang/Object;
.source "PopupWindowController.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.field private final a:Landroid/view/View;
.field private final b:Lcom/instagram/ui/f/f;
.field private final c:Landroid/widget/PopupWindow;
.field private d:I
.field private e:I
.field private f:Lcom/instagram/ui/f/e;
.method public constructor <init>(Landroid/view/View;Lcom/instagram/ui/f/f;Landroid/widget/PopupWindow;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
iput-object p2, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
iput-object p3, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xa
if-gt v0, v1, :cond_29
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
new-instance v1, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
new-instance v1, Lcom/instagram/ui/f/c;
invoke-direct {v1, p0}, Lcom/instagram/ui/f/c;-><init>(Lcom/instagram/ui/f/b;)V
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
:cond_29
return-void
.end method
.method static synthetic a(Lcom/instagram/ui/f/b;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
return-object v0
.end method
.method private static a(IILandroid/util/DisplayMetrics;)Z
.registers 5
const/4 v0, 0x0
if-ltz p0, :cond_7
iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I
if-le p0, v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
if-ltz p1, :cond_7
iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I
if-gt p1, v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method static synthetic b(Lcom/instagram/ui/f/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V
return-void
.end method
.method private d()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_17
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;
invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
:goto_d
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
return-void
:cond_17
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
goto :goto_d
.end method
.method private e()V
.registers 11
const/4 v9, 0x1
const/4 v2, 0x0
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
invoke-interface {v1}, Lcom/instagram/ui/f/f;->a()[I
move-result-object v4
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->isShown()Z
move-result v1
if-nez v1, :cond_30
:cond_2a
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:goto_2f
return-void
:cond_30
aget v1, v4, v2
iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I
if-gt v1, v5, :cond_3c
aget v1, v4, v9
iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I
if-le v1, v5, :cond_44
:cond_3c
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "can\'t fit popup"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_44
aget v5, v0, v2
aget v0, v0, v9
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getWidth()I
move-result v1
add-int v6, v5, v1
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
add-int/2addr v1, v0
invoke-static {v5, v0, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z
move-result v7
if-nez v7, :cond_75
invoke-static {v5, v1, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z
move-result v7
if-nez v7, :cond_75
invoke-static {v6, v0, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z
move-result v7
if-nez v7, :cond_75
invoke-static {v6, v1, v3}, Lcom/instagram/ui/f/b;->a(IILandroid/util/DisplayMetrics;)Z
move-result v7
if-nez v7, :cond_75
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
goto :goto_2f
:cond_75
iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I
sub-int/2addr v7, v1
aget v8, v4, v9
if-le v7, v8, :cond_da
sget v0, Lcom/instagram/ui/f/g;->b:I
:goto_7e
iget-object v7, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
add-int/lit8 v7, v1, 0x0
add-int v1, v5, v6
div-int/lit8 v1, v1, 0x2
aget v5, v4, v2
div-int/lit8 v5, v5, 0x2
sub-int v5, v1, v5
if-gez v5, :cond_e1
iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
invoke-interface {v1}, Lcom/instagram/ui/f/f;->b()I
move-result v1
neg-int v1, v1
invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I
move-result v1
:goto_99
sub-int v3, v5, v1
iget v5, p0, Lcom/instagram/ui/f/b;->d:I
iget v5, p0, Lcom/instagram/ui/f/b;->e:I
iput v0, p0, Lcom/instagram/ui/f/b;->d:I
iput v1, p0, Lcom/instagram/ui/f/b;->e:I
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
iget v5, p0, Lcom/instagram/ui/f/b;->d:I
iget v6, p0, Lcom/instagram/ui/f/b;->e:I
invoke-interface {v1, v5, v6}, Lcom/instagram/ui/f/f;->a(II)Landroid/view/View;
move-result-object v1
if-eq v1, v0, :cond_c7
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_c2
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:cond_c2
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
:cond_c7
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_f9
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
aget v1, v4, v2
aget v2, v4, v9
invoke-virtual {v0, v3, v7, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V
goto/16 :goto_2f
:cond_da
aget v1, v4, v9
sub-int v1, v0, v1
sget v0, Lcom/instagram/ui/f/g;->a:I
goto :goto_7e
:cond_e1
aget v1, v4, v2
add-int/2addr v1, v5
iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I
if-le v1, v6, :cond_112
aget v1, v4, v2
add-int/2addr v1, v5
iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I
sub-int/2addr v1, v3
iget-object v3, p0, Lcom/instagram/ui/f/b;->b:Lcom/instagram/ui/f/f;
invoke-interface {v3}, Lcom/instagram/ui/f/f;->b()I
move-result v3
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
goto :goto_99
:cond_f9
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
aget v1, v4, v2
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
aget v1, v4, v9
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
const/16 v2, 0x33
invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
goto/16 :goto_2f
:cond_112
move v1, v2
goto :goto_99
.end method
.method public final a()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_22
new-instance v0, Lcom/instagram/ui/f/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/ui/f/e;-><init>(Lcom/instagram/ui/f/b;B)V
iput-object v0, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/ui/f/b;->f:Lcom/instagram/ui/f/e;
invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
:goto_15
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V
return-void
:cond_22
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
goto :goto_15
.end method
.method public final a(Landroid/os/Handler;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/ui/f/b;->d()V
new-instance v0, Lcom/instagram/ui/f/d;
invoke-direct {v0, p0}, Lcom/instagram/ui/f/d;-><init>(Lcom/instagram/ui/f/b;)V
invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final b()V
.registers 2
invoke-direct {p0}, Lcom/instagram/ui/f/b;->d()V
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/ui/f/b;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/ui/f/b;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearFocus()V
invoke-virtual {p0}, Lcom/instagram/ui/f/b;->b()V
:goto_10
return-void
:cond_11
invoke-virtual {p0}, Lcom/instagram/ui/f/b;->a()V
goto :goto_10
.end method
.method public final onGlobalLayout()V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V
return-void
.end method
.method public final onScrollChanged()V
.registers 1
invoke-direct {p0}, Lcom/instagram/ui/f/b;->e()V
return-void
.end method