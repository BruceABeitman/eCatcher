.class public Lcom/facebook/katana/DropdownFriendsAdapter;
.super Landroid/widget/CursorAdapter;
.source "DropdownFriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/widget/Filter;

.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

.field private final mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mViewHolders:Ljava/util/List;

    new-instance v0, Lcom/facebook/katana/DropdownFriendsAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/DropdownFriendsAdapter$1;-><init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mFilter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/DropdownFriendsAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13

    const v8, 0x7f0200b3

    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/ViewHolder;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    const/4 v6, 0x5

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v6, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    iget-object v7, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2, v3, v4}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v6, v5, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2b
    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3b

    iget-object v6, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f080053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3b
    const v6, 0x7f0b002f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_48
    iget-object v6, v5, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2b

    :cond_4e
    iget-object v6, v5, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2b
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/DropdownFriendsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_7
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v3, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f0b002e

    invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/DropdownFriendsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    invoke-virtual {v1}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method
