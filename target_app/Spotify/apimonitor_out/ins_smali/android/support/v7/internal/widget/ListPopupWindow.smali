.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"
.field private A:Z
.field  a:I
.field private b:Landroid/content/Context;
.field private c:Landroid/widget/PopupWindow;
.field private d:Landroid/widget/ListAdapter;
.field private e:Landroid/support/v7/internal/widget/s;
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:Z
.field private k:Z
.field private l:Z
.field private m:Landroid/view/View;
.field private n:I
.field private o:Landroid/database/DataSetObserver;
.field private p:Landroid/view/View;
.field private q:Landroid/graphics/drawable/Drawable;
.field private r:Landroid/widget/AdapterView$OnItemClickListener;
.field private s:Landroid/widget/AdapterView$OnItemSelectedListener;
.field private final t:Landroid/support/v7/internal/widget/x;
.field private final u:Landroid/support/v7/internal/widget/w;
.field private final v:Landroid/support/v7/internal/widget/v;
.field private final w:Landroid/support/v7/internal/widget/t;
.field private x:Ljava/lang/Runnable;
.field private y:Landroid/os/Handler;
.field private z:Landroid/graphics/Rect;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
sget v1, Landroid/support/v7/a/c;->j:I
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/a/c;->j:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v0, -0x2
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z
const v0, 0x7fffffff
iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:I
iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I
new-instance v0, Landroid/support/v7/internal/widget/x;
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/x;
new-instance v0, Landroid/support/v7/internal/widget/w;
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/w;
new-instance v0, Landroid/support/v7/internal/widget/v;
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/v;
new-instance v0, Landroid/support/v7/internal/widget/t;
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/t;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;
new-instance v0, Landroid/widget/PopupWindow;
invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/s;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
return-object v0
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
return-object v0
.end method
.method static synthetic c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/x;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/x;
return-object v0
.end method
.method static synthetic d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;
return-object v0
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
return-void
.end method
.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method public a(Landroid/widget/ListAdapter;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;
if-nez v0, :cond_23
new-instance v0, Landroid/support/v7/internal/widget/u;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/u;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;
:cond_c
:goto_c
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s;->setAdapter(Landroid/widget/ListAdapter;)V
:cond_22
return-void
:cond_23
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
goto :goto_c
.end method
.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V
return-void
.end method
.method public final b(I)V
.registers 3
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Z
return-void
.end method
.method public final c()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public final c(I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v1
add-int/2addr v0, p1
iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
:goto_19
return-void
:cond_1a
iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
goto :goto_19
.end method
.method public final d()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
return-object v0
.end method
.method public final d(I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_1d
if-eqz v0, :cond_1d
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;Z)Z
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/s;->setSelection(I)V
invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->getChoiceMode()I
move-result v1
if-eqz v1, :cond_1d
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/s;->setItemChecked(IZ)V
:cond_1d
return-void
.end method
.method public e()V
.registers 14
const/high16 v12, -0x8000
const/4 v11, -0x2
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v6, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
if-nez v0, :cond_184
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;
new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow$1;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:Ljava/lang/Runnable;
new-instance v3, Landroid/support/v7/internal/widget/s;
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z
if-nez v0, :cond_171
move v0, v1
:goto_1a
invoke-direct {v3, v4, v0}, Landroid/support/v7/internal/widget/s;-><init>(Landroid/content/Context;Z)V
iput-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setSelector(Landroid/graphics/drawable/Drawable;)V
:cond_2a
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s;->setFocusable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/s;->setFocusableInTouchMode(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
new-instance v3, Landroid/support/v7/internal/widget/ListPopupWindow$2;
invoke-direct {v3, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/v;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v0, :cond_5e
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/s;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
:cond_5e
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;
if-eqz v5, :cond_2b3
new-instance v3, Landroid/widget/LinearLayout;
invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v7, 0x3f80
invoke-direct {v4, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I
packed-switch v7, :pswitch_data_2b8
const-string v0, "ListPopupWindow"
new-instance v4, Ljava/lang/StringBuilder;
const-string v7, "Invalid hint position "
invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_8e
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v4, v5
iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int/2addr v0, v4
:goto_a7
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
:goto_ac
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v3
if-eqz v3, :cond_19f
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
add-int/2addr v3, v4
iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Z
if-nez v4, :cond_cd
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
neg-int v4, v4
iput v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I
:cond_cd
:goto_cd
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v4
const/4 v5, 0x2
if-ne v4, v5, :cond_1a7
move v4, v1
:goto_d7
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I
new-instance v9, Landroid/graphics/Rect;
invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v7, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
const/4 v5, 0x2
new-array v10, v5, [I
invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V
iget v5, v9, Landroid/graphics/Rect;->bottom:I
if-eqz v4, :cond_2ad
invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I
:goto_fb
aget v5, v10, v1
invoke-virtual {v7}, Landroid/view/View;->getHeight()I
move-result v7
add-int/2addr v5, v7
sub-int/2addr v4, v5
sub-int/2addr v4, v8
aget v5, v10, v1
iget v7, v9, Landroid/graphics/Rect;->top:I
sub-int/2addr v5, v7
add-int/2addr v5, v8
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v5
if-eqz v5, :cond_12b
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v5
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
add-int/2addr v5, v7
sub-int/2addr v4, v5
:cond_12b
iget-boolean v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z
if-nez v5, :cond_133
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
if-ne v5, v6, :cond_1aa
:cond_133
add-int v0, v4, v3
:goto_135
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->j()Z
move-result v3
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v4
if-eqz v4, :cond_22e
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v4, v6, :cond_1fc
move v4, v6
:goto_146
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
if-ne v5, v6, :cond_220
if-eqz v3, :cond_20c
move v5, v0
:goto_14d
if-eqz v3, :cond_212
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v3, v6, :cond_20f
:goto_155
invoke-virtual {v0, v6, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
:goto_158
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z
if-nez v3, :cond_22b
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z
if-nez v3, :cond_22b
:goto_162
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I
invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V
:goto_170
:cond_170
return-void
:cond_171
move v0, v2
goto/16 :goto_1a
:pswitch_174
invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
goto/16 :goto_8e
:pswitch_17c
invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto/16 :goto_8e
:cond_184
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;
if-eqz v3, :cond_2b0
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v3, v4
iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int/2addr v0, v3
goto/16 :goto_ac
:cond_19f
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V
move v3, v2
goto/16 :goto_cd
:cond_1a7
move v4, v2
goto/16 :goto_d7
:cond_1aa
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
packed-switch v5, :pswitch_data_2c0
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
const/high16 v7, 0x4000
invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
:goto_1b7
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
sub-int/2addr v4, v0
invoke-virtual {v7, v5, v4}, Landroid/support/v7/internal/widget/s;->a(II)I
move-result v4
if-lez v4, :cond_1c1
add-int/2addr v0, v3
:cond_1c1
add-int/2addr v0, v4
goto/16 :goto_135
:pswitch_1c4
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
add-int/2addr v7, v8
sub-int/2addr v5, v7
invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
goto :goto_1b7
:pswitch_1df
iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
add-int/2addr v7, v8
sub-int/2addr v5, v7
const/high16 v7, 0x4000
invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v5
goto :goto_1b7
:cond_1fc
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v4, v11, :cond_208
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getWidth()I
move-result v4
goto/16 :goto_146
:cond_208
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
goto/16 :goto_146
:cond_20c
move v5, v6
goto/16 :goto_14d
:cond_20f
move v6, v2
goto/16 :goto_155
:cond_212
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v0, v6, :cond_21e
move v0, v6
:goto_219
invoke-virtual {v3, v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
goto/16 :goto_158
:cond_21e
move v0, v2
goto :goto_219
:cond_220
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
if-ne v3, v11, :cond_227
move v5, v0
goto/16 :goto_158
:cond_227
iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
goto/16 :goto_158
:cond_22b
move v1, v2
goto/16 :goto_162
:cond_22e
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v3, v6, :cond_27d
move v3, v6
:goto_233
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
if-ne v4, v6, :cond_297
move v0, v6
:goto_238
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v4, v3, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z
if-nez v3, :cond_2ab
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z
if-nez v3, :cond_2ab
:goto_247
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/w;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I
invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/s;->setSelection(I)V
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z
if-eqz v0, :cond_26d
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->isInTouchMode()Z
move-result v0
if-eqz v0, :cond_270
:cond_26d
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->h()V
:cond_270
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z
if-nez v0, :cond_170
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/t;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_170
:cond_27d
iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
if-ne v3, v11, :cond_28e
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getWidth()I
move-result v4
invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V
move v3, v2
goto :goto_233
:cond_28e
iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I
invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V
move v3, v2
goto :goto_233
:cond_297
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
if-ne v4, v11, :cond_2a2
iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V
move v0, v2
goto :goto_238
:cond_2a2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I
invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V
move v0, v2
goto :goto_238
:cond_2ab
move v1, v2
goto :goto_247
:cond_2ad
move v4, v5
goto/16 :goto_fb
:cond_2b0
move v0, v2
goto/16 :goto_ac
:cond_2b3
move-object v3, v0
move v0, v2
goto/16 :goto_a7
nop
:pswitch_data_2b8
.packed-switch 0x0
:pswitch_17c
:pswitch_174
.end packed-switch
:pswitch_data_2c0
.packed-switch -0x2
:pswitch_1c4
:pswitch_1df
.end packed-switch
.end method
.method public final f()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_1b
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
iput-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/x;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final g()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
return-void
.end method
.method public final h()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
if-eqz v0, :cond_b
const/4 v1, 0x1
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;Z)Z
invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->requestLayout()V
:cond_b
return-void
.end method
.method public final i()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
return v0
.end method
.method public final j()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I
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
.method public final k()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/s;
return-object v0
.end method