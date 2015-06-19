.class public Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "IDPhotoSelectListAdapter.java"
.field public static final MOVE_RELATIVE:F = 0.4375f
.field private static final TAG:Ljava/lang/String; = "IDO"
.field private mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
.field private mContext:Landroid/content/Context;
.field private mMoveDistance:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b004d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
int-to-float v0, v0
const/high16 v1, 0x3ee0
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mMoveDistance:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideCenterToRight(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImage(Landroid/view/View;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->slideRightToCenter(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImageBack(Landroid/view/View;)V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Landroid/view/View;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setLeftMargin(Landroid/view/View;I)V
return-void
.end method
.method private bindView(Landroid/view/View;I)V
.registers 9
const/4 v3, 0x1
const/4 v5, 0x0
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->isChecked()Z
move-result v2
if-eqz v2, :cond_98
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconMask:Landroid/view/View;
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V
invoke-direct {p0, v0, v3}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->moveBtn(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;Z)V
:goto_21
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->image:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
move-result-object v2
const v3, 0x7f020277
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->image:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getImageUri()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/ImageView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getIDPhoto()Landroid/graphics/Bitmap;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->name:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getTypeName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getFrag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_68
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->frag:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->frag:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getFrag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_68
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->size:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$4(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getTypeSize()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->format:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$5(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v2
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getFormat()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-interface {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->getTypeName()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->reSetTextSize(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;Ljava/lang/String;)V
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconBtn:Landroid/widget/FrameLayout;
new-instance v3, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;
invoke-direct {v3, p0, v1, p2, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$1;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v2, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;
invoke-direct {v2, p0, v1, p2, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$2;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;ILcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
:cond_98
iget-boolean v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
if-eqz v2, :cond_bb
iput-boolean v5, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
const-string/jumbo v2, "IDO"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "ischeck"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v4, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
invoke-direct {p0, v2}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->rotateCheckImageBackNow(Landroid/view/View;)V
:cond_bb
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconMask:Landroid/view/View;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V
invoke-direct {p0, v0, v5}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->moveBtn(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;Z)V
goto/16 :goto_21
.end method
.method private moveBtn(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;Z)V
.registers 5
if-eqz p2, :cond_a
iget-object v0, p1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconBtn:Landroid/widget/FrameLayout;
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mMoveDistance:I
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setLeftMargin(Landroid/view/View;I)V
:goto_9
return-void
:cond_a
iget-object v0, p1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconBtn:Landroid/widget/FrameLayout;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setLeftMargin(Landroid/view/View;I)V
goto :goto_9
.end method
.method private moveX(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;
.registers 7
const-string/jumbo v0, "x"
const/4 v1, 0x2
new-array v1, v1, [F
const/4 v2, 0x0
aput p2, v1, v2
const/4 v2, 0x1
aput p3, v1, v2
invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
return-object v0
.end method
.method private reSetTextSize(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;Ljava/lang/String;)V
.registers 11
const/16 v7, 0x21
const/4 v6, 0x0
const/4 v5, 0x1
new-instance v1, Landroid/text/SpannableString;
invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->hasDigit(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_30
new-instance v2, Landroid/text/style/TypefaceSpan;
const-string/jumbo v3, "sans-serif"
invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
new-instance v3, Landroid/text/style/AbsoluteSizeSpan;
const/16 v4, 0x1e
invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V
invoke-virtual {v1, v3, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->name:Landroid/widget/TextView;
invoke-static {p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_2f
return-void
:cond_30
#getter for: Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->name:Landroid/widget/TextView;
invoke-static {p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2f
.end method
.method private rotateCheckImage(Landroid/view/View;)V
.registers 5
const-string/jumbo v0, "rotation"
const/4 v1, 0x2
new-array v1, v1, [F
fill-array-data v1, :array_18
invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V
return-void
nop
:array_18
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0xb4t 0x42t
.end array-data
.end method
.method private rotateCheckImageBack(Landroid/view/View;)V
.registers 5
const-string/jumbo v0, "rotation"
const/4 v1, 0x2
new-array v1, v1, [F
fill-array-data v1, :array_18
invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
const-wide/16 v1, 0x1f4
invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V
return-void
nop
:array_18
.array-data 0x4
0x0t 0x0t 0xb4t 0x42t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private rotateCheckImageBackNow(Landroid/view/View;)V
.registers 5
const-string/jumbo v0, "rotation"
const/4 v1, 0x2
new-array v1, v1, [F
fill-array-data v1, :array_18
invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
const-wide/16 v1, 0x2
invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;
move-result-object v0
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V
return-void
nop
:array_18
.array-data 0x4
0x0t 0x0t 0xb4t 0x42t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private setLeftMargin(Landroid/view/View;I)V
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private slideCenterToRight(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x2
new-array v1, v1, [I
aput v2, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mMoveDistance:I
aput v3, v1, v2
invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$3;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$3;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$4;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$4;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V
return-void
.end method
.method private slideRightToCenter(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
.registers 6
const/4 v3, 0x0
const/4 v1, 0x2
new-array v1, v1, [I
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mMoveDistance:I
aput v2, v1, v3
const/4 v2, 0x1
aput v3, v1, v2
invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$5;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
new-instance v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$6;-><init>(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)V
invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
invoke-virtual {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
if-nez p2, :cond_18
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mContext:Landroid/content/Context;
const v3, 0x7f030089
const/4 v4, 0x0
invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;-><init>(Landroid/view/View;)V
invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_14
invoke-direct {p0, v1, p1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->bindView(Landroid/view/View;I)V
return-object v1
:cond_18
move-object v1, p2
goto :goto_14
.end method
.method public hasDigit(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
const-string/jumbo v3, ".*\\d+.*"
invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
move-result v3
if-eqz v3, :cond_13
const/4 v0, 0x1
:cond_13
return v0
.end method
.method public setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->mAdapterDataChangeListener:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;
return-void
.end method