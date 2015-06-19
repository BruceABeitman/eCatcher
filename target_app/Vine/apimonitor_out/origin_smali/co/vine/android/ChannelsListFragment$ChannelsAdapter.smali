.class Lco/vine/android/ChannelsListFragment$ChannelsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ChannelsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ChannelsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelsAdapter"
.end annotation


# instance fields
.field private final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/ChannelsListFragment$ChannelViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/vine/android/ChannelsListFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/ChannelsListFragment;Landroid/content/Context;Lco/vine/android/client/AppController;I)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p3, p1, Lco/vine/android/ChannelsListFragment;->mAppController:Lco/vine/android/client/AppController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mViewHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private setChannelImage(Lco/vine/android/ChannelsListFragment$ChannelViewHolder;Landroid/graphics/Bitmap;)V
    .registers 6

    if-eqz p2, :cond_13

    iget-object v0, p1, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImage:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p1, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p1, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_12
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;

    iget-object v3, v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelTitle:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelId:J

    iget-wide v3, v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelId:J

    iget-object v5, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    #getter for: Lco/vine/android/ChannelsListFragment;->mSelectedChannel:J
    invoke-static {v5}, Lco/vine/android/ChannelsListFragment;->access$000(Lco/vine/android/ChannelsListFragment;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-virtual {v3}, Lco/vine/android/ChannelsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_33
    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-virtual {v3}, Lco/vine/android/ChannelsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xf0

    if-ge v3, v4, :cond_73

    const/16 v3, 0x8

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7a

    new-instance v2, Lco/vine/android/util/image/ImageKey;

    invoke-direct {v2, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImageKey:Lco/vine/android/util/image/ImageKey;

    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    iget-object v3, v3, Lco/vine/android/ChannelsListFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3, v2}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->setChannelImage(Lco/vine/android/ChannelsListFragment$ChannelViewHolder;Landroid/graphics/Bitmap;)V

    :goto_61
    return-void

    :cond_62
    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-virtual {v3}, Lco/vine/android/ChannelsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_33

    :cond_73
    const/16 v3, 0x9

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_7a
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->setChannelImage(Lco/vine/android/ChannelsListFragment$ChannelViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_61
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;

    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->this$0:Lco/vine/android/ChannelsListFragment;

    invoke-direct {v0, v3, v2}, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;-><init>(Lco/vine/android/ChannelsListFragment;Landroid/view/View;)V

    iget-object v3, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public declared-synchronized setChannelImages(Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;

    if-nez v0, :cond_27

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_c

    :catchall_24
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_27
    :try_start_27
    iget-object v6, v0, Lco/vine/android/ChannelsListFragment$ChannelViewHolder;->channelImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6}, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->setChannelImage(Lco/vine/android/ChannelsListFragment$ChannelViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_3d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lco/vine/android/ChannelsListFragment$ChannelsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_24

    goto :goto_41

    :cond_53
    monitor-exit p0

    return-void
.end method
