.class public Lcom/facebook/katana/PickFriendsAdapter;
.super Landroid/widget/CursorAdapter;
.source "PickFriendsAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/PickFriendsAdapter$FriendsQuery;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAddedFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphabetIndex:Landroid/widget/AlphabetIndexer;

.field private final mCheckBoxAdapterListener:Lcom/facebook/katana/CheckboxAdapterListener;

.field private final mCheckBoxListener:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/widget/Filter;

.field private final mInitialMarkedFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarkedFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchDelegateRect:Landroid/graphics/Rect;

.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

.field private final mUsersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/PickFriendsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/PickFriendsAdapter;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/CheckboxAdapterListener;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Lcom/facebook/katana/binding/UserImagesCache;",
            "Lcom/facebook/katana/CheckboxAdapterListener;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0x28

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    iput-object p4, p0, Lcom/facebook/katana/PickFriendsAdapter;->mCheckBoxAdapterListener:Lcom/facebook/katana/CheckboxAdapterListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mViewHolders:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mInitialMarkedFriends:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUsersById:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAddedFriends:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mRemovedFriends:Ljava/util/Set;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mTouchDelegateRect:Landroid/graphics/Rect;

    new-instance v2, Lcom/facebook/katana/PickFriendsAdapter$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/PickFriendsAdapter$1;-><init>(Lcom/facebook/katana/PickFriendsAdapter;)V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/facebook/katana/PickFriendsAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/katana/PickFriendsAdapter$2;-><init>(Lcom/facebook/katana/PickFriendsAdapter;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mFilter:Landroid/widget/Filter;

    const v2, 0x7f08001e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/AlphabetIndexer;

    const/4 v3, 0x4

    invoke-direct {v2, p2, v3, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    iget-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    invoke-virtual {p0, v2}, Lcom/facebook/katana/PickFriendsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;

    iget-object v3, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUsersById:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20

    const v13, 0x7f0b002d

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    move-object v13, v0

    invoke-virtual {v13, v5}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v4

    if-lez v5, :cond_104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    move-object v13, v0

    invoke-virtual {v13, v4}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v13

    if-ne v5, v13, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3c
    const/4 v13, 0x1

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/ViewHolder;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V

    const/4 v13, 0x5

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v13, v14, v10, v11, v9}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_11c

    iget-object v13, v12, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_70
    invoke-static/range {p2 .. p2}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8f

    iget-object v13, v12, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-static {v13, v14, v10, v11, v15}, Lcom/facebook/katana/platform/PlatformFastTrack;->prepareBadge(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V

    :cond_8f
    const/4 v13, 0x4

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f080053

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_a5
    const v13, 0x7f0b002f

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f0b008b

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    move-object v13, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mCheckBoxListener:Landroid/view/View$OnClickListener;

    move-object v13, v0

    invoke-virtual {v3, v13}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v13

    if-nez v13, :cond_fc

    new-instance v13, Landroid/view/TouchDelegate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mTouchDelegateRect:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-direct {v13, v14, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_fc
    return-void

    :cond_fd
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3c

    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3c

    :cond_11c
    iget-object v13, v12, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v14, 0x7f0200b3

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_70

    :cond_126
    iget-object v13, v12, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v14, 0x7f0200b3

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_70
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public flipMarked(I)V
    .registers 13

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Lcom/facebook/katana/PickFriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAddedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mRemovedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mCheckBoxAdapterListener:Lcom/facebook/katana/CheckboxAdapterListener;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-interface {v8, v1, v2, v9, v10}, Lcom/facebook/katana/CheckboxAdapterListener;->onMarkChanged(JZI)Z

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/facebook/katana/PickFriendsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_42
    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mCheckBoxAdapterListener:Lcom/facebook/katana/CheckboxAdapterListener;

    iget-object v9, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-interface {v8, v1, v2, v10, v9}, Lcom/facebook/katana/CheckboxAdapterListener;->onMarkChanged(JZI)Z

    move-result v8

    if-eqz v8, :cond_3e

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUsersById:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookUser;

    if-nez v0, :cond_8b

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_78

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080053

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_78
    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUsersById:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mMarkedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAddedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/facebook/katana/PickFriendsAdapter;->mRemovedFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3e
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getMarkedFriends()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/facebook/katana/PickFriendsAdapter;->mInitialMarkedFriends:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int v1, v0, v6

    :goto_e
    if-gez v1, :cond_2d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAddedFriends:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_49

    new-instance v6, Lcom/facebook/katana/PickFriendsAdapter$3;

    invoke-direct {v6, p0}, Lcom/facebook/katana/PickFriendsAdapter$3;-><init>(Lcom/facebook/katana/PickFriendsAdapter;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :cond_2d
    iget-object v7, p0, Lcom/facebook/katana/PickFriendsAdapter;->mRemovedFriends:Ljava/util/Set;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_49
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v7, p0, Lcom/facebook/katana/PickFriendsAdapter;->mUsersById:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/api/FacebookUser;

    sget-boolean v7, Lcom/facebook/katana/PickFriendsAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_63

    if-nez v4, :cond_63

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_63
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public getPositionForSection(I)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PickFriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/katana/PickFriendsAdapter;->getCursor()Landroid/database/Cursor;

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
    .registers 10

    iget-object v4, p0, Lcom/facebook/katana/PickFriendsAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_29

    const v3, 0x7f030033

    :goto_13
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v4, 0x7f0b002e

    invoke-direct {v1, v0, v4}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/facebook/katana/PickFriendsAdapter;->mViewHolders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_29
    const v3, 0x7f030034

    goto :goto_13
.end method

.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/PickFriendsAdapter;->mViewHolders:Ljava/util/List;

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
