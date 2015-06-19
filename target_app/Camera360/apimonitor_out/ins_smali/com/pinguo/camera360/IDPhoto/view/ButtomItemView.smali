.class public Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;
.super Landroid/widget/LinearLayout;
.source "ButtomItemView.java"
.field private mChildClickListener:Landroid/view/View$OnClickListener;
.field private mClickListener:Landroid/view/View$OnClickListener;
.field private mImageViewDrawable:Landroid/graphics/drawable/Drawable;
.field private mTextViewText:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;-><init>(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mChildClickListener:Landroid/view/View$OnClickListener;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030082
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView$1;-><init>(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)V
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mChildClickListener:Landroid/view/View$OnClickListener;
sget-object v1, LvStudio/Android/Camera360/R$styleable;->IDPhotoButtomItemView:[I
invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mImageViewDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mTextViewText:Ljava/lang/String;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f030082
invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;)Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method protected onFinishInflate()V
.registers 4
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mImageViewDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_15
const v2, 0x7f0a005e
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mImageViewDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_15
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mTextViewText:Ljava/lang/String;
if-eqz v2, :cond_27
const v2, 0x7f0a02ee
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mTextViewText:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_27
return-void
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mClickListener:Landroid/view/View$OnClickListener;
const v0, 0x7f0a005e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mChildClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a02ee
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/ButtomItemView;->mChildClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method