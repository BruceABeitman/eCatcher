.class public Landroid/support/v7/internal/view/menu/y;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/view/menu/aa;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field static final b:I
.field private a:Landroid/content/Context;
.field  c:Z
.field private d:Landroid/view/LayoutInflater;
.field private e:Landroid/support/v7/internal/widget/ListPopupWindow;
.field private f:Landroid/support/v7/internal/view/menu/n;
.field private g:I
.field private h:Landroid/view/View;
.field private i:Z
.field private j:Landroid/view/ViewTreeObserver;
.field private k:Landroid/support/v7/internal/view/menu/z;
.field private l:Landroid/support/v7/internal/view/menu/ab;
.field private m:Landroid/view/ViewGroup;
.method static constructor <clinit>()V
.registers 1
sget v0, Landroid/support/v7/a/h;->o:I
sput v0, Landroid/support/v7/internal/view/menu/y;->b:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/view/LayoutInflater;
iput-object p2, p0, Landroid/support/v7/internal/view/menu/y;->f:Landroid/support/v7/internal/view/menu/n;
iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/y;->i:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v1, v1, 0x2
sget v2, Landroid/support/v7/a/e;->c:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Landroid/support/v7/internal/view/menu/y;->g:I
iput-object p3, p0, Landroid/support/v7/internal/view/menu/y;->h:Landroid/view/View;
invoke-virtual {p2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/aa;)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/view/menu/y;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/y;->i:Z
return v0
.end method
.method static synthetic b(Landroid/support/v7/internal/view/menu/y;)Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->d:Landroid/view/LayoutInflater;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/view/menu/y;)Landroid/support/v7/internal/view/menu/n;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->f:Landroid/support/v7/internal/view/menu/n;
return-object v0
.end method
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
.registers 3
return-void
.end method
.method public final a(Landroid/support/v7/internal/view/menu/ab;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
return-void
.end method
.method public final a(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->f:Landroid/support/v7/internal/view/menu/n;
if-eq p1, v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->b()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
if-eqz v0, :cond_4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/n;Z)V
goto :goto_4
.end method
.method public final a()Z
.registers 14
const/4 v1, 0x1
const/4 v3, 0x0
const/4 v2, 0x0
new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/content/Context;
sget v5, Landroid/support/v7/a/c;->k:I
invoke-direct {v0, v4, v3, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Landroid/support/v7/internal/view/menu/z;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->f:Landroid/support/v7/internal/view/menu/n;
invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/n;)V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b()V
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->h:Landroid/view/View;
if-eqz v4, :cond_89
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
if-nez v0, :cond_87
move v0, v1
:goto_36
invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v5
iput-object v5, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_43
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_43
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/view/View;)V
iget-object v7, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v8, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v10
invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I
move-result v11
move v5, v2
move-object v4, v3
move v6, v2
:goto_5b
if-ge v5, v11, :cond_8b
invoke-interface {v8, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
if-eq v0, v2, :cond_a8
move-object v2, v3
:goto_64
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->m:Landroid/view/ViewGroup;
if-nez v4, :cond_71
new-instance v4, Landroid/widget/FrameLayout;
iget-object v12, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/content/Context;
invoke-direct {v4, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Landroid/support/v7/internal/view/menu/y;->m:Landroid/view/ViewGroup;
:cond_71
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->m:Landroid/view/ViewGroup;
invoke-interface {v8, v5, v2, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v9, v10}, Landroid/view/View;->measure(II)V
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I
move-result v6
add-int/lit8 v2, v5, 0x1
move v5, v2
move v2, v0
goto :goto_5b
:cond_87
move v0, v2
goto :goto_36
:cond_89
move v1, v2
:goto_8a
return v1
:cond_8b
iget v0, p0, Landroid/support/v7/internal/view/menu/y;->g:I
invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {v7, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->c(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->k()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
goto :goto_8a
:cond_a8
move v0, v2
move-object v2, v4
goto :goto_64
.end method
.method public final a(Landroid/support/v7/internal/view/menu/ag;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ag;->hasVisibleItems()Z
move-result v0
if-eqz v0, :cond_42
new-instance v3, Landroid/support/v7/internal/view/menu/y;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Landroid/content/Context;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/y;->h:Landroid/view/View;
invoke-direct {v3, v0, p1, v4, v2}, Landroid/support/v7/internal/view/menu/y;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
iput-object v0, v3, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ag;->size()I
move-result v4
move v0, v2
:goto_1a
if-ge v0, v4, :cond_44
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ag;->getItem(I)Landroid/view/MenuItem;
move-result-object v5
invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z
move-result v6
if-eqz v6, :cond_3f
invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_3f
move v0, v1
:goto_2d
iput-boolean v0, v3, Landroid/support/v7/internal/view/menu/y;->c:Z
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/y;->a()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
if-eqz v0, :cond_3e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->l:Landroid/support/v7/internal/view/menu/ab;
invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ab;->b(Landroid/support/v7/internal/view/menu/n;)Z
:cond_3e
:goto_3e
return v1
:cond_3f
add-int/lit8 v0, v0, 0x1
goto :goto_1a
:cond_42
move v1, v2
goto :goto_3e
:cond_44
move v0, v2
goto :goto_2d
.end method
.method public final b()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->c()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->f()V
:cond_b
return-void
.end method
.method public final b(Landroid/support/v7/internal/view/menu/r;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/z;->notifyDataSetChanged()V
:cond_9
return-void
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->i()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final c(Landroid/support/v7/internal/view/menu/r;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final i()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onDismiss()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->f:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->close()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->h:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
:cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iput-object v1, p0, Landroid/support/v7/internal/view/menu/y;->j:Landroid/view/ViewTreeObserver;
:cond_23
return-void
.end method
.method public onGlobalLayout()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->c()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->h:Landroid/view/View;
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/view/View;->isShown()Z
move-result v0
if-nez v0, :cond_14
:cond_10
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->b()V
:cond_13
:goto_13
return-void
:cond_14
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->c()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->e:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V
goto :goto_13
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/menu/y; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->k:Landroid/support/v7/internal/view/menu/z;
invoke-static {v0}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/z;)Landroid/support/v7/internal/view/menu/n;
move-result-object v1
invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/z;->a(I)Landroid/support/v7/internal/view/menu/r;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z
const-string v1, " - Landroid/support/v7/internal/view/menu/y; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/menu/y; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_f
const/16 v1, 0x52
if-ne p2, v1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/y;->b()V
:goto_e
move v2, v0
const-string v1, " - Landroid/support/v7/internal/view/menu/y; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method