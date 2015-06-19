.class public Lcom/twidroid/ui/a/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Lcom/twidroid/ui/c/g;
.method public constructor <init>(Landroid/content/Context;Lcom/twidroid/ui/c/g;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/a/l;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/twidroid/ui/a/l;->b:Lcom/twidroid/ui/c/g;
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/l;)Lcom/twidroid/ui/c/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/l;->b:Lcom/twidroid/ui/c/g;
return-object v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/l;->b:Lcom/twidroid/ui/c/g;
invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->b()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/l;->b:Lcom/twidroid/ui/c/g;
invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/16 v8, 0x8
const/4 v4, 0x0
if-nez p2, :cond_96
iget-object v0, p0, Lcom/twidroid/ui/a/l;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03004e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:goto_13
const v0, 0x7f090106
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f090107
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/CheckBox;
const v2, 0x7f090095
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
const v3, 0x7f090105
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
iget-object v3, p0, Lcom/twidroid/ui/a/l;->b:Lcom/twidroid/ui/c/g;
invoke-virtual {v3, p1}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;
move-result-object v5
invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V
invoke-virtual {v5}, Lcom/twidroid/ui/c/h;->i()Z
move-result v3
if-nez v3, :cond_5f
invoke-virtual {v5}, Lcom/twidroid/ui/c/h;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v6
const v7, 0x7f0c02ef
invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_b6
:cond_5f
invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V
:goto_62
new-instance v3, Lcom/twidroid/ui/a/l$1;
invoke-direct {v3, p0, v5}, Lcom/twidroid/ui/a/l$1;-><init>(Lcom/twidroid/ui/a/l;Lcom/twidroid/ui/c/h;)V
invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v5}, Lcom/twidroid/ui/c/h;->b()Z
move-result v3
if-nez v3, :cond_ba
const/4 v3, 0x1
:goto_71
invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
invoke-virtual {v5}, Lcom/twidroid/ui/c/h;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
instance-of v0, v5, Lcom/twidroid/ui/c/i;
if-nez v0, :cond_87
instance-of v0, v5, Lcom/twidroid/ui/c/e;
if-nez v0, :cond_87
instance-of v0, v5, Lcom/twidroid/ui/c/b;
if-eqz v0, :cond_95
:cond_87
invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V
invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V
new-instance v0, Lcom/twidroid/ui/a/l$2;
invoke-direct {v0, p0, v5}, Lcom/twidroid/ui/a/l$2;-><init>(Lcom/twidroid/ui/a/l;Lcom/twidroid/ui/c/h;)V
invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_95
return-object p2
:cond_96
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a0040
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p2}, Landroid/view/View;->invalidate()V
goto/16 :goto_13
:cond_b6
invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_62
:cond_ba
move v3, v4
goto :goto_71
.end method