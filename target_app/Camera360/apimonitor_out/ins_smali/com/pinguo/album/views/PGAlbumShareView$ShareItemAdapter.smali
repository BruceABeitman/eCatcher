.class  Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PGAlbumShareView.java"
.field final synthetic this$0:Lcom/pinguo/album/views/PGAlbumShareView;
.method public constructor <init>(Lcom/pinguo/album/views/PGAlbumShareView;Landroid/content/Context;Ljava/util/List;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
const/4 v0, 0x0
invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const/16 v5, 0x8
if-nez p2, :cond_58
iget-object v2, p0, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mInflater:Landroid/view/LayoutInflater;
invoke-static {v2}, Lcom/pinguo/album/views/PGAlbumShareView;->access$0(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/view/LayoutInflater;
move-result-object v2
const v3, 0x7f03000e
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;
invoke-direct {v0}, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;-><init>()V
const v2, 0x7f0a005e
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->icon:Landroid/widget/ImageView;
const v2, 0x7f0a005f
invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->title:Landroid/widget/TextView;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_30
invoke-virtual {p0, p1}, Lcom/pinguo/album/views/PGAlbumShareView$ShareItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/ShareItem;
invoke-virtual {v1}, Lcom/pinguo/album/views/ShareItem;->getShareType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_65
invoke-virtual {v1}, Lcom/pinguo/album/views/ShareItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_5f
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->icon:Landroid/widget/ImageView;
invoke-virtual {v1}, Lcom/pinguo/album/views/ShareItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->icon:Landroid/widget/ImageView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_52
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->title:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_57
:cond_57
return-object p2
:cond_58
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;
goto :goto_30
:cond_5f
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->icon:Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_52
:cond_65
invoke-virtual {v1}, Lcom/pinguo/album/views/ShareItem;->getShareType()I
move-result v2
if-nez v2, :cond_57
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->title:Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/pinguo/album/views/ShareItem;->getTitle()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v0, Lcom/pinguo/album/views/PGAlbumShareView$ViewHolder;->icon:Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_57
.end method