.class  Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IDPhotoSelectListAdapter.java"
.field private format:Landroid/widget/TextView;
.field private frag:Landroid/widget/TextView;
.field public idPhotoCheck:Landroid/widget/ImageView;
.field public idPhotoIconBtn:Landroid/widget/FrameLayout;
.field public idPhotoIconMask:Landroid/view/View;
.field private image:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.field public isChecked:Z
.field private name:Landroid/widget/TextView;
.field private photo:Landroid/widget/ImageView;
.field private size:Landroid/widget/TextView;
.method public constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->isChecked:Z
const v0, 0x7f0a0335
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconBtn:Landroid/widget/FrameLayout;
const v0, 0x7f0a0338
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoCheck:Landroid/widget/ImageView;
const v0, 0x7f0a0337
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->idPhotoIconMask:Landroid/view/View;
const v0, 0x7f0a0336
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->image:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
const v0, 0x7f0a0334
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;
const v0, 0x7f0a0330
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->name:Landroid/widget/TextView;
const v0, 0x7f0a0331
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->frag:Landroid/widget/TextView;
const v0, 0x7f0a0333
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->size:Landroid/widget/TextView;
const v0, 0x7f0a0332
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->format:Landroid/widget/TextView;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->image:Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->name:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->frag:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->size:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$ViewHolder;->format:Landroid/widget/TextView;
return-object v0
.end method