.class public final Lcom/facebook/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Landroid/content/Context;
.field private d:Lcom/facebook/widget/h;
.field private e:Landroid/widget/PopupWindow;
.field private f:Lcom/facebook/widget/ToolTipPopup$Style;
.field private g:J
.field private final h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->a:Lcom/facebook/widget/ToolTipPopup$Style;
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->f:Lcom/facebook/widget/ToolTipPopup$Style;
const-wide/16 v0, 0x1770
iput-wide v0, p0, Lcom/facebook/widget/ToolTipPopup;->g:J
new-instance v0, Lcom/facebook/widget/ToolTipPopup$1;
invoke-direct {v0, p0}, Lcom/facebook/widget/ToolTipPopup$1;-><init>(Lcom/facebook/widget/ToolTipPopup;)V
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->c:Landroid/content/Context;
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method static synthetic b(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/h;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
return-object v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
:cond_19
return-void
.end method
.method public final a()V
.registers 6
const/high16 v4, -0x8000
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_f0
new-instance v0, Lcom/facebook/widget/h;
iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->c:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Lcom/facebook/widget/h;-><init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
sget v1, Lcom/facebook/a/e;->e:I
invoke-virtual {v0, v1}, Lcom/facebook/widget/h;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->f:Lcom/facebook/widget/ToolTipPopup$Style;
sget-object v1, Lcom/facebook/widget/ToolTipPopup$Style;->a:Lcom/facebook/widget/ToolTipPopup$Style;
if-ne v0, v1, :cond_f1
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/a/d;->j:I
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->k:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->l:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->d(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->m:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_54
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->c:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v2
invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->c()V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
:cond_84
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/h;->onMeasure(II)V
new-instance v0, Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
iget-object v2, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-virtual {v2}, Lcom/facebook/widget/h;->getMeasuredWidth()I
move-result v2
iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-virtual {v3}, Lcom/facebook/widget/h;->getMeasuredHeight()I
move-result v3
invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
if-eqz v0, :cond_cc
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_cc
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z
move-result v0
if-eqz v0, :cond_11f
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->b()V
:goto_cc
:cond_cc
iget-wide v0, p0, Lcom/facebook/widget/ToolTipPopup;->g:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_e0
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
new-instance v1, Lcom/facebook/widget/ToolTipPopup$2;
invoke-direct {v1, p0}, Lcom/facebook/widget/ToolTipPopup$2;-><init>(Lcom/facebook/widget/ToolTipPopup;)V
iget-wide v2, p0, Lcom/facebook/widget/ToolTipPopup;->g:J
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/widget/h;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_e0
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
new-instance v1, Lcom/facebook/widget/ToolTipPopup$3;
invoke-direct {v1, p0}, Lcom/facebook/widget/ToolTipPopup$3;-><init>(Lcom/facebook/widget/ToolTipPopup;)V
invoke-virtual {v0, v1}, Lcom/facebook/widget/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_f0
return-void
:cond_f1
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/a/d;->f:I
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->g:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->h:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->d(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
sget v1, Lcom/facebook/a/d;->i:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_54
:cond_11f
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->d:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->a()V
goto :goto_cc
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/facebook/widget/ToolTipPopup;->g:J
return-void
.end method
.method public final a(Lcom/facebook/widget/ToolTipPopup$Style;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->f:Lcom/facebook/widget/ToolTipPopup$Style;
return-void
.end method
.method public final b()V
.registers 2
invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->c()V
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->e:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:cond_c
return-void
.end method