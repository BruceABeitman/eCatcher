.class  Lcom/twidroid/ui/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Lcom/twidroid/ui/widgets/CachedImageView;
.field  b:Landroid/widget/TextView;
.field  c:Landroid/widget/TextView;
.field  d:Landroid/widget/TextView;
.field  e:Landroid/widget/TextView;
.method public constructor <init>(Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f09012f
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
iput-object v0, p0, Lcom/twidroid/ui/a/ah;->a:Lcom/twidroid/ui/widgets/CachedImageView;
const v0, 0x7f090131
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/ui/a/ah;->b:Landroid/widget/TextView;
const v0, 0x7f090132
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/ui/a/ah;->c:Landroid/widget/TextView;
const v0, 0x7f090133
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/ui/a/ah;->d:Landroid/widget/TextView;
const v0, 0x7f090130
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/ui/a/ah;->e:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/ui/a/ah;->e:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V
iget-object v0, p0, Lcom/twidroid/ui/a/ah;->e:Landroid/widget/TextView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V
return-void
.end method