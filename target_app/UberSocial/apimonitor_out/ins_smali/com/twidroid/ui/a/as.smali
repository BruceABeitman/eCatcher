.class public Lcom/twidroid/ui/a/as;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field  a:I
.field  b:I
.field protected c:Landroid/view/LayoutInflater;
.field  d:Lcom/twidroid/model/twitter/d;
.field  e:Landroid/content/Context;
.field  f:Landroid/os/Handler;
.field private g:Lcom/twidroid/model/twitter/e;
.method public constructor <init>(Landroid/content/Context;Lcom/twidroid/model/twitter/e;)V
.registers 7
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/16 v0, 0x80
iput v0, p0, Lcom/twidroid/ui/a/as;->a:I
const/16 v0, 0x96
iput v0, p0, Lcom/twidroid/ui/a/as;->b:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/ui/a/as;->d:Lcom/twidroid/model/twitter/d;
iput-object p2, p0, Lcom/twidroid/ui/a/as;->g:Lcom/twidroid/model/twitter/e;
iput-object p1, p0, Lcom/twidroid/ui/a/as;->e:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/as;->f:Landroid/os/Handler;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/a/as;->c:Landroid/view/LayoutInflater;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3ff004189374bc6aL
cmpl-double v0, v0, v2
if-lez v0, :cond_3c
const/16 v0, 0x78
iput v0, p0, Lcom/twidroid/ui/a/as;->a:I
const/16 v0, 0xa0
iput v0, p0, Lcom/twidroid/ui/a/as;->b:I
:goto_3b
return-void
:cond_3c
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v0, v0
const-wide v2, 0x3fefae147ae147aeL
cmpg-double v0, v0, v2
if-gez v0, :cond_59
const/16 v0, 0x3c
iput v0, p0, Lcom/twidroid/ui/a/as;->a:I
const/16 v0, 0x46
iput v0, p0, Lcom/twidroid/ui/a/as;->b:I
goto :goto_3b
:cond_59
const/16 v0, 0x50
iput v0, p0, Lcom/twidroid/ui/a/as;->a:I
const/16 v0, 0x5a
iput v0, p0, Lcom/twidroid/ui/a/as;->b:I
goto :goto_3b
.end method
.method public a(Lcom/twidroid/model/twitter/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/as;->d:Lcom/twidroid/model/twitter/d;
invoke-virtual {p0}, Lcom/twidroid/ui/a/as;->notifyDataSetChanged()V
return-void
.end method
.method public a(Lcom/twidroid/model/twitter/e;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/a/as;->g:Lcom/twidroid/model/twitter/e;
invoke-virtual {p0}, Lcom/twidroid/ui/a/as;->notifyDataSetChanged()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/as;->g:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/as;->g:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/e;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const/4 v5, 0x1
const/4 v4, -0x1
iget-object v0, p0, Lcom/twidroid/ui/a/as;->g:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/e;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
if-nez p2, :cond_7e
iget-object v1, p0, Lcom/twidroid/ui/a/as;->c:Landroid/view/LayoutInflater;
const v2, 0x7f030046
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v2, Lcom/twidroid/ui/a/at;
invoke-direct {v2, p0}, Lcom/twidroid/ui/a/at;-><init>(Lcom/twidroid/ui/a/as;)V
const v1, 0x7f0900f4
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, v2, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
iget-object v1, v2, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v1, v2, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V
const v1, 0x7f0900f3
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, v2, Lcom/twidroid/ui/a/at;->b:Landroid/widget/ImageView;
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v2
:goto_45
instance-of v2, p3, Landroid/widget/GridView;
if-nez v2, :cond_85
iget-object v2, p0, Lcom/twidroid/ui/a/as;->d:Lcom/twidroid/model/twitter/d;
if-eqz v2, :cond_85
iget-object v2, p0, Lcom/twidroid/ui/a/as;->d:Lcom/twidroid/model/twitter/d;
invoke-virtual {v2, v0}, Lcom/twidroid/model/twitter/d;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_85
iget-object v2, v1, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
const v3, -0x777778
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_5d
iget-object v2, v1, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/model/twitter/d;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->b()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/ui/a/as;->e:Landroid/content/Context;
invoke-static {v3}, Lcom/twidroid/d/u;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/twidroid/model/twitter/d;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, v1, Lcom/twidroid/ui/a/at;->b:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/twidroid/ui/a/as;->f:Landroid/os/Handler;
invoke-static {v2, v0, v1, v3, v5}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;Z)V
instance-of v0, p3, Landroid/widget/GridView;
if-eqz v0, :cond_8b
:goto_7d
return-object p2
:cond_7e
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/ui/a/at;
goto :goto_45
:cond_85
iget-object v2, v1, Lcom/twidroid/ui/a/at;->a:Landroid/widget/TextView;
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_5d
:cond_8b
new-instance v0, Landroid/widget/Gallery$LayoutParams;
iget v1, p0, Lcom/twidroid/ui/a/as;->b:I
iget v2, p0, Lcom/twidroid/ui/a/as;->a:I
invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_7d
.end method