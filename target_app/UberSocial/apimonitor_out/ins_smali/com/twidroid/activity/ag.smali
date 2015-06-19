.class public Lcom/twidroid/activity/ag;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field protected a:Ljava/util/ArrayList;
.field protected b:Landroid/view/LayoutInflater;
.field final synthetic c:Lcom/twidroid/activity/WhatsNewActivity;
.method public constructor <init>(Lcom/twidroid/activity/WhatsNewActivity;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/ag;->c:Lcom/twidroid/activity/WhatsNewActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p2, p0, Lcom/twidroid/activity/ag;->a:Ljava/util/ArrayList;
return-void
.end method
.method public a(I)Lcom/twidroid/activity/af;
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/ag;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/af;
return-object v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/ag;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/activity/ag;->a(I)Lcom/twidroid/activity/af;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
iget-object v0, p0, Lcom/twidroid/activity/ag;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/af;
if-nez p2, :cond_62
iget-object v1, p0, Lcom/twidroid/activity/ag;->b:Landroid/view/LayoutInflater;
if-nez v1, :cond_18
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/activity/ag;->b:Landroid/view/LayoutInflater;
:cond_18
iget-object v1, p0, Lcom/twidroid/activity/ag;->b:Landroid/view/LayoutInflater;
const v2, 0x7f030063
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/twidroid/activity/ah;
invoke-direct {v2, p0}, Lcom/twidroid/activity/ah;-><init>(Lcom/twidroid/activity/ag;)V
const v1, 0x7f090041
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/activity/ah;->a:Landroid/widget/TextView;
const v1, 0x7f09010a
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/activity/ah;->c:Landroid/widget/TextView;
const v1, 0x7f09003d
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v2, Lcom/twidroid/activity/ah;->b:Landroid/widget/ImageView;
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_4c
iget-object v2, v1, Lcom/twidroid/activity/ah;->a:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/activity/af;->a:Ljava/lang/CharSequence;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/activity/ah;->c:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/activity/af;->b:Ljava/lang/CharSequence;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/twidroid/activity/ah;->b:Landroid/widget/ImageView;
iget v0, v0, Lcom/twidroid/activity/af;->c:I
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
return-object p2
:cond_62
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/activity/ah;
goto :goto_4c
.end method