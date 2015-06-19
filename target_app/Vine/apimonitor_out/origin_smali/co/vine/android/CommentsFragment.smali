.class public Lco/vine/android/CommentsFragment;
.super Lco/vine/android/BaseArrayListFragment;
.source "CommentsFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/Filterable;
.implements Lco/vine/android/widget/PopupEditText$PopupEditTextListener;
.implements Lco/vine/android/widget/ConversationList$GetMoreListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/CommentsFragment$CommentsAppSessionListener;
    }
.end annotation


# static fields
.field public static final ARG_HIDE_KEYBOARD:Ljava/lang/String; = "hide_keyboard"

.field public static final ARG_POST_AUTHOR_ID:Ljava/lang/String; = "post_author_id"

.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field public static final DEFAULT_PAGE_SIZE:I = 0x14

.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Comments List"

.field private static final MAX_CHARS:I = 0x8c

.field private static final STATE_FETCHED:Ljava/lang/String; = "fetched"

.field private static mActionMode:Landroid/support/v7/view/ActionMode;

.field private static mSelectedCommentId:Ljava/lang/String;


# instance fields
.field private final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private final mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mAnchor:J

.field private mEdit:Lco/vine/android/widget/PopupEditText;

.field private mFetched:Z

.field private mFilter:Landroid/widget/Filter;

.field private mLastTopItemId:J

.field private mLastTopItemPixelOffset:I

.field private mNextPage:I

.field private mPostAuthorId:J

.field private mPostId:J

.field private mSelectedView:Landroid/view/View;

.field private mSendButton:Landroid/widget/ImageView;

.field private mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

.field private mTokenizer:Lco/vine/android/ComposeTokenizer;

.field private mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/BaseArrayListFragment;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/CommentsFragment;->mLastTopItemId:J

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/CommentsFragment;->mLastTopItemPixelOffset:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/CommentsFragment;->mAnchor:J

    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/CommentsFragment;->mNextPage:I

    new-instance v0, Lco/vine/android/CommentsFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/CommentsFragment$1;-><init>(Lco/vine/android/CommentsFragment;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/CommentsFragment;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lco/vine/android/CommentsFragment;->mSelectedCommentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lco/vine/android/CommentsFragment;)Lco/vine/android/UsersAutoCompleteAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lco/vine/android/CommentsFragment;)Lco/vine/android/widget/PopupEditText;
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/CommentsFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;
    .registers 1

    sput-object p0, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$400(Lco/vine/android/CommentsFragment;)I
    .registers 2

    iget v0, p0, Lco/vine/android/CommentsFragment;->mNextPage:I

    return v0
.end method

.method static synthetic access$402(Lco/vine/android/CommentsFragment;I)I
    .registers 2

    iput p1, p0, Lco/vine/android/CommentsFragment;->mNextPage:I

    return p1
.end method

.method static synthetic access$502(Lco/vine/android/CommentsFragment;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/CommentsFragment;->mAnchor:J

    return-wide p1
.end method

.method static synthetic access$600(Lco/vine/android/CommentsFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->saveTopItemInfo()V

    return-void
.end method

.method static synthetic access$700(Lco/vine/android/CommentsFragment;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/CommentsFragment;->mLastTopItemId:J

    return-wide v0
.end method

.method static synthetic access$800(Lco/vine/android/CommentsFragment;)I
    .registers 2

    iget v0, p0, Lco/vine/android/CommentsFragment;->mLastTopItemPixelOffset:I

    return v0
.end method

.method static synthetic access$900(Lco/vine/android/CommentsFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    return v0
.end method

.method private editTextLength()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private fetchContent()V
    .registers 8

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->hasPendingRequest()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    iget v3, p0, Lco/vine/android/CommentsFragment;->mNextPage:I

    iget-wide v4, p0, Lco/vine/android/CommentsFragment;->mAnchor:J

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->fetchComments(JIJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6
.end method

.method private insertText(Ljava/lang/String;)V
    .registers 5

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2b

    if-ltz v1, :cond_2b

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->length()I

    move-result v2

    if-gt v0, v2, :cond_2b

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2b
    return-void
.end method

.method private saveTopItemInfo()V
    .registers 5

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lco/vine/android/CommentsFragment;->mLastTopItemId:J

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lco/vine/android/CommentsFragment;->mLastTopItemPixelOffset:I

    goto :goto_8
.end method

.method private sendComment()V
    .registers 4

    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->editTextLength()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_13

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0063

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showTopToast(Landroid/content/Context;I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->postComment(Landroid/widget/EditText;)V

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->clearFocus()V

    goto :goto_12
.end method

.method private validate(Landroid/widget/EditText;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 4

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mFilter:Landroid/widget/Filter;

    if-nez v2, :cond_11

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v0

    new-instance v2, Lco/vine/android/ComposeFilter;

    invoke-direct {v2, p0, v0, v1}, Lco/vine/android/ComposeFilter;-><init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;J)V

    iput-object v2, p0, Lco/vine/android/CommentsFragment;->mFilter:Landroid/widget/Filter;

    :cond_11
    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mFilter:Landroid/widget/Filter;

    return-object v2
.end method

.method public getMore()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->fetchContent()V

    return-void
.end method

.method public getPopupAdapter()Landroid/support/v4/widget/CursorAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public hideProgress(I)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->hideProgress(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lco/vine/android/widget/ConversationList;

    invoke-virtual {v0}, Lco/vine/android/widget/ConversationList;->hideProgress()V

    :cond_d
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_keyboard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v1}, Lco/vine/android/widget/PopupEditText;->requestFocus()Z

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    :cond_1f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, v0, Lco/vine/android/CommentViewHolder;->userId:J

    const-string v4, "Comments List"

    invoke-static {v1, v2, v3, v4}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    :goto_18
    return-void

    :pswitch_19
    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->sendComment()V

    goto :goto_18

    nop

    :pswitch_data_1e
    .packed-switch 0x7f0a0082
        :pswitch_19
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    if-eqz p1, :cond_25

    const-string v0, "fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    :cond_25
    new-instance v0, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/CommentsFragment$CommentsAppSessionListener;-><init>(Lco/vine/android/CommentsFragment;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    new-instance v0, Lco/vine/android/UsersAutoCompleteAdapter;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2}, Lco/vine/android/UsersAutoCompleteAdapter;-><init>(Landroid/app/Activity;Lco/vine/android/client/AppController;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    new-instance v0, Lco/vine/android/TagsAutoCompleteAdapter;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v0, v1, v2}, Lco/vine/android/TagsAutoCompleteAdapter;-><init>(Landroid/app/Activity;Lco/vine/android/client/AppController;)V

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const v0, 0x7f100002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseArrayListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const v0, 0x7f030026

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/CommentsFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onDestroy()V

    invoke-static {}, Lco/vine/android/provider/VineSuggestionsProvider;->clearRealtimeUserSuggestions()V

    invoke-static {}, Lco/vine/android/provider/VineSuggestionsProvider;->clearRealtimeTagSuggestions()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->sendComment()V

    :cond_f
    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_12
    .packed-switch 0x7f0a0083
        :pswitch_9
    .end packed-switch
.end method

.method public onFiltering(Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    const-string v4, "mention"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1e
    iget-object v6, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v6, v4}, Lco/vine/android/client/AppController;->getTypeaheadFetchThreshold(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_51

    const-string v6, "mention"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-static {v2}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeUserSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_68

    :goto_3e
    if-eqz v0, :cond_51

    const-string v5, "mention"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    iget-object v5, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v2}, Lco/vine/android/client/AppController;->fetchUserTypeahead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    :cond_51
    :goto_51
    return-void

    :cond_52
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    const-string v4, "tag"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_65
    const/4 v4, 0x0

    const/4 v2, 0x0

    goto :goto_1e

    :cond_68
    move v0, v5

    goto :goto_3e

    :cond_6a
    const-string v6, "tag"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-static {v2}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeTagSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_79

    :goto_78
    goto :goto_3e

    :cond_79
    move v0, v5

    goto :goto_78

    :cond_7b
    const/4 v0, 0x0

    goto :goto_3e

    :cond_7d
    const-string v5, "tag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v2}, Lco/vine/android/client/AppController;->fetchTagTypeahead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_51
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, v0, Lco/vine/android/CommentViewHolder;->userId:J

    const-string v4, "Comments List"

    invoke-static {v1, v2, v3, v4}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v5, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v5, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lco/vine/android/CommentViewHolder;

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/CommentViewHolder;

    iget-object v5, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    iget-wide v5, v0, Lco/vine/android/CommentViewHolder;->userId:J

    cmp-long v5, v1, v5

    if-eqz v5, :cond_27

    iget-wide v5, p0, Lco/vine/android/CommentsFragment;->mPostAuthorId:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_6

    :cond_27
    iput-object p2, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mSelectedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/CommentViewHolder;

    iget-object v3, v3, Lco/vine/android/CommentViewHolder;->commentId:Ljava/lang/String;

    sput-object v3, Lco/vine/android/CommentsFragment;->mSelectedCommentId:Ljava/lang/String;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/ActionBarActivity;

    iget-object v5, p0, Lco/vine/android/CommentsFragment;->mActionModeCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBarActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v3

    sput-object v3, Lco/vine/android/CommentsFragment;->mActionMode:Landroid/support/v7/view/ActionMode;

    move v3, v4

    goto :goto_6
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lco/vine/android/BaseArrayListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    const-string v0, "@"

    invoke-direct {p0, v0}, Lco/vine/android/CommentsFragment;->insertText(Ljava/lang/String;)V

    :goto_11
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_13
    const-string v0, "#"

    invoke-direct {p0, v0}, Lco/vine/android/CommentsFragment;->insertText(Ljava/lang/String;)V

    goto :goto_11

    nop

    :pswitch_data_1a
    .packed-switch 0x7f0a023e
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method

.method public onPopupItemSelected(IILjava/lang/CharSequence;J)V
    .registers 6

    return-void
.end method

.method public onPopupShown()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lco/vine/android/CommentsFragment;->fetchContent()V

    :cond_12
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "fetched"

    iget-boolean v1, p0, Lco/vine/android/CommentsFragment;->mFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSpanClicked(Landroid/view/View;ILjava/lang/Object;)V
    .registers 8

    packed-switch p2, :pswitch_data_1e

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "Comments List"

    invoke-static {v0, v1, v2, v3}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_3

    :pswitch_14
    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p3, Ljava/lang/String;

    invoke-static {v0, p3}, Lco/vine/android/HashtagActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    const/high16 v3, -0x100

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v0}, Lco/vine/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mSendButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mSendButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1f
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseArrayListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v2, 0x7f0a0083

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v1, p0}, Lco/vine/android/widget/PopupEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Lco/vine/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lco/vine/android/ComposeTokenizer;

    invoke-direct {v2, p0}, Lco/vine/android/ComposeTokenizer;-><init>(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    iput-object v2, p0, Lco/vine/android/CommentsFragment;->mTokenizer:Lco/vine/android/ComposeTokenizer;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mTokenizer:Lco/vine/android/ComposeTokenizer;

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getTypeaheadThrottle()J

    move-result-wide v3

    invoke-virtual {v1, v2, p0, v3, v4}, Lco/vine/android/widget/PopupEditText;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V

    invoke-virtual {v1, p0}, Lco/vine/android/widget/PopupEditText;->setPopupEditTextListener(Lco/vine/android/widget/PopupEditText$PopupEditTextListener;)V

    iput-object v1, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v2, p0}, Lco/vine/android/widget/PopupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "post_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    const-string v2, "post_author_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/CommentsFragment;->mPostAuthorId:J

    const v2, 0x7f0a0082

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lco/vine/android/CommentsFragment;->mSendButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mSendButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mSendButton:Landroid/widget/ImageView;

    const/high16 v3, -0x100

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    or-int/2addr v3, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lco/vine/android/CommentsAdapter;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v2, v3, v4, p0}, Lco/vine/android/CommentsAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/widget/SpanClickListener;)V

    iput-object v2, p0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    check-cast v2, Lco/vine/android/widget/ConversationList;

    invoke-virtual {v2, p0}, Lco/vine/android/widget/ConversationList;->setGetMoreListener(Lco/vine/android/widget/ConversationList$GetMoreListener;)V

    iget-object v2, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public postComment(Landroid/widget/EditText;)V
    .registers 9

    invoke-direct {p0, p1}, Lco/vine/android/CommentsFragment;->validate(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v6, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/vine/android/CommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f0037

    invoke-direct {v6, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    iput-object v6, p0, Lco/vine/android/CommentsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/CommentsFragment;->mPostId:J

    iget-object v3, p0, Lco/vine/android/CommentsFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    invoke-virtual {v5}, Lco/vine/android/widget/PopupEditText;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->postComment(JLco/vine/android/client/Session;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/CommentsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_4b
    return-void
.end method

.method public setPopupAdapter(Ljava/lang/String;)V
    .registers 4

    const-string v0, "users_adapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    :cond_c
    :goto_c
    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mEdit:Lco/vine/android/widget/PopupEditText;

    iget-object v1, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_14
    const-string v0, "tags_adapter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mTagsAdapter:Lco/vine/android/TagsAutoCompleteAdapter;

    iput-object v0, p0, Lco/vine/android/CommentsFragment;->mTypeaheadAdapter:Landroid/support/v4/widget/CursorAdapter;

    goto :goto_c
.end method

.method public showProgress(I)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->showProgress(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget v0, p0, Lco/vine/android/CommentsFragment;->mNextPage:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lco/vine/android/CommentsFragment;->mListView:Landroid/widget/ListView;

    check-cast v0, Lco/vine/android/widget/ConversationList;

    invoke-virtual {v0}, Lco/vine/android/widget/ConversationList;->showProgress()V

    :cond_11
    return-void
.end method
