.class Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IDPhotoMakeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public btnAdd:Landroid/widget/ImageView;

.field public btnMinus:Landroid/widget/ImageView;

.field public format:Landroid/widget/TextView;

.field public itemLayout:Landroid/view/View;

.field public makeNum:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public price:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->itemLayout:Landroid/view/View;

    const v0, 0x7f0a031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->makeNum:Landroid/widget/TextView;

    const v0, 0x7f0a031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->btnMinus:Landroid/widget/ImageView;

    const v0, 0x7f0a031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->btnAdd:Landroid/widget/ImageView;

    const v0, 0x7f0a0317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->format:Landroid/widget/TextView;

    const v0, 0x7f0a0319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoMakeListAdapter$ViewHolder;->price:Landroid/widget/TextView;

    return-void
.end method
