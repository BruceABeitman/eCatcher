.class public Lcom/pinguo/camera360/ui/EditTextWithFork;
.super Landroid/widget/EditText;
.source "EditTextWithFork.java"
.field private mClear:Landroid/graphics/drawable/Drawable;
.field private mClearPressed:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
invoke-direct {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->init()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/ui/EditTextWithFork;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method private init()V
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020163
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f020164
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClearPressed:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v0
aget-object v0, v0, v3
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v1
const/4 v2, 0x1
aget-object v1, v1, v2
iget-object v2, p0, Lcom/pinguo/camera360/ui/EditTextWithFork;->mClear:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x3
aget-object v3, v3, v4
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setClearButtonEvent()V
.registers 2
new-instance v0, Lcom/pinguo/camera360/ui/EditTextWithFork$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/EditTextWithFork$1;-><init>(Lcom/pinguo/camera360/ui/EditTextWithFork;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method