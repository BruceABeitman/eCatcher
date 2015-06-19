.class public Lcom/twidroid/c/u;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private a:Ljava/util/ArrayList;
.field private b:Landroid/view/LayoutInflater;
.field private c:Landroid/support/v4/app/Fragment;
.field private d:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/util/ArrayList;Landroid/view/View$OnClickListener;)V
.registers 6
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/c/u;->a:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/twidroid/c/u;->c:Landroid/support/v4/app/Fragment;
iput-object p4, p0, Lcom/twidroid/c/u;->d:Landroid/view/View$OnClickListener;
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/c/u;->b:Landroid/view/LayoutInflater;
iput-object p3, p0, Lcom/twidroid/c/u;->a:Ljava/util/ArrayList;
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
return-object p1
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/c/u;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
iget-object v0, p0, Lcom/twidroid/c/u;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez p2, :cond_33
iget-object v1, p0, Lcom/twidroid/c/u;->b:Landroid/view/LayoutInflater;
const v2, 0x7f030092
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/twidroid/c/v;
invoke-direct {v2}, Lcom/twidroid/c/v;-><init>()V
const v1, 0x7f0901d4
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_28
iget-object v1, v1, Lcom/twidroid/c/v;->a:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/c/u;->d:Landroid/view/View$OnClickListener;
invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-object p2
:cond_33
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/c/v;
goto :goto_28
.end method