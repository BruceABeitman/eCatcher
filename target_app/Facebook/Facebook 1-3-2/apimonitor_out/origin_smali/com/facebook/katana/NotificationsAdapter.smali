.class public Lcom/facebook/katana/NotificationsAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/NotificationsAdapter$NotificationsQuery;
    }
.end annotation


# static fields
.field private static final COMMENTS_APP_ID:J = 0x494c27427L

.field private static final LIKE_APP_ID:J = 0x8fa5a3c6L

.field private static final PHOTO_COMMENTS_APP_ID:J = 0x8967ab9cL

.field private static final WALL_APP_ID:J = 0xa2151494L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNameSpan:Landroid/text/style/TextAppearanceSpan;

.field private final mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

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
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/facebook/katana/NotificationsAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/NotificationsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/NotificationsAdapter;->mViewHolders:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/katana/NotificationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v0, 0x4160

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v3, v0

    const v0, 0x7f070007

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/facebook/katana/NotificationsAdapter;->mNameSpan:Landroid/text/style/TextAppearanceSpan;

    return-void
.end method

.method private buildTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 8

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_10

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/facebook/katana/NotificationsAdapter;->mNameSpan:Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 26

    const/16 v16, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c9

    const/16 v16, 0x1

    move/from16 v9, v16

    :goto_16
    if-eqz v9, :cond_cf

    const v16, 0x7f02000f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/katana/ViewHolder;

    const/16 v16, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide v16, 0x494c27427L

    cmp-long v16, v4, v16

    if-nez v16, :cond_db

    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f02006d

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_46
    const/16 v16, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v16, 0x7f0b007a

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v10, :cond_16e

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/NotificationsAdapter;->buildTitle(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/NotificationsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v17, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    const/16 v18, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-static/range {v16 .. v19}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v11

    const v16, 0x7f0b007b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v16, 0x7f0b007c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v16, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_173

    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c8
    return-void

    :cond_c9
    const/16 v16, 0x0

    move/from16 v9, v16

    goto/16 :goto_16

    :cond_cf
    const v16, 0x7f0200e1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_22

    :cond_db
    const-wide v16, 0x8967ab9cL

    cmp-long v16, v4, v16

    if-nez v16, :cond_f1

    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f02006d

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_46

    :cond_f1
    const-wide v16, 0x8fa5a3c6L

    cmp-long v16, v4, v16

    if-nez v16, :cond_107

    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f020077

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_46

    :cond_107
    const-wide v16, 0xa2151494L

    cmp-long v16, v4, v16

    if-nez v16, :cond_11d

    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f020088

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_46

    :cond_11d
    const/16 v16, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    if-eqz v14, :cond_161

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/NotificationsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/NotificationsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_154

    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_46

    :cond_154
    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f02008e

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_46

    :cond_161
    move-object v0, v15

    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x7f02008e

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_46

    :cond_16e
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_77

    :cond_173
    const/16 v16, 0x8

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c8
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

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

    iget-object v3, p0, Lcom/facebook/katana/NotificationsAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f0b002e

    invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/facebook/katana/NotificationsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/NotificationsAdapter;->mViewHolders:Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6
.end method
