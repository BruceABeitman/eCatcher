.class final Landroid/support/v4/view/bq;
.super Ljava/lang/Object;
.source "ViewPager.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/view/View;Landroid/view/View;)I
.registers 6
invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/view/bj;
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/view/bj;
iget-boolean v2, v0, Landroid/support/v4/view/bj;->a:Z
iget-boolean v3, v1, Landroid/support/v4/view/bj;->a:Z
if-eq v2, v3, :cond_1a
iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, -0x1
goto :goto_17
:cond_1a
iget v0, v0, Landroid/support/v4/view/bj;->e:I
iget v1, v1, Landroid/support/v4/view/bj;->e:I
sub-int/2addr v0, v1
goto :goto_17
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Landroid/view/View;
check-cast p2, Landroid/view/View;
invoke-static {p1, p2}, Landroid/support/v4/view/bq;->a(Landroid/view/View;Landroid/view/View;)I
move-result v0
return v0
.end method