.class final Landroid/support/v4/widget/h;
.super Landroid/support/v4/widget/ae;
.source "SourceFile"
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;
.field private final b:I
.field private c:Landroid/support/v4/widget/ad;
.field private final d:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
.registers 4
iput-object p1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-direct {p0}, Landroid/support/v4/widget/ae;-><init>()V
new-instance v0, Landroid/support/v4/widget/h$1;
invoke-direct {v0, p0}, Landroid/support/v4/widget/h$1;-><init>(Landroid/support/v4/widget/h;)V
iput-object v0, p0, Landroid/support/v4/widget/h;->d:Ljava/lang/Runnable;
iput p2, p0, Landroid/support/v4/widget/h;->b:I
return-void
.end method
.method static synthetic a(Landroid/support/v4/widget/h;)V
.registers 7
const/4 v5, 0x3
const/4 v4, 0x1
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
invoke-virtual {v1}, Landroid/support/v4/widget/ad;->b()I
move-result v2
iget v1, p0, Landroid/support/v4/widget/h;->b:I
if-ne v1, v5, :cond_59
move v3, v4
:goto_e
if-eqz v3, :cond_5b
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1d
invoke-virtual {v1}, Landroid/view/View;->getWidth()I
move-result v0
neg-int v0, v0
:cond_1d
add-int/2addr v0, v2
move-object v2, v1
move v1, v0
:goto_20
if-eqz v2, :cond_58
if-eqz v3, :cond_2a
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v0
if-lt v0, v1, :cond_32
:cond_2a
if-nez v3, :cond_58
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v0
if-le v0, v1, :cond_58
:cond_32
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_58
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget-object v3, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v5
invoke-virtual {v3, v2, v1, v5}, Landroid/support/v4/widget/ad;->a(Landroid/view/View;II)Z
iput-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
invoke-direct {p0}, Landroid/support/v4/widget/h;->c()V
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->d()V
:cond_58
return-void
:cond_59
move v3, v0
goto :goto_e
:cond_5b
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;
move-result-object v1
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v0
sub-int/2addr v0, v2
move-object v2, v1
move v1, v0
goto :goto_20
.end method
.method private c()V
.registers 3
const/4 v0, 0x3
iget v1, p0, Landroid/support/v4/widget/h;->b:I
if-ne v1, v0, :cond_6
const/4 v0, 0x5
:cond_6
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V
:cond_13
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
iget-object v1, p0, Landroid/support/v4/widget/h;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
iget v1, p0, Landroid/support/v4/widget/h;->b:I
iget-object v1, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
invoke-virtual {v1}, Landroid/support/v4/widget/ad;->c()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V
return-void
.end method
.method public final a(II)V
.registers 5
and-int/lit8 v0, p1, 0x1
const/4 v1, 0x1
if-ne v0, v1, :cond_1c
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;
move-result-object v0
:goto_c
if-eqz v0, :cond_1b
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I
move-result v1
if-nez v1, :cond_1b
iget-object v1, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ad;->a(Landroid/view/View;I)V
:cond_1b
return-void
:cond_1c
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Landroid/view/View;
move-result-object v0
goto :goto_c
.end method
.method public final a(Landroid/support/v4/widget/ad;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
return-void
.end method
.method public final a(Landroid/view/View;F)V
.registers 9
const/high16 v5, 0x3f00
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F
move-result v1
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v2
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v3, 0x3
invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z
move-result v0
if-eqz v0, :cond_34
cmpl-float v0, p2, v4
if-gtz v0, :cond_22
cmpl-float v0, p2, v4
if-nez v0, :cond_32
cmpl-float v0, v1, v5
if-lez v0, :cond_32
:cond_22
const/4 v0, 0x0
:goto_23
:cond_23
iget-object v1, p0, Landroid/support/v4/widget/h;->c:Landroid/support/v4/widget/ad;
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ad;->a(II)Z
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
:cond_32
neg-int v0, v2
goto :goto_23
:cond_34
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v0
cmpg-float v3, p2, v4
if-ltz v3, :cond_46
cmpl-float v3, p2, v4
if-nez v3, :cond_23
cmpl-float v1, v1, v5
if-lez v1, :cond_23
:cond_46
sub-int/2addr v0, v2
goto :goto_23
.end method
.method public final a(Landroid/view/View;I)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v2, 0x3
invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z
move-result v1
if-eqz v1, :cond_27
add-int v1, v0, p2
int-to-float v1, v1
int-to-float v0, v0
div-float v0, v1, v0
:goto_13
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-nez v0, :cond_33
const/4 v0, 0x4
:goto_1e
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
:cond_27
iget-object v1, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v1
sub-int/2addr v1, p2
int-to-float v1, v1
int-to-float v0, v0
div-float v0, v1, v0
goto :goto_13
:cond_33
const/4 v0, 0x0
goto :goto_1e
.end method
.method public final a(Landroid/view/View;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
iget v1, p0, Landroid/support/v4/widget/h;->b:I
invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final b(Landroid/view/View;I)I
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
const/4 v1, 0x3
invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v0
neg-int v0, v0
const/4 v1, 0x0
invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
:goto_17
return v0
:cond_18
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v1
sub-int v1, v0, v1
invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_17
.end method
.method public final b()V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/h;->a:Landroid/support/v4/widget/DrawerLayout;
iget-object v1, p0, Landroid/support/v4/widget/h;->d:Ljava/lang/Runnable;
const-wide/16 v2, 0xa0
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final b(Landroid/view/View;)V
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->c:Z
invoke-direct {p0}, Landroid/support/v4/widget/h;->c()V
return-void
.end method
.method public final c(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v0
return v0
.end method
.method public final d(Landroid/view/View;)I
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v0
return v0
.end method