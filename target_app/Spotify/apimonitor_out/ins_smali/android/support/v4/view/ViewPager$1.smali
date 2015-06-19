.class final Landroid/support/v4/view/ViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Landroid/support/v4/view/bo;
check-cast p2, Landroid/support/v4/view/bo;
iget v0, p1, Landroid/support/v4/view/bo;->b:I
iget v1, p2, Landroid/support/v4/view/bo;->b:I
sub-int/2addr v0, v1
return v0
.end method