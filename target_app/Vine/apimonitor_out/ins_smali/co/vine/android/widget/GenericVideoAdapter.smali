.class public abstract Lco/vine/android/widget/GenericVideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "GenericVideoAdapter.java"
.field protected static final COMMENT_TYPE_FEW:I = 0x1
.field protected static final COMMENT_TYPE_MANY:I = 0x2
.field private static final HQ_THRESHOLD:I = 0xc8
.field protected static final INTERPUNCT:C = '\u00b7'
.field protected static final MAX_COMMENT_ITEMS:I = 0x3
.field protected static final SPACE:C = ' '
.field protected static final SPAN_FLAGS:I = 0x21
.field protected final mAppController:Lco/vine/android/client/AppController;
.field protected final mAvatars:Landroid/util/SparseArray;
.field protected final mBoldSpan:Lco/vine/android/widget/TypefacesSpan;
.field protected final mContext:Landroid/content/Context;
.field protected final mDimen:I
.field protected final mDismissedWarnings:Ljava/util/HashSet;
.field protected final mFollowEventSource:Ljava/lang/String;
.field protected mIconsSwitched:Z
.field protected mLikeCache:Lco/vine/android/LikeCache;
.field protected mLoadingTimeTag:Ljava/lang/String;
.field private mNormalVideoPlayable:Ljava/lang/Boolean;
.field protected mProfileColor:I
.field private mProfileImageSize:I
.field protected mRevineCache:Lco/vine/android/RevineCache;
.field protected final mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
.field protected mStartLoadingTime:J
.field protected final mThumbnails:Landroid/util/SparseArray;
.field protected final mViewClickListener:Landroid/view/View$OnClickListener;
.field protected final mViewHolders:Ljava/util/ArrayList;
.field protected mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
.field private final mVineGray:I
.field private final mVineGreen:I
.method public constructor <init>(Landroid/app/Activity;Lco/vine/android/LikeCache;Lco/vine/android/RevineCache;Landroid/view/View$OnClickListener;Lco/vine/android/widget/SpanClickListener;Ljava/lang/String;)V
.registers 14
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object p1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-static {p1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v2
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
iput-object p4, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewClickListener:Landroid/view/View$OnClickListener;
iput-object p5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
new-instance v2, Lco/vine/android/widget/TypefacesSpan;
const/4 v3, 0x0
iget-object v4, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-static {v4}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v4
const/4 v5, 0x1
const/4 v6, 0x3
invoke-virtual {v4, v5, v6}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;
move-result-object v4
invoke-direct {v2, v3, v4}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
iput-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mDismissedWarnings:Ljava/util/HashSet;
invoke-static {p1}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v1
iget v2, v1, Landroid/graphics/Point;->x:I
iput v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mDimen:I
iput-object p2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mLikeCache:Lco/vine/android/LikeCache;
iput-object p3, p0, Lco/vine/android/widget/GenericVideoAdapter;->mRevineCache:Lco/vine/android/RevineCache;
iput-object p6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mFollowEventSource:Ljava/lang/String;
const v2, 0x7f0b0087
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v2
iput v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileImageSize:I
const v2, 0x7f090096
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
iput v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGreen:I
const v2, 0x7f090018
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
iput v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGray:I
iget v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGreen:I
iput v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
return-void
.end method
.method protected bindAvatar(Lco/vine/android/widget/GenericFeedViewHolder;)V
.registers 11
iget-object v3, p1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v2, p1, Lco/vine/android/widget/GenericFeedViewHolder;->position:I
iget-object v4, p1, Lco/vine/android/widget/GenericFeedViewHolder;->userImage:Landroid/widget/ImageView;
iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
if-eqz v5, :cond_1f
iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
invoke-static {v5}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_28
invoke-virtual {v3}, Lco/vine/android/api/VinePost;->isRevined()Z
move-result v5
if-eqz v5, :cond_20
sget-object v5, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;
iget v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGreen:I
invoke-static {v4, v5, v6}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
:goto_1f
:cond_1f
return-void
:cond_20
sget-object v5, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;
iget v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
invoke-static {v4, v5, v6}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
goto :goto_1f
:cond_28
new-instance v1, Lco/vine/android/util/image/ImageKey;
iget-object v5, v3, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
iget v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileImageSize:I
iget v7, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileImageSize:I
const/4 v8, 0x1
invoke-direct {v1, v5, v6, v7, v8}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_44
invoke-virtual {p0, v4, v0}, Lco/vine/android/widget/GenericVideoAdapter;->setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
:goto_41
iput-object v1, p1, Lco/vine/android/widget/GenericFeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;
goto :goto_1f
:cond_44
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v5
invoke-virtual {p0, v4, v5}, Lco/vine/android/widget/GenericVideoAdapter;->setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
goto :goto_41
.end method
.method protected declared-synchronized bindVideoImage(Lco/vine/android/widget/GenericFeedViewHolder;)Z
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
monitor-enter p0
:try_start_3
iget-object v2, p1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v1, p1, Lco/vine/android/widget/GenericFeedViewHolder;->position:I
if-eqz v2, :cond_2e
iget-object v7, v2, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
if-eqz v7, :cond_30
move v7, v5
:goto_e
iput-boolean v7, p1, Lco/vine/android/widget/GenericFeedViewHolder;->hasVideoImage:Z
invoke-virtual {v2}, Lco/vine/android/api/VinePost;->isExplicit()Z
move-result v7
if-eqz v7, :cond_32
iget-object v7, p0, Lco/vine/android/widget/GenericVideoAdapter;->mDismissedWarnings:Ljava/util/HashSet;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_32
move v0, v5
:goto_23
if-eqz v0, :cond_34
iget-object v6, p1, Lco/vine/android/widget/GenericFeedViewHolder;->sensitiveTextContainer:Landroid/widget/LinearLayout;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
invoke-virtual {p0, p1}, Lco/vine/android/widget/GenericVideoAdapter;->createSensitiveLisenter(Lco/vine/android/widget/GenericFeedViewHolder;)V
:goto_2e
:try_end_2e
.catchall {:try_start_3 .. :try_end_2e} :catchall_62
:cond_2e
monitor-exit p0
return v5
:cond_30
move v7, v6
goto :goto_e
:cond_32
move v0, v6
goto :goto_23
:cond_34
:try_start_34
invoke-virtual {p0, p1}, Lco/vine/android/widget/GenericVideoAdapter;->createInsensitiveListener(Lco/vine/android/widget/GenericFeedViewHolder;)V
iget-boolean v7, p1, Lco/vine/android/widget/GenericFeedViewHolder;->hasVideoImage:Z
if-eqz v7, :cond_2e
new-instance v3, Lco/vine/android/util/image/ImageKey;
iget-object v7, v2, Lco/vine/android/api/VinePost;->thumbnailUrl:Ljava/lang/String;
invoke-direct {v3, v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
iput-object v3, p1, Lco/vine/android/widget/GenericFeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;
iget-object v7, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/graphics/Bitmap;
if-eqz v4, :cond_65
const-string v6, "setting thumbnail for {}"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p1}, Lco/vine/android/widget/GenericFeedViewHolder;->getViewForVideoImage()Landroid/view/View;
move-result-object v6
invoke-virtual {p0, v6, v4}, Lco/vine/android/widget/GenericVideoAdapter;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;)Z
move-result v6
iput-boolean v6, p1, Lco/vine/android/widget/GenericFeedViewHolder;->isVideoImageLoaded:Z
:try_end_61
.catchall {:try_start_34 .. :try_end_61} :catchall_62
goto :goto_2e
:catchall_62
move-exception v5
monitor-exit p0
throw v5
:try_start_65
:cond_65
const-string v5, "fetching thumbnail for {}"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-static {v5, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p1}, Lco/vine/android/widget/GenericFeedViewHolder;->getViewForVideoImage()Landroid/view/View;
move-result-object v5
iget-object v7, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v7, v3}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v7
invoke-virtual {p0, v5, v7}, Lco/vine/android/widget/GenericVideoAdapter;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;)Z
move-result v5
iput-boolean v5, p1, Lco/vine/android/widget/GenericFeedViewHolder;->isVideoImageLoaded:Z
:try_end_7e
.catchall {:try_start_65 .. :try_end_7e} :catchall_62
move v5, v6
goto :goto_2e
.end method
.method protected abstract createInsensitiveListener(Lco/vine/android/widget/GenericFeedViewHolder;)V
.end method
.method protected abstract createSensitiveLisenter(Lco/vine/android/widget/GenericFeedViewHolder;)V
.end method
.method protected endLoadingTimeProfiling()V
.registers 9
const-wide/16 v6, 0x0
iget-wide v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mStartLoadingTime:J
cmp-long v2, v2, v6
if-lez v2, :cond_29
invoke-virtual {p0}, Lco/vine/android/widget/GenericVideoAdapter;->timeSinceStartLoadingTime()J
move-result-wide v2
const-wide/16 v4, 0x1f4
div-long/2addr v2, v4
long-to-float v2, v2
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
mul-int/lit16 v2, v2, 0x1f4
int-to-long v0, v2
iput-wide v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mStartLoadingTime:J
const-string v2, "Loading time for {} was {}ms."
iget-object v3, p0, Lco/vine/android/widget/GenericVideoAdapter;->mLoadingTimeTag:Ljava/lang/String;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mLoadingTimeTag:Ljava/lang/String;
invoke-static {v2, v0, v1}, Lco/vine/android/util/FlurryUtils;->trackLoadingTime(Ljava/lang/String;J)V
:cond_29
return-void
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method protected getRequestKey(Lco/vine/android/api/VinePost;Z)Lco/vine/android/util/video/VideoKey;
.registers 15
const/4 v7, 0x1
const/4 v8, 0x0
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
if-nez v6, :cond_17
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-static {v6}, Lco/vine/android/util/SystemUtil;->isNormalVideoPlayable(Landroid/content/Context;)Lco/vine/android/util/SystemUtil$PrefBooleanState;
move-result-object v6
sget-object v9, Lco/vine/android/util/SystemUtil$PrefBooleanState;->FALSE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
if-eq v6, v9, :cond_66
move v6, v7
:goto_11
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
iput-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
:cond_17
invoke-static {}, Lco/vine/android/util/video/VideoCache;->getCurrentAverageSpeed()I
move-result v0
const/16 v6, 0xc8
if-le v0, v6, :cond_68
move v2, v7
:goto_20
const-string v6, "Getting HQ Video: speed {}, hq? {} && can play normal vid {}"
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v10
iget-object v11, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
invoke-static {v6, v9, v10, v11}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
new-instance v5, Lco/vine/android/util/video/VideoKey;
iget-object v6, p1, Lco/vine/android/api/VinePost;->videoUrl:Ljava/lang/String;
invoke-direct {v5, v6}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v6
if-eqz v6, :cond_40
if-nez v2, :cond_65
:cond_40
iget-object v6, p1, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
if-eqz v6, :cond_6a
iget-object v6, p1, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_6a
move v1, v7
:goto_4d
if-nez v1, :cond_6c
const-string v6, "Low key does NOT exist: forceLowKey {}. "
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v7
iget-object v8, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
invoke-static {v6, v7, v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
if-nez p2, :cond_64
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v6
if-nez v6, :cond_65
:cond_64
const/4 v5, 0x0
:cond_65
:goto_65
return-object v5
:cond_66
move v6, v8
goto :goto_11
:cond_68
move v2, v8
goto :goto_20
:cond_6a
move v1, v8
goto :goto_4d
:cond_6c
new-instance v3, Lco/vine/android/util/video/VideoKey;
iget-object v6, p1, Lco/vine/android/api/VinePost;->videoLowURL:Ljava/lang/String;
invoke-direct {v3, v6}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V
if-nez p2, :cond_7d
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mNormalVideoPlayable:Ljava/lang/Boolean;
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v6
if-nez v6, :cond_7f
:cond_7d
move-object v5, v3
goto :goto_65
:cond_7f
iget-object v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v6, v5}, Lco/vine/android/client/AppController;->peekVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_65
move-object v5, v3
goto :goto_65
.end method
.method public getStartLoadingTime()J
.registers 3
iget-wide v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mStartLoadingTime:J
return-wide v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isPlaying()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public notifyDataSetChanged()V
.registers 2
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/widget/GenericVideoAdapter;->resetStates(Z)V
return-void
.end method
.method public onBackPressed()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onDestroy()V
.registers 1
return-void
.end method
.method public onDestroyView()V
.registers 1
return-void
.end method
.method protected onInvalidRequestKey()V
.registers 2
const-string v0, "Invalid request key."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
return-void
.end method
.method public onLowMemory()V
.registers 3
const-string v0, "onLowMemory called."
new-instance v1, Lco/vine/android/VineLoggingException;
invoke-direct {v1}, Lco/vine/android/VineLoggingException;-><init>()V
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
return-void
.end method
.method public onPause(Z)V
.registers 2
return-void
.end method
.method public onResume(Z)V
.registers 2
return-void
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 3
return-void
.end method
.method public onTrimMemory(I)V
.registers 5
const/16 v0, 0x50
if-eq p1, v0, :cond_27
const-string v0, "onTrimMemory: Adapter has cleaned it\'s bitmaps: {}, {}."
iget-object v1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget-object v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
:cond_27
return-void
.end method
.method protected onVideoImageObtained(Lco/vine/android/widget/GenericFeedViewHolder;Z)V
.registers 3
return-void
.end method
.method public onVideoPathObtained(Ljava/util/HashMap;)V
.registers 2
return-void
.end method
.method protected resetStates(Z)V
.registers 3
if-eqz p1, :cond_c
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mThumbnails:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAvatars:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
:cond_c
return-void
.end method
.method protected setImage(Landroid/view/View;Landroid/graphics/Bitmap;)Z
.registers 5
if-nez p2, :cond_14
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09007f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
const/4 v0, 0x0
:goto_13
return v0
:cond_14
new-instance v0, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, v1, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v0, 0x1
goto :goto_13
.end method
.method public setImages(Ljava/util/HashMap;)V
.registers 9
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
:cond_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_6c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/widget/GenericFeedViewHolder;
if-nez v0, :cond_23
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
iget-object v5, v0, Lco/vine/android/widget/GenericFeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;
if-eqz v5, :cond_43
iget-object v5, v0, Lco/vine/android/widget/GenericFeedViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/image/UrlImage;
if-eqz v2, :cond_43
invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v5
if-eqz v5, :cond_43
iget-object v5, v0, Lco/vine/android/widget/GenericFeedViewHolder;->userImage:Landroid/widget/ImageView;
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v5, v6}, Lco/vine/android/widget/GenericVideoAdapter;->setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
const-string v5, "found for avatar."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
:cond_43
iget-object v5, v0, Lco/vine/android/widget/GenericFeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;
if-eqz v5, :cond_b
iget-object v5, v0, Lco/vine/android/widget/GenericFeedViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/image/UrlImage;
if-eqz v2, :cond_b
invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v5
if-eqz v5, :cond_b
const-string v5, "found for video: {}"
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->url:Ljava/lang/String;
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {v0}, Lco/vine/android/widget/GenericFeedViewHolder;->getViewForVideoImage()Landroid/view/View;
move-result-object v5
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v5, v6}, Lco/vine/android/widget/GenericVideoAdapter;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;)Z
move-result v5
invoke-virtual {p0, v0, v5}, Lco/vine/android/widget/GenericVideoAdapter;->onVideoImageObtained(Lco/vine/android/widget/GenericFeedViewHolder;Z)V
goto :goto_b
:cond_6c
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
return-void
.end method
.method public setOffsetResolver(Lco/vine/android/ViewOffsetResolver;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewOffsetResolver:Lco/vine/android/ViewOffsetResolver;
return-void
.end method
.method public setProfileColor(I)V
.registers 4
sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq p1, v0, :cond_6
if-gtz p1, :cond_13
:cond_6
iget-object v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090096
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result p1
:cond_13
iget v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
if-eq v0, p1, :cond_1c
const/high16 v0, -0x100
or-int/2addr v0, p1
iput v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
:cond_1c
return-void
.end method
.method protected setStyledComments(Lco/vine/android/widget/GenericFeedViewHolder;Lco/vine/android/api/VinePagedData;)V
.registers 39
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v23
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments1:Landroid/widget/TextView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments2:Landroid/widget/TextView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments3:Landroid/widget/TextView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/GenericFeedViewHolder;->postCommentsDivider:Landroid/view/View;
move-object/from16 v21, v0
if-eqz p2, :cond_4c
invoke-virtual/range {p2 .. p2}, Lco/vine/android/api/VinePagedData;->isEmpty()Z
move-result v4
if-nez v4, :cond_4c
const/4 v4, 0x0
move-object/from16 v0, v21
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:goto_37
if-eqz p2, :cond_4b
move-object/from16 v0, p2
iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v4, :cond_4b
move-object/from16 v0, p2
iget-object v4, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-nez v4, :cond_4b
if-nez p1, :cond_54
:cond_4b
return-void
:cond_4c
const/16 v4, 0x8
move-object/from16 v0, v21
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto :goto_37
:cond_54
move-object/from16 v0, p2
iget v4, v0, Lco/vine/android/api/VinePagedData;->count:I
const/4 v5, 0x3
if-le v4, v5, :cond_1f3
const v4, 0x7f0e0245
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
move-object/from16 v0, p2
iget v8, v0, Lco/vine/android/api/VinePagedData;->count:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v5, v6
move-object/from16 v0, v23
invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
new-instance v26, Landroid/text/SpannableStringBuilder;
invoke-direct/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;-><init>()V
move-object/from16 v0, v26
invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v11, Lco/vine/android/widget/StyledClickableSpan;
const/16 v34, 0x3
new-instance v3, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v5, v4, Lco/vine/android/api/VinePost;->postId:J
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v7, v4, Lco/vine/android/api/VinePost;->userId:J
move-object/from16 v4, p0
invoke-direct/range {v3 .. v8}, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;-><init>(Lco/vine/android/widget/GenericVideoAdapter;JJ)V
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move/from16 v0, v34
invoke-direct {v11, v0, v3, v4}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGray:I
invoke-virtual {v11, v4}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/4 v4, 0x0
invoke-virtual/range {v26 .. v26}, Landroid/text/SpannableStringBuilder;->length()I
move-result v5
const/16 v6, 0x21
move-object/from16 v0, v26
invoke-static {v0, v11, v4, v5, v6}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/GenericFeedViewHolder;->viewAllComments:Landroid/widget/TextView;
move-object/from16 v33, v0
const/4 v4, 0x0
move-object/from16 v0, v33
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v4
move-object/from16 v0, v33
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
move-object/from16 v0, v33
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_cb
move-object/from16 v0, p2
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v24
const/4 v14, 0x0
add-int/lit8 v4, v24, -0x3
const/4 v5, 0x0
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v20
:goto_db
move/from16 v0, v20
move/from16 v1, v24
if-ge v0, v1, :cond_4b
move/from16 v0, v20
invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lco/vine/android/api/VineComment;
const/4 v4, 0x3
if-ge v14, v4, :cond_4b
packed-switch v14, :pswitch_data_2ec
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments3:Landroid/widget/TextView;
move-object/from16 v27, v0
:goto_f5
const/4 v4, 0x0
move-object/from16 v0, v27
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v4, v12, Lco/vine/android/api/VineComment;->commentSb:Landroid/text/SpannableStringBuilder;
if-nez v4, :cond_2da
new-instance v4, Landroid/text/SpannableStringBuilder;
invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V
iput-object v4, v12, Lco/vine/android/api/VineComment;->commentSb:Landroid/text/SpannableStringBuilder;
iget-object v0, v12, Lco/vine/android/api/VineComment;->commentSb:Landroid/text/SpannableStringBuilder;
move-object/from16 v28, v0
:try_start_10a
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
iget-wide v5, v12, Lco/vine/android/api/VineComment;->timestamp:J
const/4 v8, 0x0
invoke-static {v4, v5, v6, v8}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;
move-result-object v22
iget-object v4, v12, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
move-object/from16 v0, v28
invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v4
const/16 v5, 0x20
invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v4
iget-object v5, v12, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v4
const/16 v5, 0x20
invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v4
move-object/from16 v0, v22
invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:try_end_134
.catch Ljava/lang/NullPointerException; {:try_start_10a .. :try_end_134} :catch_20e
const/16 v32, 0x0
iget-object v4, v12, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v31
iget-object v4, v12, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
add-int v4, v4, v31
add-int/lit8 v30, v4, 0x2
invoke-virtual/range {v28 .. v28}, Landroid/text/SpannableStringBuilder;->length()I
move-result v29
new-instance v25, Lco/vine/android/widget/StyledClickableSpan;
const/4 v4, 0x1
iget-wide v5, v12, Lco/vine/android/api/VineComment;->userId:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move-object/from16 v0, v25
invoke-direct {v0, v4, v5, v6}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
new-instance v9, Lco/vine/android/widget/TypefacesSpan;
const/4 v4, 0x0
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-static {v5}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v5
const/4 v6, 0x0
const/4 v8, 0x3
invoke-virtual {v5, v6, v8}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;
move-result-object v5
invoke-direct {v9, v4, v5}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
new-instance v7, Landroid/content/res/ColorStateList;
const/4 v4, 0x1
new-array v4, v4, [[I
const/4 v5, 0x0
const/4 v6, 0x0
new-array v6, v6, [I
aput-object v6, v4, v5
const/4 v5, 0x1
new-array v5, v5, [I
const/4 v6, 0x0
const v8, 0x7f090018
move-object/from16 v0, v23
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v8
aput v8, v5, v6
invoke-direct {v7, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
new-instance v3, Landroid/text/style/TextAppearanceSpan;
const/4 v4, 0x0
const/4 v5, 0x0
const v6, 0x7f0b004a
move-object/from16 v0, v23
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v6
const/4 v8, 0x0
invoke-direct/range {v3 .. v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
move-object/from16 v0, v25
invoke-virtual {v0, v4}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/4 v4, 0x0
const/16 v5, 0x21
move-object/from16 v0, v28
move-object/from16 v1, v25
move/from16 v2, v31
invoke-static {v0, v1, v4, v2, v5}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
const/4 v4, 0x0
const/16 v5, 0x21
move-object/from16 v0, v28
move/from16 v1, v31
invoke-static {v0, v9, v4, v1, v5}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
const/16 v4, 0x21
move-object/from16 v0, v28
move/from16 v1, v30
move/from16 v2, v29
invoke-static {v0, v3, v1, v2, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
iget-object v4, v12, Lco/vine/android/api/VineComment;->transientEntities:Ljava/util/ArrayList;
if-nez v4, :cond_234
iget-object v4, v12, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
if-eqz v4, :cond_234
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iput-object v4, v12, Lco/vine/android/api/VineComment;->transientEntities:Ljava/util/ArrayList;
iget-object v4, v12, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v19
:goto_1dd
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_234
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v18
check-cast v18, Lco/vine/android/api/VineEntity;
iget-object v4, v12, Lco/vine/android/api/VineComment;->transientEntities:Ljava/util/ArrayList;
invoke-virtual/range {v18 .. v18}, Lco/vine/android/api/VineEntity;->duplicate()Lco/vine/android/api/VineEntity;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1dd
:cond_1f3
move-object/from16 v0, p1
iget-object v4, v0, Lco/vine/android/widget/GenericFeedViewHolder;->viewAllComments:Landroid/widget/TextView;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_cb
:pswitch_1fe
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments1:Landroid/widget/TextView;
move-object/from16 v27, v0
goto/16 :goto_f5
:pswitch_206
move-object/from16 v0, p1
iget-object v0, v0, Lco/vine/android/widget/GenericFeedViewHolder;->comments2:Landroid/widget/TextView;
move-object/from16 v27, v0
goto/16 :goto_f5
:catch_20e
move-exception v16
const-string v4, "Comment attribute caused NPE: {} {} {}"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-wide v0, v12, Lco/vine/android/api/VineComment;->commentId:J
move-wide/from16 v34, v0
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v5, v6
const/4 v6, 0x1
iget-object v8, v12, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
aput-object v8, v5, v6
const/4 v6, 0x2
iget-object v8, v12, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
aput-object v8, v5, v6
move-object/from16 v0, v16
invoke-static {v0, v4, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:goto_22e
add-int/lit8 v20, v20, 0x1
add-int/lit8 v14, v14, 0x1
goto/16 :goto_db
:cond_234
iget-object v0, v12, Lco/vine/android/api/VineComment;->transientEntities:Ljava/util/ArrayList;
move-object/from16 v17, v0
if-eqz v17, :cond_2da
add-int/lit8 v4, v31, 0x1
const/4 v5, 0x0
:try_start_23d
move-object/from16 v0, v17
move-object/from16 v1, v28
invoke-static {v0, v1, v4, v5}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v19
:cond_248
:goto_248
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2da
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lco/vine/android/api/VineEntity;
invoke-virtual/range {v16 .. v16}, Lco/vine/android/api/VineEntity;->isUserType()Z
move-result v4
if-eqz v4, :cond_292
new-instance v10, Lco/vine/android/widget/StyledClickableSpan;
const/4 v4, 0x1
move-object/from16 v0, v16
iget-wide v5, v0, Lco/vine/android/api/VineEntity;->id:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
invoke-direct {v10, v4, v5, v6}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
invoke-virtual {v10, v4}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
move-object/from16 v0, v16
iget v4, v0, Lco/vine/android/api/VineEntity;->start:I
move-object/from16 v0, v16
iget v5, v0, Lco/vine/android/api/VineEntity;->end:I
const/16 v6, 0x21
move-object/from16 v0, v28
invoke-static {v0, v10, v4, v5, v6}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:try_end_282
.catch Ljava/lang/Exception; {:try_start_23d .. :try_end_282} :catch_283
goto :goto_248
:catch_283
move-exception v16
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v4
if-eqz v4, :cond_2bd
new-instance v4, Ljava/lang/RuntimeException;
move-object/from16 v0, v16
invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v4
:try_start_292
:cond_292
invoke-virtual/range {v16 .. v16}, Lco/vine/android/api/VineEntity;->isTagType()Z
move-result v4
if-eqz v4, :cond_248
new-instance v10, Lco/vine/android/widget/StyledClickableSpan;
const/4 v4, 0x4
move-object/from16 v0, v16
iget-object v5, v0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
invoke-direct {v10, v4, v5, v6}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
invoke-virtual {v10, v4}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
move-object/from16 v0, v16
iget v4, v0, Lco/vine/android/api/VineEntity;->start:I
move-object/from16 v0, v16
iget v5, v0, Lco/vine/android/api/VineEntity;->end:I
const/16 v6, 0x21
move-object/from16 v0, v28
invoke-static {v0, v10, v4, v5, v6}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:try_end_2bc
.catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2bc} :catch_283
goto :goto_248
:cond_2bd
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Failed to adjust entities on "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-wide v5, v12, Lco/vine/android/api/VineComment;->commentId:J
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
move-object/from16 v0, v16
invoke-static {v0, v4, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2da
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v4
move-object/from16 v0, v27
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v4, v12, Lco/vine/android/api/VineComment;->commentSb:Landroid/text/SpannableStringBuilder;
move-object/from16 v0, v27
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_22e
:pswitch_data_2ec
.packed-switch 0x0
:pswitch_1fe
:pswitch_206
.end packed-switch
.end method
.method protected setStyledCompactLikesComments(Lco/vine/android/widget/GenericFeedViewHolder;)V
.registers 25
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v13, v2, Lco/vine/android/api/VinePost;->likesCount:I
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v10, v2, Lco/vine/android/api/VinePost;->commentsCount:I
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v0, v2, Lco/vine/android/api/VinePost;->revinersCount:I
move/from16 v18, v0
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v2, v2, Lco/vine/android/api/VinePost;->comments:Lco/vine/android/api/VinePagedData;
if-eqz v2, :cond_1aa
const/16 v20, 0x1
:goto_1e
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v17
new-instance v19, Landroid/text/SpannableStringBuilder;
invoke-direct/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;-><init>()V
if-lez v13, :cond_71
int-to-long v2, v13
move-object/from16 v0, v17
invoke-static {v0, v2, v3}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;J)Ljava/lang/String;
move-result-object v16
const v2, 0x7f0d0017
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v16, v3, v4
move-object/from16 v0, v17
invoke-virtual {v0, v2, v13, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v9, Lco/vine/android/widget/StyledClickableSpan;
const/4 v2, 0x2
move-object/from16 v0, p1
iget-object v3, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v3, v3, Lco/vine/android/api/VinePost;->postId:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
invoke-direct {v9, v2, v3, v4}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGray:I
invoke-virtual {v9, v2}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
const/16 v21, 0x0
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v11
const/4 v2, 0x0
const/16 v3, 0x21
move-object/from16 v0, v19
invoke-static {v0, v9, v2, v11, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:cond_71
if-lez v10, :cond_eb
if-eqz v20, :cond_eb
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
if-lez v2, :cond_8e
const/16 v2, 0x20
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v2
const/16 v3, 0xb7
invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v2
const/16 v3, 0x20
invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
:cond_8e
int-to-long v2, v10
move-object/from16 v0, v17
invoke-static {v0, v2, v3}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;J)Ljava/lang/String;
move-result-object v15
const v2, 0x7f0d0016
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v15, v3, v4
move-object/from16 v0, v17
invoke-virtual {v0, v2, v10, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v9, Lco/vine/android/widget/StyledClickableSpan;
const/16 v22, 0x3
new-instance v2, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;
move-object/from16 v0, p1
iget-object v3, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v4, v3, Lco/vine/android/api/VinePost;->postId:J
move-object/from16 v0, p1
iget-object v3, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v6, v3, Lco/vine/android/api/VinePost;->userId:J
move-object/from16 v3, p0
invoke-direct/range {v2 .. v7}, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;-><init>(Lco/vine/android/widget/GenericVideoAdapter;JJ)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move/from16 v0, v22
invoke-direct {v9, v0, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGray:I
invoke-virtual {v9, v2}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/16 v3, 0xb7
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I
move-result v12
if-gez v12, :cond_1ae
const/16 v21, 0x0
:goto_de
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v11
const/16 v2, 0x21
move-object/from16 v0, v19
move/from16 v1, v21
invoke-static {v0, v9, v1, v11, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:cond_eb
if-lez v18, :cond_167
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
if-lez v2, :cond_106
const/16 v2, 0x20
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v2
const/16 v3, 0xb7
invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v2
const/16 v3, 0x20
invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
:cond_106
move/from16 v0, v18
int-to-long v2, v0
move-object/from16 v0, v17
invoke-static {v0, v2, v3}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;J)Ljava/lang/String;
move-result-object v14
const v2, 0x7f0d0006
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v14, v3, v4
move-object/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v9, Lco/vine/android/widget/StyledClickableSpan;
const/16 v22, 0x7
new-instance v2, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;
move-object/from16 v0, p1
iget-object v3, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v4, v3, Lco/vine/android/api/VinePost;->postId:J
move-object/from16 v0, p1
iget-object v3, v0, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v6, v3, Lco/vine/android/api/VinePost;->userId:J
move-object/from16 v3, p0
invoke-direct/range {v2 .. v7}, Lco/vine/android/widget/GenericVideoAdapter$SpanCommentObjectTag;-><init>(Lco/vine/android/widget/GenericVideoAdapter;JJ)V
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/GenericVideoAdapter;->mSpanClickListener:Lco/vine/android/widget/SpanClickListener;
move/from16 v0, v22
invoke-direct {v9, v0, v2, v3}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V
move-object/from16 v0, p0
iget v2, v0, Lco/vine/android/widget/GenericVideoAdapter;->mVineGray:I
invoke-virtual {v9, v2}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/16 v3, 0xb7
invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v12
if-gez v12, :cond_1b2
const/16 v21, 0x0
:goto_15a
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v11
const/16 v2, 0x21
move-object/from16 v0, v19
move/from16 v1, v21
invoke-static {v0, v9, v1, v11, v2}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
:cond_167
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
if-lez v2, :cond_1b5
new-instance v8, Lco/vine/android/widget/TypefacesSpan;
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-static {v3}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x2
invoke-virtual {v3, v4, v5}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;
move-result-object v3
invoke-direct {v8, v2, v3}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
const/4 v2, 0x0
invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableStringBuilder;->length()I
move-result v3
const/16 v4, 0x21
move-object/from16 v0, v19
invoke-static {v0, v8, v2, v3, v4}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->compactLikesCommentsRevinesCounts:Landroid/widget/TextView;
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->compactLikesCommentsRevinesCounts:Landroid/widget/TextView;
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1a1
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->compactLikesCommentsRevinesCounts:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
return-void
:cond_1aa
const/16 v20, 0x0
goto/16 :goto_1e
:cond_1ae
add-int/lit8 v21, v12, 0x2
goto/16 :goto_de
:cond_1b2
add-int/lit8 v21, v12, 0x2
goto :goto_15a
:cond_1b5
move-object/from16 v0, p1
iget-object v2, v0, Lco/vine/android/widget/GenericFeedViewHolder;->compactLikesCommentsRevinesCounts:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
const v4, 0x7f0e00fa
invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1a1
.end method
.method protected setUserImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
if-nez p2, :cond_e
const v1, 0x7f0200f7
invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_d
return v0
:cond_e
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V
new-instance v0, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, v1, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v0, 0x1
goto :goto_d
.end method
.method public showLikedByMe(J)V
.registers 13
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
iget-object v8, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_b
:cond_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_79
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/ref/WeakReference;
invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/widget/GenericFeedViewHolder;
if-nez v2, :cond_23
invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
iget-object v8, v2, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
if-eqz v8, :cond_b
iget-object v8, v2, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v8, v8, Lco/vine/android/api/VinePost;->postId:J
cmp-long v8, v8, p1
if-nez v8, :cond_b
iget-object v8, v2, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v9, v8, Lco/vine/android/api/VinePost;->likesCount:I
add-int/lit8 v9, v9, 0x1
iput v9, v8, Lco/vine/android/api/VinePost;->likesCount:I
iget-object v8, v2, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v4, v8, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
new-instance v5, Lco/vine/android/api/VineLike;
invoke-direct {v5}, Lco/vine/android/api/VineLike;-><init>()V
iget-object v8, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v8}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v0
const-wide/16 v8, -0x1
iput-wide v8, v5, Lco/vine/android/api/VineLike;->likeId:J
iput-wide p1, v5, Lco/vine/android/api/VineLike;->postId:J
invoke-virtual {v0}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;
move-result-object v8
iput-object v8, v5, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;
invoke-virtual {v0}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v8
iput-wide v8, v5, Lco/vine/android/api/VineLike;->userId:J
if-nez v4, :cond_5f
new-instance v4, Lco/vine/android/api/VinePagedData;
invoke-direct {v4}, Lco/vine/android/api/VinePagedData;-><init>()V
:cond_5f
iget-object v8, v4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-nez v8, :cond_6a
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iput-object v8, v4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
:cond_6a
iget-object v8, v4, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v8, v2, Lco/vine/android/widget/GenericFeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
const/4 v9, 0x1
invoke-virtual {v8, v9}, Lco/vine/android/widget/ColorizedCircleButton;->setSelected(Z)V
invoke-virtual {p0, v2}, Lco/vine/android/widget/GenericVideoAdapter;->setStyledCompactLikesComments(Lco/vine/android/widget/GenericFeedViewHolder;)V
goto :goto_b
:cond_79
invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_7d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_8f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
iget-object v8, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_7d
:cond_8f
return-void
.end method
.method public showUnlikedByMe(J)V
.registers 16
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iget-object v9, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_7f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/ref/WeakReference;
invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/widget/GenericFeedViewHolder;
if-nez v1, :cond_23
invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
if-eqz v9, :cond_b
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v9, v9, Lco/vine/android/api/VinePost;->postId:J
cmp-long v9, v9, p1
if-nez v9, :cond_b
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v9, v9, Lco/vine/android/api/VinePost;->likesCount:I
if-lez v9, :cond_3d
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v10, v9, Lco/vine/android/api/VinePost;->likesCount:I
add-int/lit8 v10, v10, -0x1
iput v10, v9, Lco/vine/android/api/VinePost;->likesCount:I
:cond_3d
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v9, v9, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
if-eqz v9, :cond_75
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v9, v9, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
iget-object v9, v9, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v9, :cond_75
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-object v9, v9, Lco/vine/android/api/VinePost;->likes:Lco/vine/android/api/VinePagedData;
iget-object v6, v9, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
const/4 v5, 0x0
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_56
:cond_56
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_70
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/api/VineLike;
iget-wide v9, v4, Lco/vine/android/api/VineLike;->userId:J
iget-object v11, p0, Lco/vine/android/widget/GenericVideoAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v11}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v11
cmp-long v9, v9, v11
if-nez v9, :cond_56
move-object v5, v4
goto :goto_56
:cond_70
if-eqz v5, :cond_75
invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_75
iget-object v9, v1, Lco/vine/android/widget/GenericFeedViewHolder;->liked:Lco/vine/android/widget/ColorizedCircleButton;
const/4 v10, 0x0
invoke-virtual {v9, v10}, Lco/vine/android/widget/ColorizedCircleButton;->setSelected(Z)V
invoke-virtual {p0, v1}, Lco/vine/android/widget/GenericVideoAdapter;->setStyledCompactLikesComments(Lco/vine/android/widget/GenericFeedViewHolder;)V
goto :goto_b
:cond_7f
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_83
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_95
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
iget-object v9, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_83
:cond_95
return-void
.end method
.method public startLoadingTimeProfiling(Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lco/vine/android/widget/GenericVideoAdapter;->mLoadingTimeTag:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/widget/GenericVideoAdapter;->mStartLoadingTime:J
return-void
.end method
.method public timeSinceStartLoadingTime()J
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lco/vine/android/widget/GenericVideoAdapter;->mStartLoadingTime:J
sub-long/2addr v0, v2
return-wide v0
.end method
.method public toggleMute(Z)V
.registers 2
return-void
.end method
.method public updateRevinedCount(JZ)V
.registers 12
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_b
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_61
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/widget/GenericFeedViewHolder;
if-nez v1, :cond_23
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_23
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
if-eqz v5, :cond_b
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget-wide v5, v5, Lco/vine/android/api/VinePost;->postId:J
cmp-long v5, v5, p1
if-nez v5, :cond_b
if-eqz p3, :cond_4c
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v6, v5, Lco/vine/android/api/VinePost;->revinersCount:I
add-int/lit8 v6, v6, 0x1
iput v6, v5, Lco/vine/android/api/VinePost;->revinersCount:I
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lco/vine/android/widget/ColorizedCircleButton;->setPressed(Z)V
:goto_3f
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
iget v6, p0, Lco/vine/android/widget/GenericVideoAdapter;->mProfileColor:I
sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v5, v6, v7}, Lco/vine/android/widget/ColorizedCircleButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {p0, v1}, Lco/vine/android/widget/GenericVideoAdapter;->setStyledCompactLikesComments(Lco/vine/android/widget/GenericFeedViewHolder;)V
goto :goto_b
:cond_4c
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v5, v5, Lco/vine/android/api/VinePost;->revinersCount:I
if-lez v5, :cond_5a
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->post:Lco/vine/android/api/VinePost;
iget v6, v5, Lco/vine/android/api/VinePost;->revinersCount:I
add-int/lit8 v6, v6, -0x1
iput v6, v5, Lco/vine/android/api/VinePost;->revinersCount:I
:cond_5a
iget-object v5, v1, Lco/vine/android/widget/GenericFeedViewHolder;->share:Lco/vine/android/widget/ColorizedCircleButton;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lco/vine/android/widget/ColorizedCircleButton;->setPressed(Z)V
goto :goto_3f
:cond_61
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_65
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_77
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
iget-object v5, p0, Lco/vine/android/widget/GenericVideoAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_65
:cond_77
return-void
.end method