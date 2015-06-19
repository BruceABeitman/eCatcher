.class public Lco/vine/android/CommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentsAdapter.java"


# static fields
.field private static final SPAN_FLAGS:I = 0x21


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

.field private mCommentSbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/Editable;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIdToPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mListener:Lco/vine/android/widget/SpanClickListener;

.field final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/CommentViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVineGreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;)V
    .registers 9

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mCommentSbs:Ljava/util/HashMap;

    iput-object p1, p0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lco/vine/android/widget/TypefacesSpan;

    const/4 v1, 0x0

    invoke-static {p1}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    iput-object p2, p0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    iput-object p3, p0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    return-void
.end method

.method private rebuildIdToPositionMap()V
    .registers 6

    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineComment;

    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    iget-wide v3, v0, Lco/vine/android/api/VineComment;->commentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    return-void
.end method


# virtual methods
.method public addMyComment(Lco/vine/android/api/VineComment;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lco/vine/android/CommentsAdapter;->rebuildIdToPositionMap()V

    invoke-virtual {p0}, Lco/vine/android/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindView(Landroid/view/View;Lco/vine/android/api/VineComment;)V
    .registers 25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/CommentViewHolder;

    move-object/from16 v0, p2

    iget-object v15, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;

    if-nez v15, :cond_3f

    const-string v15, ""

    new-instance v17, Lco/vine/android/VineLoggingException;

    invoke-direct/range {v17 .. v17}, Lco/vine/android/VineLoggingException;-><init>()V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Username is null for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-wide v0, v0, Lco/vine/android/api/VineComment;->commentId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lco/vine/android/api/VineComment;->timestamp:J

    move-wide/from16 v19, v0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lco/vine/android/api/VineComment;->commentId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lco/vine/android/api/VineComment;->userId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v9, Lco/vine/android/CommentViewHolder;->userId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mCommentSbs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Editable;

    if-nez v4, :cond_160

    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mCommentSbs:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v4, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    new-instance v13, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v17, 0x1

    iget-wide v0, v9, Lco/vine/android/CommentViewHolder;->userId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v13, v0, v1, v2}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    const/16 v17, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v13, v0, v1, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    if-eqz v7, :cond_160

    :try_start_103
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v7, v4, v0, v1}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_116
    :goto_116
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_160

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineEntity;

    invoke-virtual {v8}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v17

    if-eqz v17, :cond_190

    new-instance v16, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v17, 0x1

    iget-wide v0, v8, Lco/vine/android/api/VineEntity;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    iget v0, v8, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v17, v0

    iget v0, v8, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v18, v0

    const/16 v19, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v4, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    :try_end_15b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_103 .. :try_end_15b} :catch_15c

    goto :goto_116

    :catch_15c
    move-exception v6

    invoke-static {v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_160
    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v14, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;

    invoke-static {v14}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c7

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v19, -0x100

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v20, v0

    or-int v19, v19, v20

    invoke-static/range {v17 .. v19}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_18f
    return-void

    :cond_190
    :try_start_190
    invoke-virtual {v8}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v17

    if-eqz v17, :cond_116

    new-instance v16, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v17, 0x3

    iget-object v0, v8, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mListener:Lco/vine/android/widget/SpanClickListener;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CommentsAdapter;->mVineGreen:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    iget v0, v8, Lco/vine/android/api/VineEntity;->start:I

    move/from16 v17, v0

    iget v0, v8, Lco/vine/android/api/VineEntity;->end:I

    move/from16 v18, v0

    const/16 v19, 0x21

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v4, v0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    :try_end_1c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_190 .. :try_end_1c5} :catch_15c

    goto/16 :goto_116

    :cond_1c7
    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v11, Lco/vine/android/util/image/ImageKey;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v11, v14, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    iput-object v11, v9, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_204

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    new-instance v18, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18f

    :cond_204
    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200f7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v9, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_18f
.end method

.method public deleteComment(J)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lco/vine/android/CommentsAdapter;->getPositionForId(J)I

    move-result v0

    iget-object v1, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lco/vine/android/CommentsAdapter;->rebuildIdToPositionMap()V

    invoke-virtual {p0}, Lco/vine/android/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineComment;

    iget-wide v0, v0, Lco/vine/android/api/VineComment;->commentId:J

    return-wide v0
.end method

.method public getPositionForId(J)I
    .registers 5

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_20
    return v0

    :cond_21
    const/4 v0, -0x1

    goto :goto_20
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lco/vine/android/CommentsAdapter;->newView()Landroid/view/View;

    move-result-object p2

    :cond_6
    invoke-virtual {p0, p1}, Lco/vine/android/CommentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineComment;

    invoke-virtual {p0, p2, v0}, Lco/vine/android/CommentsAdapter;->bindView(Landroid/view/View;Lco/vine/android/api/VineComment;)V

    return-object p2
.end method

.method public mergeComments(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineComment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/CommentsAdapter;->mComments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0}, Lco/vine/android/CommentsAdapter;->rebuildIdToPositionMap()V

    invoke-virtual {p0}, Lco/vine/android/CommentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public newView()Landroid/view/View;
    .registers 7

    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030025

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v0, Lco/vine/android/CommentViewHolder;

    invoke-direct {v0}, Lco/vine/android/CommentViewHolder;-><init>()V

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    const v2, 0x7f0a0061

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    iget-object v2, v0, Lco/vine/android/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lco/vine/android/CommentViewHolder;->timestamp:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public updateProfileImages(Ljava/util/HashMap;)V
    .registers 12
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_d
    if-ltz v0, :cond_46

    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/CommentViewHolder;

    if-nez v4, :cond_25

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_25
    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_22

    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->imageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_22

    iget-object v6, v4, Lco/vine/android/CommentViewHolder;->profileImage:Landroid/widget/ImageView;

    new-instance v7, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v8, p0, Lco/vine/android/CommentsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v9}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22

    :cond_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lco/vine/android/CommentsAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_5c
    return-void
.end method
