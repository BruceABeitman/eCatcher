.class public Lco/vine/android/InboxFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "InboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/InboxFragment$ConversationMenuSessionListener;,
        Lco/vine/android/InboxFragment$SortMenuContactsTask;,
        Lco/vine/android/InboxFragment$TabSwicher;
    }
.end annotation


# static fields
.field protected static final FETCH_FLAG_BOTH:I = 0x3

.field protected static final FETCH_FLAG_FRIENDS:I = 0x2

.field protected static final FETCH_FLAG_INBOX:I = 0x1

.field protected static final FETCH_FLAG_OTHERS:I = 0x4

.field protected static final LOADER_ID_CONTACTS:I = 0x3

.field protected static final LOADER_ID_FRIENDS:I = 0x2

.field protected static final LOADER_ID_INBOX:I = 0x1

.field protected static final LOADER_ID_OTHERS:I = 0x4

.field protected static final VIEW_TYPE_CONTACTS:I = 0x3

.field protected static final VIEW_TYPE_FRIENDS:I = 0x2

.field protected static final VIEW_TYPE_MESSAGES:I = 0x1


# instance fields
.field private mActiveAdapter:Landroid/widget/BaseAdapter;

.field private mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

.field private mAddressCursor:Landroid/database/Cursor;

.field private mAnchorManager:Lco/vine/android/util/StringAnchorManager;

.field private mColor:I

.field private final mColorChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContactEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactEntryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lco/vine/android/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLastId:J

.field private mDummyAdapter:Lco/vine/android/MessageBoxAdapter;

.field private mEmptyImage:Landroid/widget/ImageView;

.field private mEmptyTitle:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyWords:Landroid/widget/TextView;

.field protected mFetchFlags:I

.field private mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

.field private mFriendsText:Landroid/widget/TextView;

.field protected mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

.field private mInboxCursorCount:I

.field private final mInvalidateContactEntryRunnable:Ljava/lang/Runnable;

.field private final mInvalidateEmptyViewRunnable:Ljava/lang/Runnable;

.field private mIsAddressBookShowing:Z

.field private mIsEmptyViewAdded:Z

.field private mIsSwitching:Z

.field private final mListener:Lco/vine/android/OnContactEntryClickedListener;

.field private mLoadingMore:Z

.field protected mMessageCount:J

.field private mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

.field private mOthersCursorCount:I

.field private mOthersText:Landroid/widget/TextView;

.field private mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

.field private mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;

.field private mTypefaces:Lco/vine/android/widget/Typefaces;

.field private mUnReadCount:I

.field protected mWaitingToStartId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/InboxFragment;->mWaitingToStartId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/InboxFragment;->mLoadingMore:Z

    new-instance v0, Lco/vine/android/InboxFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/InboxFragment$1;-><init>(Lco/vine/android/InboxFragment;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mColorChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lco/vine/android/InboxFragment$2;

    invoke-direct {v0, p0}, Lco/vine/android/InboxFragment$2;-><init>(Lco/vine/android/InboxFragment;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mInvalidateEmptyViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Lco/vine/android/InboxFragment$3;

    invoke-direct {v0, p0}, Lco/vine/android/InboxFragment$3;-><init>(Lco/vine/android/InboxFragment;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mInvalidateContactEntryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lco/vine/android/InboxFragment$4;

    invoke-direct {v0, p0}, Lco/vine/android/InboxFragment$4;-><init>(Lco/vine/android/InboxFragment;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mListener:Lco/vine/android/OnContactEntryClickedListener;

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/InboxFragment;)Landroid/widget/BaseAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lco/vine/android/InboxFragment;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mContactEntryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1002(Lco/vine/android/InboxFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2

    iput-object p1, p0, Lco/vine/android/InboxFragment;->mContactEntryMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$102(Lco/vine/android/InboxFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .registers 2

    iput-object p1, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$1102(Lco/vine/android/InboxFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lco/vine/android/InboxFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateContactEntries()V

    return-void
.end method

.method static synthetic access$1300(Lco/vine/android/InboxFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/InboxFragment;->mIsAddressBookShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lco/vine/android/InboxFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/InboxFragment;->mLoadingMore:Z

    return p1
.end method

.method static synthetic access$200(Lco/vine/android/InboxFragment;)Lco/vine/android/widget/SectionAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/InboxFragment;)I
    .registers 2

    iget v0, p0, Lco/vine/android/InboxFragment;->mInboxCursorCount:I

    return v0
.end method

.method static synthetic access$400(Lco/vine/android/InboxFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z

    return v0
.end method

.method static synthetic access$402(Lco/vine/android/InboxFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z

    return p1
.end method

.method static synthetic access$500(Lco/vine/android/InboxFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/InboxFragment;)I
    .registers 2

    iget v0, p0, Lco/vine/android/InboxFragment;->mOthersCursorCount:I

    return v0
.end method

.method static synthetic access$700(Lco/vine/android/InboxFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/InboxFragment;->mIsSwitching:Z

    return v0
.end method

.method static synthetic access$702(Lco/vine/android/InboxFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/InboxFragment;->mIsSwitching:Z

    return p1
.end method

.method static synthetic access$800(Lco/vine/android/InboxFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateAdapters()V

    return-void
.end method

.method static synthetic access$902(Lco/vine/android/InboxFragment;Lco/vine/android/InboxFragment$SortMenuContactsTask;)Lco/vine/android/InboxFragment$SortMenuContactsTask;
    .registers 2

    iput-object p1, p0, Lco/vine/android/InboxFragment;->mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;

    return-object p1
.end method

.method private invalidateAdapters()V
    .registers 6

    const/4 v4, 0x0

    const/high16 v3, 0x5a00

    const v2, -0xcccccd

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mTypefaces:Lco/vine/android/widget/Typefaces;

    iget-object v1, v1, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mTypefaces:Lco/vine/android/widget/Typefaces;

    iget-object v1, v1, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v4, p0, Lco/vine/android/InboxFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyWords:Landroid/widget/TextView;

    const v1, 0x7f0e0280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyImage:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, v4}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/InboxFragment;->invalidateEmptyView(Z)V

    return-void

    :cond_4b
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mTypefaces:Lco/vine/android/widget/Typefaces;

    iget-object v1, v1, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mTypefaces:Lco/vine/android/widget/Typefaces;

    iget-object v1, v1, Lco/vine/android/widget/Typefaces;->boldContent:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyWords:Landroid/widget/TextView;

    const v1, 0x7f0e0279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyImage:Landroid/widget/ImageView;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto :goto_46
.end method

.method private invalidateContactEntries()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mInvalidateContactEntryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mInvalidateContactEntryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized invalidateEmptyView(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mInvalidateEmptyViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInvalidateEmptyViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1b

    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mInvalidateEmptyViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private invalidateUnreadCount()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget v3, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    if-lez v3, :cond_f

    iget v3, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_4a

    const-string v2, "20+"

    :cond_f
    :goto_f
    iget-object v3, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v2, :cond_58

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v1, v5, :cond_51

    :goto_2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget v3, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_51
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_58
    if-eq v1, v5, :cond_49

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method


# virtual methods
.method public addEntriesToAddressAdapter()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    const-string v0, "Showing address book: {}."

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/InboxFragment;->mIsAddressBookShowing:Z

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/ContactsMenuAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/ContactsMenuAdapter;->clear()V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ContactsMenuAdapter;->addAll(Ljava/util/Collection;)V

    :cond_30
    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->makeSadFaceHeaderView()V

    :cond_33
    return-void
.end method

.method public createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseCursorListFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030058

    iget-object v5, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a0126

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    const v3, 0x7f0a0127

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v3, 0x7f0300a6

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0a0235

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyWords:Landroid/widget/TextView;

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f0a0234

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/InboxFragment;->mEmptyTitle:Landroid/widget/TextView;

    return-object v2
.end method

.method protected fetchContent(IIZ)V
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lco/vine/android/InboxFragment;->hasPendingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    packed-switch p1, :pswitch_data_52

    const/4 v0, 0x1

    :goto_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    if-ne p2, v2, :cond_15

    iput-boolean v2, p0, Lco/vine/android/InboxFragment;->mLoadingMore:Z

    :cond_15
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_26

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lco/vine/android/InboxFragment;->setFetched(I)V

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v0, v3, v4}, Lco/vine/android/client/AppController;->fetchConversations(IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lco/vine/android/InboxFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    :cond_26
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_36

    invoke-virtual {p0, v2}, Lco/vine/android/InboxFragment;->setFetched(I)V

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v0, v3, v2}, Lco/vine/android/client/AppController;->fetchConversations(IZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lco/vine/android/InboxFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    :cond_36
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_46

    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->setFetched(I)V

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1, v0, v2}, Lco/vine/android/client/AppController;->fetchFriends(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lco/vine/android/InboxFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    :cond_46
    if-nez p3, :cond_9

    invoke-virtual {p0, p1}, Lco/vine/android/InboxFragment;->showProgress(I)V

    goto :goto_9

    :pswitch_4c
    const/4 v0, 0x1

    goto :goto_e

    :pswitch_4e
    const/4 v0, 0x1

    goto :goto_e

    :pswitch_50
    const/4 v0, 0x3

    goto :goto_e

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4e
        :pswitch_4c
        :pswitch_4e
    .end packed-switch
.end method

.method protected isFetched(I)Z
    .registers 3

    iget v0, p0, Lco/vine/android/InboxFragment;->mFetchFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLoadingMore()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/InboxFragment;->mLoadingMore:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mTypefaces:Lco/vine/android/widget/Typefaces;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "profile_background"

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v7, v0, :cond_27

    if-gtz v7, :cond_37

    :cond_27
    const v0, 0xffffff

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    and-int v7, v0, v2

    :cond_37
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    if-nez v0, :cond_48

    new-instance v0, Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v2, v3, p0, v5}, Lco/vine/android/MessageBoxAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/InboxFragment;I)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    :cond_48
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mDummyAdapter:Lco/vine/android/MessageBoxAdapter;

    if-nez v0, :cond_59

    new-instance v0, Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v2, v3, p0, v5}, Lco/vine/android/MessageBoxAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/InboxFragment;I)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mDummyAdapter:Lco/vine/android/MessageBoxAdapter;

    :cond_59
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    if-nez v0, :cond_71

    new-instance v0, Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v2, v3, v5}, Lco/vine/android/MenuUsersAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0, v2}, Lco/vine/android/MenuUsersAdapter;->setInboxAdapter(Lco/vine/android/MessageBoxAdapter;)V

    :cond_71
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    if-nez v0, :cond_80

    new-instance v0, Lco/vine/android/widget/ContactsMenuAdapter;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/vine/android/widget/ContactsMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    :cond_80
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    if-nez v0, :cond_91

    new-instance v0, Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v2, v3, p0, v5}, Lco/vine/android/MessageBoxAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/InboxFragment;I)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    :cond_91
    new-instance v0, Lco/vine/android/widget/SectionAdapter;

    new-array v3, v4, [I

    fill-array-data v3, :array_f0

    new-array v4, v4, [Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    aput-object v2, v4, v5

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    aput-object v2, v4, v6

    const/4 v2, 0x2

    iget-object v5, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    aput-object v5, v4, v2

    const v5, 0x7f030059

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsText:Landroid/widget/TextView;

    new-instance v1, Lco/vine/android/InboxFragment$TabSwicher;

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-direct {v1, p0, v2}, Lco/vine/android/InboxFragment$TabSwicher;-><init>(Lco/vine/android/InboxFragment;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOthersText:Landroid/widget/TextView;

    new-instance v1, Lco/vine/android/InboxFragment$TabSwicher;

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-direct {v1, p0, v2}, Lco/vine/android/InboxFragment$TabSwicher;-><init>(Lco/vine/android/InboxFragment;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    const/high16 v1, -0x100

    or-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->colorizePTR(I)V

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v6}, Lco/vine/android/provider/Vine;->getUserSectionsAnchorManager(Landroid/content/Context;I)Lco/vine/android/util/StringAnchorManager;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateAdapters()V

    return-void

    :array_f0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->hasPendingRequest(I)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f0a010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide v0, p0, Lco/vine/android/InboxFragment;->mMessageCount:J

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/InboxFragment;->mMessageCount:J

    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->restartLoader(I)Z

    invoke-virtual {p0, v4, v4, v4}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_8

    :pswitch_data_34
    .packed-switch 0x7f0a010c
        :pswitch_9
    .end packed-switch
.end method

.method public onClosed()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, 0xa

    iput-wide v2, p0, Lco/vine/android/InboxFragment;->mMessageCount:J

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->clearInboxPageCursors()V

    iget-object v2, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->restartLoader()Z

    check-cast v0, Lco/vine/android/BaseActionBarActivity;

    invoke-virtual {v0}, Lco/vine/android/BaseActionBarActivity;->getSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/ConversationMenuHelper;

    invoke-virtual {v1, v4}, Lco/vine/android/util/ConversationMenuHelper;->toggleContactSearch(Z)V

    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/InboxFragment$ConversationMenuSessionListener;-><init>(Lco/vine/android/InboxFragment;)V

    iput-object v0, p0, Lco/vine/android/InboxFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lco/vine/android/InboxFragment;->mMessageCount:J

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_74

    sget-object v0, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hidden"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "network_type"

    const/4 v0, 0x4

    if-ne p1, v0, :cond_71

    const/4 v0, 0x2

    :goto_18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    iget-wide v3, p0, Lco/vine/android/InboxFragment;->mMessageCount:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$InboxQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v5

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-object v0

    :pswitch_3e
    const-string v10, "section_type=1"

    sget-object v0, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FRIENDS:Landroid/net/Uri;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "section_type=1"

    const-string v6, "last_section_refresh DESC, section_index ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :pswitch_5c
    new-instance v3, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lco/vine/android/ContactEntry;->sUri:Landroid/net/Uri;

    sget-object v6, Lco/vine/android/ContactEntry;->sProjection:[Ljava/lang/String;

    const-string v7, "mimetype=? OR mimetype=?"

    sget-object v8, Lco/vine/android/ContactEntry;->sSelectionArgs:[Ljava/lang/String;

    const-string v9, "contact_id ASC "

    invoke-direct/range {v3 .. v9}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_3d

    :cond_71
    const/4 v0, 0x1

    goto :goto_18

    nop

    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_5c
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const v0, 0x7f030047

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/InboxFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onGetMessageInboxComplete(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-ne v0, v1, :cond_c

    if-nez p1, :cond_10

    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateContactEntries()V

    :cond_c
    :goto_c
    invoke-direct {p0, v2}, Lco/vine/android/InboxFragment;->invalidateEmptyView(Z)V

    return-void

    :cond_10
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/ContactsMenuAdapter;->clear()V

    iput-boolean v2, p0, Lco/vine/android/InboxFragment;->mIsAddressBookShowing:Z

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressAdapter:Lco/vine/android/widget/ContactsMenuAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/ContactsMenuAdapter;->notifyDataSetChanged()V

    goto :goto_c
.end method

.method public onInboxCursorClicked(Landroid/database/Cursor;Landroid/view/View;)V
    .registers 16

    const/16 v12, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v9, 0xf

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const/16 v9, 0xe

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-gt v9, v6, :cond_3e

    :cond_18
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xb

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v6, :cond_3c

    :goto_28
    const/16 v9, 0xa

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/BaseActionBarActivity;

    invoke-static/range {v0 .. v7}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lco/vine/android/InboxFragment;->startActivity(Landroid/content/Intent;)V

    :goto_3b
    return-void

    :cond_3c
    move v6, v7

    goto :goto_28

    :cond_3e
    iget-object v9, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lco/vine/android/client/AppController;->retryMessagesInConversationRowId(J)V

    const v9, 0x7f0a0108

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0e0142

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0a010a

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a010b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3b
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    if-ltz p3, :cond_18

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, p3}, Lco/vine/android/widget/SectionAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_54

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, p3}, Lco/vine/android/widget/SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v0, p2}, Lco/vine/android/InboxFragment;->onInboxCursorClicked(Landroid/database/Cursor;Landroid/view/View;)V

    goto :goto_18

    :pswitch_25
    iget-wide v0, p0, Lco/vine/android/InboxFragment;->mWaitingToStartId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iput-wide p4, p0, Lco/vine/android/InboxFragment;->mWaitingToStartId:J

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p5, v1}, Lco/vine/android/client/AppController;->fetchConversationRowIdFromUserRemoteId(JI)V

    goto :goto_18

    :pswitch_36
    iget-object v1, p0, Lco/vine/android/InboxFragment;->mListener:Lco/vine/android/OnContactEntryClickedListener;

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mContactEntryMap:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/ContactEntry;

    invoke-virtual {v1, p0, v0}, Lco/vine/android/OnContactEntryClickedListener;->onClick(Landroid/support/v4/app/Fragment;Lco/vine/android/ContactEntry;)V

    goto :goto_18

    :cond_48
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0, p3}, Lco/vine/android/MessageBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v0, p2}, Lco/vine/android/InboxFragment;->onInboxCursorClicked(Landroid/database/Cursor;Landroid/view/View;)V

    goto :goto_18

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_19
        :pswitch_25
        :pswitch_36
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_c0

    :cond_b
    :goto_b
    const-string v1, "Load finished: {}."

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lco/vine/android/InboxFragment;->invalidateEmptyView(Z)V

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    if-eq v1, v6, :cond_24

    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateContactEntries()V

    :cond_24
    return-void

    :pswitch_25
    iget-object v1, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v1}, Lco/vine/android/MenuUsersAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_32
    if-eqz p2, :cond_48

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/InboxFragment;->mCurrentLastId:J

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_48
    iget-object v1, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v1, p2}, Lco/vine/android/MenuUsersAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v1}, Lco/vine/android/MenuUsersAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->isFetched(I)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p0, v6, v4, v3}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_b

    :cond_5f
    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->makeSadFaceHeaderView()V

    invoke-virtual {p0, v6}, Lco/vine/android/InboxFragment;->hideProgress(I)V

    goto :goto_b

    :pswitch_66
    iput v5, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    if-eqz p2, :cond_83

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_83

    :cond_70
    iget v1, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lco/vine/android/InboxFragment;->mUnReadCount:I

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_83
    invoke-direct {p0}, Lco/vine/android/InboxFragment;->invalidateUnreadCount()V

    :pswitch_86
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lco/vine/android/InboxFragment;->onLoadMessageBoxComplete(ILandroid/database/Cursor;)V

    goto/16 :goto_b

    :pswitch_91
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9a

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9a
    if-eqz p2, :cond_a1

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_a1
    if-eqz p2, :cond_b

    iput-object p2, p0, Lco/vine/android/InboxFragment;->mAddressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;

    if-nez v1, :cond_b

    new-instance v1, Lco/vine/android/InboxFragment$SortMenuContactsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/InboxFragment$SortMenuContactsTask;-><init>(Lco/vine/android/InboxFragment;Lco/vine/android/InboxFragment$1;)V

    iput-object v1, p0, Lco/vine/android/InboxFragment;->mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Landroid/database/Cursor;

    iget-object v4, p0, Lco/vine/android/InboxFragment;->mAddressCursor:Landroid/database/Cursor;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lco/vine/android/InboxFragment$SortMenuContactsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_b

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_86
        :pswitch_25
        :pswitch_91
        :pswitch_66
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lco/vine/android/InboxFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoadMessageBoxComplete(ILandroid/database/Cursor;)V
    .registers 9

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_37

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    :goto_7
    if-ne p1, v3, :cond_3a

    move v1, v3

    :goto_a
    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz p2, :cond_24

    if-ne p1, v3, :cond_3c

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lco/vine/android/InboxFragment;->mOthersCursorCount:I

    :goto_18
    if-eqz v2, :cond_1f

    iget-object v3, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1f
    iget-object v3, p0, Lco/vine/android/InboxFragment;->mChangeObserver:Lco/vine/android/BaseCursorAdapterFragment$ChangeObserver;

    invoke-interface {p2, v3}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_24
    invoke-virtual {v0, p2}, Lco/vine/android/MessageBoxAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0, v1}, Lco/vine/android/InboxFragment;->isFetched(I)Z

    move-result v3

    if-nez v3, :cond_43

    invoke-virtual {p0, v5, v1, v4}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    goto :goto_7

    :cond_3a
    move v1, v4

    goto :goto_a

    :cond_3c
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lco/vine/android/InboxFragment;->mInboxCursorCount:I

    goto :goto_18

    :cond_43
    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->showSadface(Z)V

    goto :goto_36

    :cond_47
    invoke-virtual {p0, v5}, Lco/vine/android/InboxFragment;->hideProgress(I)V

    goto :goto_36
.end method

.method public onOpened()V
    .registers 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v6, v0, Lco/vine/android/HomeTabActivity;

    if-eqz v6, :cond_66

    invoke-static {v0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lco/vine/android/util/MuteUtil;->ACTION_CHANGED_TO_MUTE:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "co.vine.android.BROADCAST"

    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1b
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-static {v0}, Lco/vine/android/client/VineAccountHelper;->getActiveAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "vmOnboardInProgress"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_66

    invoke-static {v2, v1}, Lco/vine/android/client/VineAccountHelper;->shouldShowStoreContactsPrompt(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_66

    const/4 v6, 0x1

    invoke-static {v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lco/vine/android/HomeTabActivity;

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V

    const v6, 0x7f0e0234

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v6, 0x7f0e0233

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v6, 0x7f0e014d

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v6, 0x7f0e0163

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    :try_start_5a
    check-cast v0, Lco/vine/android/HomeTabActivity;

    invoke-virtual {v0}, Lco/vine/android/HomeTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    invoke-static {v2, v1}, Lco/vine/android/client/VineAccountHelper;->setDidShowStoreContactsPrompt(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_66} :catch_67

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v3

    const-string v6, "Failed to show contact agreement box. "

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_66
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onPause()V

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mColorChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 3
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

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/MessageBoxAdapter;->setUserImages(Ljava/util/HashMap;)V

    :cond_9
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/MenuUsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    :cond_12
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/MessageBoxAdapter;->setUserImages(Ljava/util/HashMap;)V

    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-virtual {p0, v3}, Lco/vine/android/InboxFragment;->initLoader(I)V

    :cond_13
    :goto_13
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_51

    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->initLoader(I)V

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v0}, Lco/vine/android/MenuUsersAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_63

    invoke-virtual {p0, v5}, Lco/vine/android/InboxFragment;->initLoader(I)V

    :cond_29
    :goto_29
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAddressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_30

    invoke-virtual {p0, v1}, Lco/vine/android/InboxFragment;->initLoader(I)V

    :cond_30
    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mColorChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lco/vine/android/util/Util;->COLOR_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v3, "co.vine.android.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_3f
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, v3}, Lco/vine/android/InboxFragment;->isFetched(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, v1, v3, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_13

    :cond_51
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mOtherAdapter:Lco/vine/android/MessageBoxAdapter;

    invoke-virtual {v0}, Lco/vine/android/MessageBoxAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v4}, Lco/vine/android/InboxFragment;->isFetched(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, v1, v4, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_1e

    :cond_63
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mFriendsAdapter:Lco/vine/android/MenuUsersAdapter;

    invoke-virtual {v0}, Lco/vine/android/MenuUsersAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v5}, Lco/vine/android/InboxFragment;->isFetched(I)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0, v1, v1, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_29
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mAnchorManager:Lco/vine/android/util/StringAnchorManager;

    invoke-virtual {v0}, Lco/vine/android/util/StringAnchorManager;->haveMore()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-boolean v0, p0, Lco/vine/android/InboxFragment;->mIsAddressBookShowing:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->addEntriesToAddressAdapter()V

    :cond_1c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/InboxFragment;->hideProgress(I)V

    goto :goto_14
.end method

.method protected refresh()V
    .registers 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x3

    invoke-virtual {p0, v3, v0, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x4

    invoke-virtual {p0, v3, v0, v2}, Lco/vine/android/InboxFragment;->fetchContent(IIZ)V

    goto :goto_c
.end method

.method protected setFetched(I)V
    .registers 3

    iget v0, p0, Lco/vine/android/InboxFragment;->mFetchFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lco/vine/android/InboxFragment;->mFetchFlags:I

    return-void
.end method

.method public setPersonalizedColor(I)V
    .registers 5

    iput p1, p0, Lco/vine/android/InboxFragment;->mColor:I

    sget v0, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq p1, v0, :cond_8

    if-gtz p1, :cond_18

    :cond_8
    const v0, 0xffffff

    invoke-virtual {p0}, Lco/vine/android/InboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    and-int p1, v0, v1

    :cond_18
    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->colorizePTR(I)V

    :cond_26
    return-void
.end method
