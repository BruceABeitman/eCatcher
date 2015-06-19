.class public Lcom/facebook/katana/AlbumsAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/AlbumsAdapter$AlbumsQuery;
    }
.end annotation


# instance fields
.field private final mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private final mContext:Landroid/content/Context;

.field private final mOwner:J

.field private final mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/katana/binding/AppSession;)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    sget-object v3, Lcom/facebook/katana/AlbumsAdapter$AlbumsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/katana/AlbumsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/AlbumsAdapter;->mOwner:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/AlbumsAdapter;->mViewHolders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20

    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/katana/ViewHolder;

    invoke-virtual {v15, v6}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-eqz v12, :cond_63

    const/4 v2, 0x0

    array-length v3, v12

    invoke-static {v12, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v2, v15, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_26
    const v2, 0x7f0b0003

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v2, 0x6

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b000a

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-nez v9, :cond_97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_5f
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_63
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8f

    iget-object v2, v15, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mOwner:J

    move-wide v4, v0

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/katana/binding/AppSession;->downloadAlbumThumbail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_26

    :cond_8f
    iget-object v2, v15, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26

    :cond_97
    const/4 v2, 0x1

    if-ne v9, v2, :cond_a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_5f

    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x7f080016

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_5f
.end method

.method public getAlbumId(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumSize(Landroid/database/Cursor;)I
    .registers 3

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v3, p0, Lcom/facebook/katana/AlbumsAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f0b0002

    invoke-direct {v2, v1, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/facebook/katana/AlbumsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
