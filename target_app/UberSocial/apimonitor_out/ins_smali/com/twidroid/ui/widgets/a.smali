.class  Lcom/twidroid/ui/widgets/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private b:Z
.field private c:I
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 6
const/4 v2, -0x1
invoke-direct {p0, p1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
iput v2, p0, Lcom/twidroid/ui/widgets/a;->c:I
const v0, 0x7f0c02f7
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/ui/widgets/a;->a:Ljava/lang/String;
const v0, 0x7f030018
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/a;->setDropDownViewResource(I)V
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
if-eqz v0, :cond_2c
const-string v1, "bright"
invoke-virtual {v0}, Lcom/twidroid/d/v;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
iput v2, p0, Lcom/twidroid/ui/widgets/a;->c:I
:cond_2c
return-void
.end method
.method private a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 10
const/4 v4, 0x0
if-nez p2, :cond_27
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/a;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p4, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
:goto_10
invoke-virtual {p0, p1}, Lcom/twidroid/ui/widgets/a;->a(I)Lcom/twidroid/model/twitter/c;
move-result-object v2
instance-of v0, v2, Lcom/twidroid/ui/widgets/b;
if-eqz v0, :cond_4e
instance-of v0, v1, Landroid/widget/TextView;
if-eqz v0, :cond_29
move-object v0, v1
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_26
:cond_26
return-object v1
:cond_27
move-object v1, p2
goto :goto_10
:cond_29
instance-of v0, v1, Lcom/twidroid/ui/widgets/CachedImageView;
if-eqz v0, :cond_34
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
invoke-direct {p0, v0, v4}, Lcom/twidroid/ui/widgets/a;->a(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;)V
goto :goto_26
:cond_34
instance-of v0, v1, Lcom/twidroid/ui/widgets/CheckedContentView;
if-eqz v0, :cond_26
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/widgets/CheckedContentView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getAvatarHolder()Lcom/twidroid/ui/widgets/CachedImageView;
move-result-object v3
invoke-direct {p0, v3, v4}, Lcom/twidroid/ui/widgets/a;->a(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;)V
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getNameHolder()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_26
:cond_4e
instance-of v0, v1, Landroid/widget/TextView;
if-eqz v0, :cond_5d
move-object v0, v1
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_26
:cond_5d
instance-of v0, v1, Lcom/twidroid/ui/widgets/CachedImageView;
if-eqz v0, :cond_68
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
invoke-direct {p0, v0, v2}, Lcom/twidroid/ui/widgets/a;->a(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;)V
goto :goto_26
:cond_68
instance-of v0, v1, Lcom/twidroid/ui/widgets/CheckedContentView;
if-eqz v0, :cond_26
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/widgets/CheckedContentView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getAvatarHolder()Lcom/twidroid/ui/widgets/CachedImageView;
move-result-object v3
invoke-direct {p0, v3, v2}, Lcom/twidroid/ui/widgets/a;->a(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;)V
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getNameHolder()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_26
.end method
.method private a(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
if-nez p2, :cond_18
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/a;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_2
:cond_18
new-instance v0, Lcom/twidroid/a/d;
const/4 v1, 0x0
invoke-direct {v0, p1, p2, v1}, Lcom/twidroid/a/d;-><init>(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/a;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/a/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_2
.end method
.method public a(I)Lcom/twidroid/model/twitter/c;
.registers 5
const/4 v2, 0x1
invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I
move-result v0
if-ne p1, v0, :cond_f
new-instance v0, Lcom/twidroid/ui/widgets/b;
iget-object v1, p0, Lcom/twidroid/ui/widgets/a;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/twidroid/ui/widgets/b;-><init>(Ljava/lang/String;)V
:goto_e
return-object v0
:cond_f
:try_start_f
invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16
goto :goto_e
:catch_16
move-exception v0
invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I
move-result v1
if-lt v1, v2, :cond_24
invoke-super {p0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
goto :goto_e
:cond_24
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_e
.end method
.method  a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/widgets/a;->b:Z
return-void
.end method
.method public getCount()I
.registers 3
invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I
move-result v1
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/a;->b:Z
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_9
add-int/2addr v0, v1
return v0
:cond_b
const/4 v0, 0x0
goto :goto_9
.end method
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const v0, 0x7f030018
invoke-direct {p0, p1, p2, p3, v0}, Lcom/twidroid/ui/widgets/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
move-result-object v1
instance-of v0, v1, Lcom/twidroid/ui/widgets/CheckedContentView;
if-eqz v0, :cond_17
move-object v0, v1
check-cast v0, Lcom/twidroid/ui/widgets/CheckedContentView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/CheckedContentView;->getNameHolder()Landroid/widget/TextView;
move-result-object v0
const/high16 v2, -0x100
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
:cond_17
return-object v1
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/ui/widgets/a;->a(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
invoke-virtual {p0, p1}, Lcom/twidroid/ui/widgets/a;->a(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
int-to-long v0, v0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const v0, 0x7f03001a
invoke-direct {p0, p1, p2, p3, v0}, Lcom/twidroid/ui/widgets/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
move-result-object v1
instance-of v0, v1, Landroid/widget/TextView;
if-eqz v0, :cond_13
move-object v0, v1
check-cast v0, Landroid/widget/TextView;
iget v2, p0, Lcom/twidroid/ui/widgets/a;->c:I
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
:cond_13
return-object v1
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
if-eqz p1, :cond_5
:try_start_2
invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5
.end method