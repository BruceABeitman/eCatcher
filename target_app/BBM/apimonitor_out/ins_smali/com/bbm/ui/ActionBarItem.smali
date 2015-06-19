.class public Lcom/bbm/ui/ActionBarItem;
.super Lcom/bbm/ui/CustomView;
.source "ActionBarItem.java"
.field private a:Landroid/widget/ImageView;
.field private b:Landroid/widget/ImageView;
.field private c:Landroid/widget/TextView;
.field private d:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/bbm/ui/ActionBarItem;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;III)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/bbm/ui/ActionBarItem;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0, p1}, Lcom/bbm/ui/ActionBarItem;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v0, p0, Lcom/bbm/ui/ActionBarItem;->d:Z
invoke-direct {p0, p1}, Lcom/bbm/ui/ActionBarItem;->a(Landroid/content/Context;)V
if-eqz p2, :cond_33
sget-object v1, Lcom/bbm/ad;->ActionBarItem:[I
invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_1d
iget-object v3, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1d
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/ui/ActionBarItem;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v2
iget-object v3, p0, Lcom/bbm/ui/ActionBarItem;->a:Landroid/widget/ImageView;
if-eqz v2, :cond_34
:goto_2d
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:cond_33
return-void
:cond_34
const/16 v0, 0x8
goto :goto_2d
.end method
.method private a()V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_13
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v0
if-eqz v0, :cond_13
iget-boolean v0, p0, Lcom/bbm/ui/ActionBarItem;->d:Z
if-eqz v0, :cond_1e
:cond_13
const/4 v0, 0x1
:goto_14
iget-object v2, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
if-eqz v0, :cond_1a
const/16 v1, 0x8
:cond_1a
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V
return-void
:cond_1e
move v0, v1
goto :goto_14
.end method
.method private a(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x1
invoke-virtual {p0, v2}, Lcom/bbm/ui/ActionBarItem;->setClickable(Z)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03012d
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a05ad
invoke-virtual {p0, v0}, Lcom/bbm/ui/ActionBarItem;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/ActionBarItem;->a:Landroid/widget/ImageView;
const v0, 0x7f0a05ac
invoke-virtual {p0, v0}, Lcom/bbm/ui/ActionBarItem;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
const v0, 0x7f0a052e
invoke-virtual {p0, v0}, Lcom/bbm/ui/ActionBarItem;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
return-void
.end method
.method public setEnabled(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/bbm/ui/CustomView;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V
return-void
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public setMinimalMode(Z)V
.registers 3
iget-boolean v0, p0, Lcom/bbm/ui/ActionBarItem;->d:Z
if-eq v0, p1, :cond_9
iput-boolean p1, p0, Lcom/bbm/ui/ActionBarItem;->d:Z
invoke-direct {p0}, Lcom/bbm/ui/ActionBarItem;->a()V
:cond_9
return-void
.end method
.method public setText(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ActionBarItem;->c:Landroid/widget/TextView;
if-nez p1, :cond_6
const-string p1, ""
:cond_6
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0}, Lcom/bbm/ui/ActionBarItem;->a()V
return-void
.end method