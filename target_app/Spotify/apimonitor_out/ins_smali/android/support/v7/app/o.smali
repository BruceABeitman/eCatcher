.class  Landroid/support/v7/app/o;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"
.field final a:Landroid/app/Activity;
.field final b:Landroid/support/v7/app/a;
.field final c:Landroid/app/ActionBar;
.field private d:Landroid/widget/ImageView;
.field private e:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/o;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;Z)V
return-void
.end method
.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;Z)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/o;->e:Ljava/util/ArrayList;
iput-object p1, p0, Landroid/support/v7/app/o;->a:Landroid/app/Activity;
iput-object p2, p0, Landroid/support/v7/app/o;->b:Landroid/support/v7/app/a;
invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
if-eqz p3, :cond_22
invoke-virtual {p0}, Landroid/support/v7/app/o;->b()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_22
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/app/o;->c(Z)V
:cond_22
return-void
.end method
.method public a()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public a(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V
return-void
.end method
.method public a(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V
return-void
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
return-void
.end method
.method public b()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I
move-result v0
return v0
.end method
.method public b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public b(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V
return-void
.end method
.method public c()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method public c(Landroid/graphics/drawable/Drawable;)V
.registers 9
const/4 v1, 0x0
const v6, 0x102002c
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v7/app/o;->d:Landroid/widget/ImageView;
if-nez v0, :cond_54
iget-object v0, p0, Landroid/support/v7/app/o;->a:Landroid/app/Activity;
invoke-virtual {v0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_2f
move-object v0, v1
:goto_13
if-eqz v0, :cond_2e
if-nez p1, :cond_2b
iget-object v1, p0, Landroid/support/v7/app/o;->a:Landroid/app/Activity;
new-array v2, v5, [I
const v3, 0x101030b
aput v3, v2, v4
invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object p1
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:cond_2b
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_2e
return-void
:cond_2f
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
const/4 v3, 0x2
if-eq v2, v3, :cond_3e
move-object v0, v1
goto :goto_13
:cond_3e
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v2
if-ne v2, v6, :cond_57
:goto_4c
instance-of v1, v0, Landroid/widget/ImageView;
if-eqz v1, :cond_54
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Landroid/support/v7/app/o;->d:Landroid/widget/ImageView;
:cond_54
iget-object v0, p0, Landroid/support/v7/app/o;->d:Landroid/widget/ImageView;
goto :goto_13
:cond_57
move-object v0, v1
goto :goto_4c
.end method
.method public c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/o;->c:Landroid/app/ActionBar;
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V
return-void
.end method