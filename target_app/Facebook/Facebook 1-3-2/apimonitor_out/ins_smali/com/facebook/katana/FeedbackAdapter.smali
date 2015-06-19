.class public Lcom/facebook/katana/FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedbackAdapter.java"
.implements Landroid/widget/AbsListView$RecyclerListener;
.field private final mContext:Landroid/content/Context;
.field private mGetCommentsPending:Z
.field private final mItems:Ljava/util/List;
.field private final mLikeClickListener:Landroid/view/View$OnClickListener;
.field private mLikeName:Ljava/lang/String;
.field private mLikePending:Z
.field private mLikeUserId:J
.field private final mMediaItemClickListener:Landroid/view/View$OnClickListener;
.field private final mNoAvatarBitmap:Landroid/graphics/Bitmap;
.field private final mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
.field private final mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
.field private final mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
.field private final mPost:Lcom/facebook/katana/service/api/FacebookPost;
.field private final mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/service/api/FacebookPost;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;ZLcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
.registers 16
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const-wide/16 v6, -0x1
iput-wide v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
iput-object p1, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
iput-object p4, p0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
iput-object p5, p0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0200bd
invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v6
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0200bc
invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v6
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0200b3
invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v6
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->buildItems()V
new-instance v6, Lcom/facebook/katana/FeedbackAdapter$1;
invoke-direct {v6, p0, p7}, Lcom/facebook/katana/FeedbackAdapter$1;-><init>(Lcom/facebook/katana/FeedbackAdapter;Lcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
new-instance v6, Lcom/facebook/katana/FeedbackAdapter$2;
invoke-direct {v6, p0, p7}, Lcom/facebook/katana/FeedbackAdapter$2;-><init>(Lcom/facebook/katana/FeedbackAdapter;Lcom/facebook/katana/FeedbackAdapter$CommentsListener;)V
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeClickListener:Landroid/view/View$OnClickListener;
iput-boolean p6, p0, Lcom/facebook/katana/FeedbackAdapter;->mGetCommentsPending:Z
invoke-virtual {p2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
invoke-virtual {p3}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v6
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->doesUserLike()Z
move-result v7
if-eqz v7, :cond_8b
const/4 v7, 0x1
:goto_6f
sub-int v2, v6, v7
const/4 v6, 0x1
if-ne v2, v6, :cond_8a
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getFriendUserId()J
move-result-wide v0
const-wide/16 v6, -0x1
cmp-long v6, v0, v6
if-eqz v6, :cond_8d
invoke-static {p1, v0, v1}, Lcom/facebook/katana/FeedbackAdapter;->readNameFromContentProvider(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v6
iput-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
if-nez v6, :cond_8a
iput-wide v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
:cond_8a
:goto_8a
return-void
:cond_8b
const/4 v7, 0x0
goto :goto_6f
:cond_8d
invoke-virtual {p3}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
move-result-object v6
invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getSampleUserId()J
move-result-wide v4
const-wide/16 v6, -0x1
cmp-long v6, v4, v6
if-eqz v6, :cond_8a
iput-wide v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
goto :goto_8a
.end method
.method static synthetic access$0(Lcom/facebook/katana/FeedbackAdapter;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/FeedbackAdapter;)Lcom/facebook/katana/service/api/FacebookPost;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
return-object v0
.end method
.method private buildStatus()Landroid/text/Spannable;
.registers 9
const/16 v7, 0x21
const/4 v6, 0x0
new-instance v1, Landroid/text/SpannableStringBuilder;
iget-object v3, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v2
if-eqz v2, :cond_27
const-string v3, " > "
invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_27
invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
iget-object v3, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_42
const/16 v3, 0x20
invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_42
new-instance v3, Landroid/text/style/StyleSpan;
const/4 v4, 0x1
invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v1, v3, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
new-instance v3, Landroid/text/style/ForegroundColorSpan;
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f070007
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v1, v3, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
return-object v1
.end method
.method private static readNameFromContentProvider(Landroid/content/Context;J)Ljava/lang/String;
.registers 12
const/4 v8, 0x0
const/4 v3, 0x0
const/4 v7, 0x0
sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const-string v4, "display_name"
aput-object v4, v2, v8
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
:cond_24
invoke-interface {v6}, Landroid/database/Cursor;->close()V
return-object v7
.end method
.method public addCommentComplete()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->refresh()V
return-void
.end method
.method public addLikeComplete(I)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
const/16 v0, 0xc8
if-ne p1, v0, :cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->refresh()V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
goto :goto_a
.end method
.method protected buildItems()V
.registers 11
const/16 v9, 0x1e
const/4 v8, 0x1
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->clear()V
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v4
packed-switch v4, :pswitch_data_a8
:cond_11
:goto_11
return-void
:pswitch_12
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$PostItem;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
const/4 v7, 0x0
invoke-direct {v5, v6, v7}, Lcom/facebook/katana/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_1f
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$Item;
const/16 v6, 0x20
invoke-direct {v5, v6}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getCount()I
move-result v1
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getTotalCount()I
move-result v3
if-lez v1, :cond_9a
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getComments()Ljava/util/List;
move-result-object v0
const/4 v2, 0x0
:goto_4c
if-ge v2, v1, :cond_11
if-ne v2, v8, :cond_5c
if-ge v1, v3, :cond_5c
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$Item;
invoke-direct {v5, v9}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5c
iget-object v5, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v6, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
iget-object v7, p0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookPost$Comment;
invoke-direct {v6, v7, v4}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;-><init>(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_4c
:pswitch_71
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$PostItem;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
const/4 v7, 0x3
invoke-direct {v5, v6, v7}, Lcom/facebook/katana/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1f
:pswitch_7f
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$PostItem;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
const/4 v7, 0x2
invoke-direct {v5, v6, v7}, Lcom/facebook/katana/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1f
:pswitch_8d
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$PostItem;
iget-object v6, p0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
invoke-direct {v5, v6, v8}, Lcom/facebook/katana/FeedbackAdapter$PostItem;-><init>(Lcom/facebook/katana/service/api/FacebookPost;I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1f
:cond_9a
if-lez v3, :cond_11
iget-object v4, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/FeedbackAdapter$Item;
invoke-direct {v5, v9}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_11
:pswitch_data_a8
.packed-switch 0x0
:pswitch_12
:pswitch_7f
:pswitch_8d
:pswitch_71
.end packed-switch
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemByPosition(I)Lcom/facebook/katana/FeedbackAdapter$Item;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/FeedbackAdapter$Item;
return-object p0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$Item;
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter$Item;->getType()I
move-result v1
sparse-switch v1, :sswitch_data_20
move v1, v2
:goto_11
return v1
:sswitch_12
move v1, v2
goto :goto_11
:sswitch_14
const/4 v1, 0x1
goto :goto_11
:sswitch_16
const/4 v1, 0x2
goto :goto_11
:sswitch_18
const/4 v1, 0x3
goto :goto_11
:sswitch_1a
const/4 v1, 0x4
goto :goto_11
:sswitch_1c
const/4 v1, 0x5
goto :goto_11
:sswitch_1e
const/4 v1, 0x6
goto :goto_11
:sswitch_data_20
.sparse-switch
0x0 -> :sswitch_12
0x1 -> :sswitch_14
0x2 -> :sswitch_18
0x3 -> :sswitch_16
0x1e -> :sswitch_1a
0x1f -> :sswitch_1c
0x20 -> :sswitch_1e
.end sparse-switch
.end method
.method public getLikeUserId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 43
const/16 v25, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mItems:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/facebook/katana/FeedbackAdapter$Item;
const/16 v31, 0x0
if-nez p2, :cond_423
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const-string v33, "layout_inflater"
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v30
check-cast v30, Landroid/view/LayoutInflater;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/FeedbackAdapter$Item;->getType()I
move-result v32
sparse-switch v32, :sswitch_data_da2
:goto_2b
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/FeedbackAdapter$Item;->getType()I
move-result v32
sparse-switch v32, :sswitch_data_dc0
:goto_32
return-object v25
:sswitch_33
const v32, 0x7f030040
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
new-instance v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-direct/range {v31 .. v31}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;-><init>()V
const v32, 0x7f0b004b
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v32, 0x7f0b004c
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v32, 0x7f0b0053
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v25
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:sswitch_d2
const v32, 0x7f030031
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
new-instance v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-direct/range {v31 .. v31}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;-><init>()V
const v32, 0x7f0b004b
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v32, 0x7f0b004c
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v32, 0x7f0b0053
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v32, 0x7f0b004f
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v32, 0x7f0b0050
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
const v34, 0x7f0b0088
move-object/from16 v0, v25
move/from16 v1, v34
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
const v34, 0x7f0b0089
move-object/from16 v0, v25
move/from16 v1, v34
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
const v34, 0x7f0b008a
move-object/from16 v0, v25
move/from16 v1, v34
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v32, v33
move-object/from16 v0, v25
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:sswitch_1a8
const v32, 0x7f03004e
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
new-instance v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-direct/range {v31 .. v31}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;-><init>()V
const v32, 0x7f0b004b
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v32, 0x7f0b004c
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v32, 0x7f0b0053
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v32, 0x7f0b004f
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v32, 0x7f0b0050
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const v32, 0x7f0b0051
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
const v34, 0x7f0b004e
move-object/from16 v0, v25
move/from16 v1, v34
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v25
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:sswitch_273
const v32, 0x7f03001e
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
new-instance v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-direct/range {v31 .. v31}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;-><init>()V
const v32, 0x7f0b004b
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v32, 0x7f0b004c
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v32, 0x7f0b0053
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v32, 0x7f0b004f
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v32, 0x7f0b0050
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const v32, 0x7f0b0051
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
const v34, 0x7f0b004e
move-object/from16 v0, v25
move/from16 v1, v34
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v32, v33
const v32, 0x7f0b0052
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v32
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v25
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:sswitch_34f
const v32, 0x7f03002a
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
goto/16 :goto_2b
:sswitch_360
const v32, 0x7f030003
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
new-instance v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-direct/range {v31 .. v31}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;-><init>()V
const v32, 0x7f0b000c
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v32, 0x7f0b000f
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v32, 0x7f0b000e
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v32, 0x7f0b000d
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const/16 v32, 0x0
move-object/from16 v0, v32
move-object/from16 v1, v31
iput-object v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
const/16 v34, 0x0
aput-object v34, v32, v33
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
const/16 v34, 0x0
aput-object v34, v32, v33
const/16 v32, 0x0
move/from16 v0, v32
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
move-object/from16 v0, v25
move-object/from16 v1, v31
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v31
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:sswitch_412
const v32, 0x7f03001d
const/16 v33, 0x0
move-object/from16 v0, v30
move/from16 v1, v32
move-object/from16 v2, v33
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v25
goto/16 :goto_2b
:cond_423
move-object/from16 v25, p2
invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v31
check-cast v31, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
goto/16 :goto_2b
:sswitch_42d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v32
move-wide/from16 v0, v32
move-object/from16 v2, v31
iput-wide v0, v2, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v34, v0
invoke-virtual/range {v34 .. v34}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v36, v0
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v36
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v36
invoke-virtual/range {v32 .. v36}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_4bc
move-object/from16 v32, v5
:goto_46e
move-object v0, v14
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v28
check-cast v28, Landroid/text/Spannable;
if-eqz v28, :cond_4c3
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_48f
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
sget-object v34, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v35, v0
invoke-virtual/range {v35 .. v35}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v35
const-wide/16 v37, 0x3e8
mul-long v35, v35, v37
invoke-static/range {v33 .. v36}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v32, 0x0
move/from16 v0, v32
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
goto/16 :goto_32
:cond_4bc
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto :goto_46e
:cond_4c3
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/FeedbackAdapter;->buildStatus()Landroid/text/Spannable;
move-result-object v28
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto :goto_48f
:sswitch_4e2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v32
move-wide/from16 v0, v32
move-object/from16 v2, v31
iput-wide v0, v2, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v34, v0
invoke-virtual/range {v34 .. v34}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v36, v0
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v36
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v36
invoke-virtual/range {v32 .. v36}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_5ca
move-object/from16 v32, v5
:goto_523
move-object v0, v14
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v28
check-cast v28, Landroid/text/Spannable;
if-eqz v28, :cond_5d2
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_544
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v12
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_5f2
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_5f2
const/16 v32, 0x0
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
move-object v0, v4
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_56d
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v3, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_5fc
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_5fc
const/16 v32, 0x0
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_589
const/4 v15, 0x0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v32
invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v32
:goto_592
invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z
move-result v33
if-nez v33, :cond_605
move v0, v15
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
move v13, v15
:goto_59e
const/16 v32, 0x3
move v0, v13
move/from16 v1, v32
if-lt v0, v1, :cond_732
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
sget-object v34, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v35, v0
invoke-virtual/range {v35 .. v35}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v35
const-wide/16 v37, 0x3e8
mul-long v35, v35, v37
invoke-static/range {v33 .. v36}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_32
:cond_5ca
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto/16 :goto_523
:cond_5d2
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/FeedbackAdapter;->buildStatus()Landroid/text/Spannable;
move-result-object v28
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_544
:cond_5f2
const/16 v32, 0x8
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_56d
:cond_5fc
const/16 v32, 0x8
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_589
:cond_605
invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-virtual/range {v22 .. v22}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v26
packed-switch v15, :pswitch_data_dde
:goto_612
add-int/lit8 v15, v15, 0x1
goto/16 :goto_592
:pswitch_616
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v33, v0
const/16 v34, 0x0
aget-object v17, v33, v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v33, v0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, v17
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
if-eqz v26, :cond_66a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v34, v0
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v27
if-eqz v27, :cond_663
move-object/from16 v33, v27
:goto_650
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_657
const/16 v33, 0x0
move-object/from16 v0, v31
move/from16 v1, v33
move-object/from16 v2, v26
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$1(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;ILjava/lang/String;)V
goto :goto_612
:cond_663
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v33, v0
goto :goto_650
:cond_66a
const/16 v33, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_657
:pswitch_674
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v33, v0
const/16 v34, 0x1
aget-object v17, v33, v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v33, v0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, v17
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
if-eqz v26, :cond_6c9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v34, v0
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v27
if-eqz v27, :cond_6c2
move-object/from16 v33, v27
:goto_6ae
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_6b5
const/16 v33, 0x1
move-object/from16 v0, v31
move/from16 v1, v33
move-object/from16 v2, v26
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$1(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;ILjava/lang/String;)V
goto/16 :goto_612
:cond_6c2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v33, v0
goto :goto_6ae
:cond_6c9
const/16 v33, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_6b5
:pswitch_6d3
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v33, v0
const/16 v34, 0x2
aget-object v17, v33, v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v33, v0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, v17
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
if-eqz v26, :cond_728
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v34, v0
move-object/from16 v0, v33
move-object/from16 v1, v34
move-object/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v27
if-eqz v27, :cond_721
move-object/from16 v33, v27
:goto_70d
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_714
const/16 v33, 0x2
move-object/from16 v0, v31
move/from16 v1, v33
move-object/from16 v2, v26
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$1(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;ILjava/lang/String;)V
goto/16 :goto_612
:cond_721
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v33, v0
goto :goto_70d
:cond_728
const/16 v33, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_714
:cond_732
packed-switch v13, :pswitch_data_de8
:goto_735
add-int/lit8 v13, v13, 0x1
goto/16 :goto_59e
:pswitch_739
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
aget-object v32, v32, v33
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_735
:pswitch_749
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x1
aget-object v32, v32, v33
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_735
:pswitch_759
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x2
aget-object v32, v32, v33
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_735
:sswitch_769
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v32
move-wide/from16 v0, v32
move-object/from16 v2, v31
iput-wide v0, v2, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v34, v0
invoke-virtual/range {v34 .. v34}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v36, v0
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v36
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v36
invoke-virtual/range {v32 .. v36}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_8b7
move-object/from16 v32, v5
:goto_7aa
move-object v0, v14
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v28
check-cast v28, Landroid/text/Spannable;
if-eqz v28, :cond_8bf
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_7cb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v12
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v32
const/16 v33, 0x0
invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
aget-object v17, v32, v33
move-object/from16 v0, v17
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual/range {v22 .. v22}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v26
if-eqz v26, :cond_8e7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, v32
move-object/from16 v1, v33
move-object/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v24
if-eqz v24, :cond_8df
move-object/from16 v32, v24
:goto_812
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_819
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v32, v0
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v32, 0x0
move-object/from16 v0, v31
move/from16 v1, v32
move-object/from16 v2, v26
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$1(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;ILjava/lang/String;)V
const/16 v32, 0x1
move/from16 v0, v32
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_8f2
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_8f2
const/16 v32, 0x0
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
move-object v0, v4
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_858
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v3, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_8fc
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_8fc
const/16 v32, 0x0
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_874
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v32
if-eqz v32, :cond_906
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_892
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
sget-object v34, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v35, v0
invoke-virtual/range {v35 .. v35}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v35
const-wide/16 v37, 0x3e8
mul-long v35, v35, v37
invoke-static/range {v33 .. v36}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_32
:cond_8b7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto/16 :goto_7aa
:cond_8bf
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/FeedbackAdapter;->buildStatus()Landroid/text/Spannable;
move-result-object v28
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_7cb
:cond_8df
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto/16 :goto_812
:cond_8e7
const/16 v32, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_819
:cond_8f2
const/16 v32, 0x8
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_858
:cond_8fc
const/16 v32, 0x8
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_874
:cond_906
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
const/16 v33, 0x8
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_892
:sswitch_912
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v32
move-wide/from16 v0, v32
move-object/from16 v2, v31
iput-wide v0, v2, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v34, v0
invoke-virtual/range {v34 .. v34}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v36, v0
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v36
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v36
invoke-virtual/range {v32 .. v36}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_a7e
move-object/from16 v32, v5
:goto_953
move-object v0, v14
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v28
check-cast v28, Landroid/text/Spannable;
if-eqz v28, :cond_a86
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_974
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoViews:[Landroid/widget/ImageView;
move-object/from16 v32, v0
const/16 v33, 0x0
aget-object v17, v32, v33
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v12
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v32
invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I
move-result v32
if-lez v32, :cond_ab9
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v32, v0
const/16 v33, 0x8
invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v32
const/16 v33, 0x0
invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
move-object/from16 v0, v17
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual/range {v22 .. v22}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v26
if-eqz v26, :cond_aae
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
move-object/from16 v0, v32
move-object/from16 v1, v33
move-object/from16 v2, v26
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v24
if-eqz v24, :cond_aa6
move-object/from16 v32, v24
:goto_9d0
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_9d7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v32, v0
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v32, 0x0
move-object/from16 v0, v17
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
const/16 v32, 0x0
move-object/from16 v0, v31
move/from16 v1, v32
move-object/from16 v2, v26
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$1(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;ILjava/lang/String;)V
const/16 v32, 0x1
move/from16 v0, v32
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
:goto_a00
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_ad7
invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_ad7
const/16 v32, 0x0
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
move-object v0, v4
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_a1f
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v3, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_ae1
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_ae1
const/16 v32, 0x0
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_a3b
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v32
if-eqz v32, :cond_aeb
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
invoke-virtual {v12}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_a59
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
sget-object v34, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v35, v0
invoke-virtual/range {v35 .. v35}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v35
const-wide/16 v37, 0x3e8
mul-long v35, v35, v37
invoke-static/range {v33 .. v36}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_32
:cond_a7e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto/16 :goto_953
:cond_a86
invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/FeedbackAdapter;->buildStatus()Landroid/text/Spannable;
move-result-object v28
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
move-object/from16 v0, v32
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_974
:cond_aa6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto/16 :goto_9d0
:cond_aae
const/16 v32, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_9d7
:cond_ab9
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v32, v0
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V
const/16 v32, 0x8
move-object/from16 v0, v17
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
const/16 v32, 0x0
move/from16 v0, v32
move-object/from16 v1, v31
iput v0, v1, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mPhotoCount:I
goto/16 :goto_a00
:cond_ad7
const/16 v32, 0x8
move-object v0, v4
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_a1f
:cond_ae1
const/16 v32, 0x8
move-object v0, v3
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_a3b
:cond_aeb
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v32, v0
const/16 v33, 0x8
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_a59
:sswitch_af8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v32
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getTotalCount()I
move-result v29
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v32
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getCount()I
move-result v10
if-lez v10, :cond_b4e
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mGetCommentsPending:Z
move/from16 v32, v0
if-eqz v32, :cond_b40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f08013b
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
:goto_b2b
const v32, 0x7f0b0078
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
move-object/from16 v0, p0
move-object v1, v11
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_32
:cond_b40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080156
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
goto :goto_b2b
:cond_b4e
if-lez v29, :cond_b74
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mGetCommentsPending:Z
move/from16 v32, v0
if-eqz v32, :cond_b66
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080139
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
goto :goto_b2b
:cond_b66
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080155
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
goto :goto_b2b
:cond_b74
const/4 v11, 0x0
goto :goto_b2b
:sswitch_b76
move-object/from16 v0, v16
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;
move-object v8, v0
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v14, v0
invoke-virtual {v8}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v32
move-wide/from16 v0, v32
move-object/from16 v2, v31
iput-wide v0, v2, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v32, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v33, v0
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getFromUserId()J
move-result-wide v34
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v36
invoke-virtual/range {v36 .. v36}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v36
invoke-virtual/range {v32 .. v36}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v5
if-eqz v5, :cond_be1
move-object/from16 v32, v5
:goto_bae
move-object v0, v14
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object/from16 v32, v0
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v33
invoke-virtual/range {v33 .. v33}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getText()Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v31
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v32, v0
invoke-virtual {v8}, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->getTime()Ljava/lang/String;
move-result-object v33
invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_32
:cond_be1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v32, v0
goto :goto_bae
:sswitch_be8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mPost:Lcom/facebook/katana/service/api/FacebookPost;
move-object/from16 v32, v0
invoke-virtual/range {v32 .. v32}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
move-result-object v20
const v32, 0x7f0b0049
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/ToggleButton;
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->canLike()Z
move-result v32
if-eqz v32, :cond_c96
const/16 v32, 0x0
:goto_c07
move-object v0, v6
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikeClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v32, v0
move-object v0, v6
move-object/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->doesUserLike()Z
move-result v32
if-eqz v32, :cond_c9a
const/16 v32, 0x0
:goto_c21
move-object v0, v6
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
move/from16 v32, v0
if-eqz v32, :cond_c9d
const/16 v32, 0x0
move-object v0, v6
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V
const v32, 0x7f0b004a
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v32
const/16 v33, 0x0
invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V
:goto_c47
const v32, 0x7f0b0048
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v21
check-cast v21, Landroid/widget/TextView;
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->doesUserLike()Z
move-result v32
if-eqz v32, :cond_d20
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v32
const/16 v33, 0x1
move/from16 v0, v32
move/from16 v1, v33
if-ne v0, v1, :cond_cb6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f08015e
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v19
:goto_c73
move-object/from16 v0, v21
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v32, 0x7f0b0047
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v18
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v32
if-lez v32, :cond_d97
const/16 v32, 0x0
move-object/from16 v0, v18
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_32
:cond_c96
const/16 v32, 0x8
goto/16 :goto_c07
:cond_c9a
const/16 v32, 0x1
goto :goto_c21
:cond_c9d
const/16 v32, 0x1
move-object v0, v6
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V
const v32, 0x7f0b004a
move-object/from16 v0, v25
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v32
const/16 v33, 0x8
invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setVisibility(I)V
goto :goto_c47
:cond_cb6
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v32
const/16 v33, 0x2
move/from16 v0, v32
move/from16 v1, v33
if-ne v0, v1, :cond_cf9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
move-object/from16 v32, v0
if-eqz v32, :cond_cea
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f08015c
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
move-object/from16 v36, v0
aput-object v36, v34, v35
invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
goto :goto_c73
:cond_cea
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f08015b
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v19
goto/16 :goto_c73
:cond_cf9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f08015d
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v36
const/16 v37, 0x1
sub-int v36, v36, v37
invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v36
aput-object v36, v34, v35
invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
goto/16 :goto_c73
:cond_d20
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v32
const/16 v33, 0x1
move/from16 v0, v32
move/from16 v1, v33
if-ne v0, v1, :cond_d64
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
move-object/from16 v32, v0
if-eqz v32, :cond_d55
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080142
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
move-object/from16 v36, v0
aput-object v36, v34, v35
invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
goto/16 :goto_c73
:cond_d55
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080143
invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v19
goto/16 :goto_c73
:cond_d64
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v32
const/16 v33, 0x1
move/from16 v0, v32
move/from16 v1, v33
if-le v0, v1, :cond_d93
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/FeedbackAdapter;->mContext:Landroid/content/Context;
move-object/from16 v32, v0
const v33, 0x7f080144
const/16 v34, 0x1
move/from16 v0, v34
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v34, v0
const/16 v35, 0x0
invoke-virtual/range {v20 .. v20}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v36
invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v36
aput-object v36, v34, v35
invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
goto/16 :goto_c73
:cond_d93
const-string v19, ""
goto/16 :goto_c73
:cond_d97
const/16 v32, 0x8
move-object/from16 v0, v18
move/from16 v1, v32
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_32
:sswitch_data_da2
.sparse-switch
0x0 -> :sswitch_33
0x1 -> :sswitch_d2
0x2 -> :sswitch_273
0x3 -> :sswitch_1a8
0x1e -> :sswitch_34f
0x1f -> :sswitch_360
0x20 -> :sswitch_412
.end sparse-switch
:pswitch_data_dde
.packed-switch 0x0
:pswitch_616
:pswitch_674
:pswitch_6d3
.end packed-switch
:sswitch_data_dc0
.sparse-switch
0x0 -> :sswitch_42d
0x1 -> :sswitch_4e2
0x2 -> :sswitch_912
0x3 -> :sswitch_769
0x1e -> :sswitch_af8
0x1f -> :sswitch_b76
0x20 -> :sswitch_be8
.end sparse-switch
:pswitch_data_de8
.packed-switch 0x0
:pswitch_739
:pswitch_749
:pswitch_759
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x7
return v0
.end method
.method public onMovedToScrapHeap(Landroid/view/View;)V
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
if-eqz v1, :cond_d
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
invoke-virtual {v0}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->detach()V
:cond_d
return-void
.end method
.method public refresh()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->buildItems()V
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public removeCommentComplete()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->refresh()V
return-void
.end method
.method public removeLikeComplete(I)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikePending:Z
const/16 v0, 0xc8
if-ne p1, v0, :cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->refresh()V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
goto :goto_a
.end method
.method public requestCommentsComplete(I)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mGetCommentsPending:Z
const/16 v0, 0xc8
if-ne p1, v0, :cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->refresh()V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
goto :goto_a
.end method
.method public requestMoreComments()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mGetCommentsPending:Z
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public updateLikeUserName(JLjava/lang/String;)V
.registers 6
iget-wide v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
cmp-long v0, p1, v0
if-nez v0, :cond_f
iput-object p3, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeName:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/facebook/katana/FeedbackAdapter;->mLikeUserId:J
invoke-virtual {p0}, Lcom/facebook/katana/FeedbackAdapter;->notifyDataSetChanged()V
:cond_f
return-void
.end method
.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
:goto_c
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
if-eqz p1, :cond_1d
move-object v2, p1
:goto_16
invoke-virtual {v0, v2, p2}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setPhotoBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
goto :goto_c
:cond_1d
iget-object v2, p0, Lcom/facebook/katana/FeedbackAdapter;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
goto :goto_16
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 5
iget-object v1, p0, Lcom/facebook/katana/FeedbackAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;
#calls: Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->setUserImageBitmap(Lcom/facebook/katana/binding/UserImage;)V
invoke-static {v0, p1}, Lcom/facebook/katana/FeedbackAdapter$ViewHolder;->access$0(Lcom/facebook/katana/FeedbackAdapter$ViewHolder;Lcom/facebook/katana/binding/UserImage;)V
goto :goto_6
.end method