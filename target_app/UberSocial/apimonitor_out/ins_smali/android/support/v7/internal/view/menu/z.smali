.class public Landroid/support/v7/internal/view/menu/z;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/view/menu/ab;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field private static final a:Ljava/lang/String; = "MenuPopupHelper"
.field static final b:I
.field  c:Z
.field private d:Landroid/content/Context;
.field private e:Landroid/view/LayoutInflater;
.field private f:Landroid/support/v7/internal/widget/ListPopupWindow;
.field private g:Landroid/support/v7/internal/view/menu/n;
.field private h:I
.field private i:Landroid/view/View;
.field private j:Z
.field private k:Landroid/view/ViewTreeObserver;
.field private l:Landroid/support/v7/internal/view/menu/aa;
.field private m:Landroid/support/v7/internal/view/menu/ac;
.field private n:Landroid/view/ViewGroup;
.method static constructor <clinit>()V
.registers 1
sget v0, Landroid/support/v7/a/k;->abc_popup_menu_item_layout:I
sput v0, Landroid/support/v7/internal/view/menu/z;->b:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/internal/view/menu/z;->d:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/z;->e:Landroid/view/LayoutInflater;
iput-object p2, p0, Landroid/support/v7/internal/view/menu/z;->g:Landroid/support/v7/internal/view/menu/n;
iput-boolean p4, p0, Landroid/support/v7/internal/view/menu/z;->j:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v1, v1, 0x2
sget v2, Landroid/support/v7/a/g;->abc_config_prefDialogWidth:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
iput v0, p0, Landroid/support/v7/internal/view/menu/z;->h:I
iput-object p3, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
invoke-virtual {p2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)V
return-void
.end method
.method private a(Landroid/widget/ListAdapter;)I
.registers 12
const/4 v2, 0x0
const/4 v0, 0x0
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I
move-result v8
move v4, v0
move v1, v0
move-object v3, v2
move v5, v0
:goto_12
if-ge v4, v8, :cond_3e
invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
if-eq v0, v1, :cond_3f
move-object v1, v2
:goto_1b
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->n:Landroid/view/ViewGroup;
if-nez v3, :cond_28
new-instance v3, Landroid/widget/FrameLayout;
iget-object v9, p0, Landroid/support/v7/internal/view/menu/z;->d:Landroid/content/Context;
invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Landroid/support/v7/internal/view/menu/z;->n:Landroid/view/ViewGroup;
:cond_28
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->n:Landroid/view/ViewGroup;
invoke-interface {p1, v4, v1, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I
move-result v5
add-int/lit8 v1, v4, 0x1
move v4, v1
move v1, v0
goto :goto_12
:cond_3e
return v5
:cond_3f
move v0, v1
move-object v1, v3
goto :goto_1b
.end method
.method static synthetic a(Landroid/support/v7/internal/view/menu/z;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/z;->j:Z
return v0
.end method
.method static synthetic b(Landroid/support/v7/internal/view/menu/z;)Landroid/view/LayoutInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->e:Landroid/view/LayoutInflater;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/view/menu/z;)Landroid/support/v7/internal/view/menu/n;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->g:Landroid/support/v7/internal/view/menu/n;
return-object v0
.end method
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "MenuPopupHelpers manage their own views"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->b()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "MenuPopupHelper cannot be used without an anchor"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
.registers 3
return-void
.end method
.method public a(Landroid/os/Parcelable;)V
.registers 2
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/ac;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->g:Landroid/support/v7/internal/view/menu/n;
if-eq p1, v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->c()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
if-eqz v0, :cond_4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/n;Z)V
goto :goto_4
.end method
.method public a(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/z;->c:Z
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/ah;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->hasVisibleItems()Z
move-result v0
if-eqz v0, :cond_44
new-instance v3, Landroid/support/v7/internal/view/menu/z;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->d:Landroid/content/Context;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
invoke-direct {v3, v0, p1, v4, v2}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/ac;)V
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->size()I
move-result v4
move v0, v2
:goto_1b
if-ge v0, v4, :cond_46
invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ah;->getItem(I)Landroid/view/MenuItem;
move-result-object v5
invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z
move-result v6
if-eqz v6, :cond_41
invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_41
move v0, v1
:goto_2e
invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/z;->a(Z)V
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/z;->b()Z
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
if-eqz v0, :cond_40
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->m:Landroid/support/v7/internal/view/menu/ac;
invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ac;->b(Landroid/support/v7/internal/view/menu/n;)Z
:goto_40
:cond_40
return v1
:cond_41
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_44
move v1, v2
goto :goto_40
:cond_46
move v0, v2
goto :goto_2e
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public b()Z
.registers 7
const/4 v0, 0x0
const/4 v1, 0x1
new-instance v2, Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->d:Landroid/content/Context;
const/4 v4, 0x0
sget v5, Landroid/support/v7/a/d;->popupMenuStyle:I
invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v2, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v2, p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v2, Landroid/support/v7/internal/view/menu/aa;
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->g:Landroid/support/v7/internal/view/menu/n;
invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/view/menu/aa;-><init>(Landroid/support/v7/internal/view/menu/z;Landroid/support/v7/internal/view/menu/n;)V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
invoke-virtual {v2, v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Z)V
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
if-eqz v2, :cond_6e
iget-object v3, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
if-nez v3, :cond_36
move v0, v1
:cond_36
invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_43
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_43
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
invoke-direct {p0, v2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/widget/ListAdapter;)I
move-result v2
iget v3, p0, Landroid/support/v7/internal/view/menu/z;->h:I
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow;->g(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
const/4 v2, 0x2
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow;->i(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->w()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
:goto_6d
return v1
:cond_6e
move v1, v0
goto :goto_6d
.end method
.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->d()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->n()V
:cond_b
return-void
.end method
.method public c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/aa;->notifyDataSetChanged()V
:cond_9
return-void
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public g()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public h()Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public i()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onDismiss()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->g:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->close()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
:cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
iput-object v1, p0, Landroid/support/v7/internal/view/menu/z;->k:Landroid/view/ViewTreeObserver;
:cond_23
return-void
.end method
.method public onGlobalLayout()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->d()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->i:Landroid/view/View;
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/view/View;->isShown()Z
move-result v0
if-nez v0, :cond_14
:cond_10
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->c()V
:cond_13
:goto_13
return-void
:cond_14
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->d()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->f:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V
goto :goto_13
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/menu/z; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->l:Landroid/support/v7/internal/view/menu/aa;
invoke-static {v0}, Landroid/support/v7/internal/view/menu/aa;->a(Landroid/support/v7/internal/view/menu/aa;)Landroid/support/v7/internal/view/menu/n;
move-result-object v1
invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/aa;->a(I)Landroid/support/v7/internal/view/menu/r;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z
const-string v1, " - Landroid/support/v7/internal/view/menu/z; onItemClick"
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
const-string v0, " + Landroid/support/v7/internal/view/menu/z; onKey "
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
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/z;->c()V
:goto_e
move v2, v0
const-string v1, " - Landroid/support/v7/internal/view/menu/z; onKey"
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