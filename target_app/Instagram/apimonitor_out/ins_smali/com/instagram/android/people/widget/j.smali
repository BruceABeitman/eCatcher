.class final Lcom/instagram/android/people/widget/j;
.super Ljava/lang/Object;
.source "PeopleTagsLayout.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/instagram/android/people/widget/PeopleTagsLayout;
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/widget/j;->a:Lcom/instagram/android/people/widget/PeopleTagsLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/instagram/android/people/widget/c;Lcom/instagram/android/people/widget/c;)I
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;
move-result-object v0
iget v0, v0, Landroid/graphics/PointF;->x:F
invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;
move-result-object v1
iget v1, v1, Landroid/graphics/PointF;->x:F
sub-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/instagram/android/people/widget/c;
check-cast p2, Lcom/instagram/android/people/widget/c;
invoke-static {p1, p2}, Lcom/instagram/android/people/widget/j;->a(Lcom/instagram/android/people/widget/c;Lcom/instagram/android/people/widget/c;)I
move-result v0
return v0
.end method