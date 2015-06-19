.class public final Lcom/instagram/ui/widget/c/a;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"
.field private final a:Landroid/os/Handler;
.field private final b:Landroid/view/View;
.field private final c:I
.field private d:Landroid/widget/PopupWindow;
.field private e:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/view/View;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/widget/c/a;->a:Landroid/os/Handler;
iput-object p1, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
iput p2, p0, Lcom/instagram/ui/widget/c/a;->c:I
return-void
.end method
.method static synthetic a(Lcom/instagram/ui/widget/c/a;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->e:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method private a(Landroid/view/View;)V
.registers 8
new-instance v0, Landroid/widget/PopupWindow;
invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
iput-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
sget v1, Lcom/facebook/ba;->CustomToast_Fade:I
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V
invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
const/16 v2, 0x8
invoke-static {v1, v2}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
iget-object v3, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
const/16 v4, 0x51
const/4 v5, 0x0
aget v0, v0, v5
iget-object v5, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getWidth()I
move-result v5
div-int/lit8 v5, v5, 0x2
add-int/2addr v0, v5
iget v5, p0, Lcom/instagram/ui/widget/c/a;->c:I
div-int/lit8 v5, v5, 0x2
sub-int/2addr v0, v5
iget-object v5, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getHeight()I
move-result v5
sub-int v1, v5, v1
invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
return-void
.end method
.method private static a(Lcom/instagram/ui/widget/c/d;IIII)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/c/d;->a(IIII)V
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/c/d;->measure(II)V
return-void
.end method
.method private b()Lcom/instagram/ui/widget/c/d;
.registers 3
new-instance v0, Lcom/instagram/ui/widget/c/d;
iget-object v1, p0, Lcom/instagram/ui/widget/c/a;->b:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/widget/c/d;-><init>(Landroid/content/Context;)V
new-instance v1, Lcom/instagram/ui/widget/c/c;
invoke-direct {v1, p0}, Lcom/instagram/ui/widget/c/c;-><init>(Lcom/instagram/ui/widget/c/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/c/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object v0
.end method
.method public final a()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->a:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
:cond_f
iput-object v1, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
if-eqz v0, :cond_1b
if-nez p1, :cond_1c
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
sget v1, Lcom/facebook/ba;->CustomToast_Fade:I
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
:goto_12
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
:cond_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V
goto :goto_12
.end method
.method public final a(IIII)V
.registers 9
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/c/d;
:goto_c
invoke-static {v0, p1, p2, p3, p4}, Lcom/instagram/ui/widget/c/a;->a(Lcom/instagram/ui/widget/c/d;IIII)V
iget-object v1, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
if-nez v1, :cond_2e
invoke-direct {p0, v0}, Lcom/instagram/ui/widget/c/a;->a(Landroid/view/View;)V
:goto_16
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->a:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/ui/widget/c/a;->a:Landroid/os/Handler;
new-instance v1, Lcom/instagram/ui/widget/c/b;
invoke-direct {v1, p0}, Lcom/instagram/ui/widget/c/b;-><init>(Lcom/instagram/ui/widget/c/a;)V
const-wide/16 v2, 0x1b58
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
:cond_29
invoke-direct {p0}, Lcom/instagram/ui/widget/c/a;->b()Lcom/instagram/ui/widget/c/d;
move-result-object v0
goto :goto_c
:cond_2e
iget-object v1, p0, Lcom/instagram/ui/widget/c/a;->d:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Lcom/instagram/ui/widget/c/d;->getMeasuredWidth()I
move-result v2
invoke-virtual {v0}, Lcom/instagram/ui/widget/c/d;->getMeasuredHeight()I
move-result v0
invoke-virtual {v1, v2, v0}, Landroid/widget/PopupWindow;->update(II)V
goto :goto_16
.end method
.method public final a(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/widget/c/a;->e:Landroid/view/View$OnClickListener;
return-void
.end method