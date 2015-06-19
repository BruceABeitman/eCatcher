.class public Lcom/facebook/katana/MailboxMessagesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/MailboxMessagesAdapter$MessageQuery;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

.field private final mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;

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
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/UserSelectionListener;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mViewHolders:Ljava/util/List;

    iput-object p4, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;

    new-instance v0, Lcom/facebook/katana/MailboxMessagesAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/MailboxMessagesAdapter$1;-><init>(Lcom/facebook/katana/MailboxMessagesAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/MailboxMessagesAdapter;)Lcom/facebook/katana/UserSelectionListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 19

    const/4 v9, 0x1

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/ViewHolder;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    const/4 v9, 0x6

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    const/4 v9, 0x4

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    iget-object v9, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f080050

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_32
    const v9, 0x7f0b005c

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const/4 v11, 0x2

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f0b005d

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0b005e

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v9, 0x3

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x7

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_95

    const/4 v9, 0x5

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_95
    if-eqz v5, :cond_b9

    iget-object v9, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    iget-object v10, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v6, v7, v5}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b0

    iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_a6
    iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_b0
    iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v10, 0x7f0200b3

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a6

    :cond_b9
    iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v10, 0x7f0200b3

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a6
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/katana/MailboxMessagesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_8

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

    iget-object v3, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030022

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f0b005b

    invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesAdapter;->mViewHolders:Ljava/util/List;

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
