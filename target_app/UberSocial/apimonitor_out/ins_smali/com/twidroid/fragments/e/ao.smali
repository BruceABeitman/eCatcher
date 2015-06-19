.class  Lcom/twidroid/fragments/e/ao;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/am;
.field private b:Ljava/util/List;
.method public constructor <init>(Lcom/twidroid/fragments/e/am;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/ao;->a:Lcom/twidroid/fragments/e/am;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p2, p0, Lcom/twidroid/fragments/e/ao;->b:Ljava/util/List;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ao;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/ao;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/e/ao;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/model/twitter/d;
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/d;->b()J
move-result-wide v0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
if-nez p2, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/e/ao;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x1090011
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
:goto_14
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ao;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/model/twitter/d;
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/d;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v2
:cond_25
move-object v2, p2
goto :goto_14
.end method