.class public Lcom/pinguo/share/at/AtActivity;
.super Landroid/app/Activity;
.source "AtActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;,
        Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final AFTER_FETCH_ATS:I = 0x3

.field public static final AT_NAME:Ljava/lang/String; = "at_name"

.field public static final AT_QQ_UIDS:Ljava/lang/String; = "at_qq_uids"

.field public static final AT_SINA_UIDS:Ljava/lang/String; = "at_sina_uids"

.field public static final AT_VALUE:Ljava/lang/String; = "at_value"

.field private static final FAIL:I = 0x2

.field public static final IS_AT:Ljava/lang/String; = "is_at"

.field private static final LASTEST_COUNT:I = 0x6

.field private static final MAX_AT_COUNT:I = 0x14

.field private static final SHOW_ATTENTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AtActivity"


# instance fields
.field private isPaused:Z

.field private mAtList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAtsFetcher:Lcom/pinguo/share/at/IAtProcess;

.field private mBtnClear:Landroid/view/View;

.field private mCanceledResult:Z

.field private mChangeWebOnClick:Landroid/view/View$OnClickListener;

.field private mCurSiteAtCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mLastSelectedQq:[Ljava/lang/String;

.field private mLastSelectedSina:[Ljava/lang/String;

.field private mNowMiddle:Landroid/view/View;

.field private mNowOrientation:I

.field private mOnAttentionListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mSearchParam:Ljava/lang/String;

.field private mStartFetch:Z

.field private mTextChangeListener:Landroid/text/TextWatcher;

.field private mTitleView:Landroid/view/ViewGroup;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private myHandler:Landroid/os/Handler;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    iput v1, p0, Lcom/pinguo/share/at/AtActivity;->mNowOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mViewList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z

    iput-boolean v1, p0, Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z

    iput-boolean v1, p0, Lcom/pinguo/share/at/AtActivity;->isPaused:Z

    new-instance v0, Lcom/pinguo/share/at/AtActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/at/AtActivity$1;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mChangeWebOnClick:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/pinguo/share/at/AtActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/share/at/AtActivity$2;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mOnAttentionListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/pinguo/share/at/AtActivity$3;

    invoke-direct {v0, p0}, Lcom/pinguo/share/at/AtActivity$3;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mTextChangeListener:Landroid/text/TextWatcher;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/share/at/AtActivity$4;

    invoke-direct {v0, p0}, Lcom/pinguo/share/at/AtActivity$4;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mAtsFetcher:Lcom/pinguo/share/at/IAtProcess;

    new-instance v0, Lcom/pinguo/share/at/AtActivity$5;

    invoke-direct {v0, p0}, Lcom/pinguo/share/at/AtActivity$5;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    iput-object v0, p0, Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/at/AtActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/share/at/AtActivity;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/share/at/AtActivity;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/share/at/AtActivity;[Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/share/at/AtActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/share/at/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mOnAttentionListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pinguo/share/at/AtActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/share/at/AtActivity;->fetchListData(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/pinguo/share/at/AtActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/at/AtActivity;->isPaused:Z

    return v0
.end method

.method static synthetic access$17(Lcom/pinguo/share/at/AtActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->restoreTextChangeListener()V

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/share/at/AtActivity;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pinguo/share/at/AtActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/share/at/AtActivity;->notifyListDataChanged(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/share/at/AtActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/share/at/AtActivity;->mNowOrientation:I

    return v0
.end method

.method static synthetic access$20(Lcom/pinguo/share/at/AtActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->clearSearchParam()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/share/at/AtActivity;Lcom/pinguo/share/at/AtAttentionBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/share/at/AtActivity;->updateCachedCount(Lcom/pinguo/share/at/AtAttentionBean;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mBtnClear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/share/at/AtActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/share/at/AtActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/share/at/AtActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;

    return-object v0
.end method

.method private addLatest(Lcom/pinguo/share/at/AtBean;Lcom/pinguo/share/at/AtAttentionBean;)V
    .registers 7

    invoke-virtual {p1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v2}, Lcom/pinguo/share/at/AtBean;->setmLastestKeys(Ljava/util/LinkedList;)V

    :cond_e
    invoke-virtual {p1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    :goto_1c
    invoke-virtual {p1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {p2}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1c
.end method

.method private clearSearchParam()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method private discardFetchResult()Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z

    if-eqz v1, :cond_12

    iput-boolean v0, p0, Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private fetchListData(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->removeTextChangeListener()V

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mAtList:Ljava/util/List;

    iget v1, p0, Lcom/pinguo/share/at/AtActivity;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mAtsFetcher:Lcom/pinguo/share/at/IAtProcess;

    invoke-static {v0, p0, v1, p1}, Lcom/pinguo/share/at/AtManager;->getPeoples(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/app/Activity;Lcom/pinguo/share/at/IAtProcess;Z)V

    return-void
.end method

.method private notifyListDataChanged(Landroid/view/View;)V
    .registers 10

    const v7, 0x7f07001a

    const v6, 0x7f070017

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_13

    :cond_12
    return-void

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_12

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0a0074

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0075

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iput v2, p0, Lcom/pinguo/share/at/AtActivity;->position:I

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_74

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/pinguo/share/at/AtActivity;->fetchListData(Z)V

    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_74
    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->removeTextChangeListener()V

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->restoreTextChangeListener()V

    goto :goto_71

    :cond_7b
    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_71
.end method

.method private removeLatest(Ljava/util/LinkedList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_d

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/pinguo/share/at/AtActivity;->removeLatest(Ljava/util/LinkedList;)V

    :cond_d
    return-void
.end method

.method private removeTextChangeListener()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    :goto_1d
    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pinguo/share/at/AtActivity;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const-string/jumbo v1, "AtActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remove text watcher :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3d
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    goto :goto_1d
.end method

.method private restoreTextChangeListener()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "AtActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restore text watcher :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/share/at/AtActivity;->mSearchParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private updateCachedCount(Lcom/pinguo/share/at/AtAttentionBean;)V
    .registers 10

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/pinguo/share/at/AtAttentionBean;->getSite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/share/at/AtAttentionBean;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4b

    add-int/lit8 v2, v0, 0x1

    :goto_18
    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/pinguo/share/at/AtAttentionBean;->getSite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/pinguo/share/at/AtActivity;->position:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0075

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v4, "(%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4b
    add-int/lit8 v2, v0, -0x1

    goto :goto_18
.end method


# virtual methods
.method public atResult(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->finish()V

    goto :goto_6
.end method

.method public finish()V
    .registers 4

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/pinguo/share/at/AtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public finishAt(Landroid/view/View;)V
    .registers 16

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/pinguo/share/at/AtActivity;->mViewList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1d
    :goto_1d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_65

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "at_value"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "is_at"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v12, "at_sina_uids"

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "at_qq_uids"

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x1

    invoke-virtual {p0, v11, v3}, Lcom/pinguo/share/at/AtActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->finish()V

    goto :goto_6

    :cond_65
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_12e

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/at/AtBean;

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v12

    if-eqz v12, :cond_87

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v6

    :cond_87
    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_93
    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_b9

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v12

    if-eqz v12, :cond_1d

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-eq v12, v6, :cond_1d

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/pinguo/share/at/AtActivity;->removeLatest(Ljava/util/LinkedList;)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/pinguo/share/at/AtManager;->saveFile(Landroid/content/Context;Lcom/pinguo/share/at/AtBean;)V

    goto/16 :goto_1d

    :cond_b9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->isSelected()Z

    move-result v12

    if-eqz v12, :cond_93

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "sina"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_106

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_d9
    :goto_d9
    if-eqz v2, :cond_11b

    if-eqz v4, :cond_e3

    const-string/jumbo v12, "|"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e3
    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getAt()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_fe
    invoke-direct {p0, v1, v0}, Lcom/pinguo/share/at/AtActivity;->addLatest(Lcom/pinguo/share/at/AtBean;Lcom/pinguo/share/at/AtAttentionBean;)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/pinguo/share/at/AtAttentionBean;->setSelected(Z)V

    goto :goto_93

    :cond_106
    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "qq"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d9

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    :cond_11b
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtAttentionBean;->getAt()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    :cond_12e
    iget-object v12, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    if-eqz v12, :cond_1d

    iget-object v12, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    invoke-static {v7, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_1d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->requestWindowFeature(I)Z

    const v9, 0x7f03000f

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->setContentView(I)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "at_sina_uids"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "at_qq_uids"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    const v9, 0x7f0a0064

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    const v9, 0x7f0a0069

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager;

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/pinguo/share/bind/BindManager;->getAtList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mAtList:Ljava/util/List;

    const v9, 0x7f0a0067

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    const v9, 0x7f0a0068

    invoke-virtual {p0, v9}, Lcom/pinguo/share/at/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mBtnClear:Landroid/view/View;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mBtnClear:Landroid/view/View;

    new-instance v10, Lcom/pinguo/share/at/AtActivity$6;

    invoke-direct {v10, p0}, Lcom/pinguo/share/at/AtActivity$6;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mAtList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_ca

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v10, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;

    iget-object v11, p0, Lcom/pinguo/share/at/AtActivity;->mViewList:Ljava/util/List;

    invoke-direct {v10, p0, v11}, Lcom/pinguo/share/at/AtActivity$MyPagerAdapter;-><init>(Lcom/pinguo/share/at/AtActivity;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v10, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;

    invoke-direct {v10, p0}, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;-><init>(Lcom/pinguo/share/at/AtActivity;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v9, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/pinguo/share/at/AtActivity;->notifyListDataChanged(Landroid/view/View;)V

    return-void

    :cond_ca
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030014

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030012

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v10, 0x7f0a0074

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x7f0a0075

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v10, v8, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const-string/jumbo v10, "sina"

    iget-object v11, v8, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15d

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;

    if-nez v10, :cond_159

    const/4 v0, 0x0

    :cond_118
    :goto_118
    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mCurSiteAtCount:Ljava/util/HashMap;

    iget-object v11, v8, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "(%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mViewList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f80

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mChangeWebOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9d

    :cond_159
    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;

    array-length v0, v10

    goto :goto_118

    :cond_15d
    const-string/jumbo v10, "qq"

    iget-object v11, v8, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_118

    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    if-nez v10, :cond_16e

    const/4 v0, 0x0

    :goto_16d
    goto :goto_118

    :cond_16e
    iget-object v10, p0, Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;

    array-length v0, v10

    goto :goto_16d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    packed-switch p1, :pswitch_data_10

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_7

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnPause(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/share/at/AtActivity;->isPaused:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/pinguo/share/ShareAccess;->statOnResume(Landroid/app/Activity;)V

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/pinguo/share/at/AtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iput-boolean v2, p0, Lcom/pinguo/share/at/AtActivity;->isPaused:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public searchUser(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/at/AtAttentionBean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v12, "AtActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "searchUser "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/Throwable;

    invoke-direct {v14}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/at/AtBean;

    const/4 v7, 0x0

    if-nez p1, :cond_eb

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;

    move-result-object v12

    if-nez v12, :cond_3d

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_48
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3c

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Lcom/pinguo/share/at/AtBean;->getLastestAttention()Ljava/util/List;

    move-result-object v7

    :cond_54
    iget-object v12, p0, Lcom/pinguo/share/at/AtActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_77

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_71
    :goto_71
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_109

    :cond_77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_ab

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_82
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_124

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_ab

    new-instance v8, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-direct {v8}, Lcom/pinguo/share/at/AtAttentionBean;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/pinguo/share/at/AtAttentionBean;->setTag(Z)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080069

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/pinguo/share/at/AtAttentionBean;->setGroupType(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_ab
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_ce

    new-instance v11, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-direct {v11}, Lcom/pinguo/share/at/AtAttentionBean;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/pinguo/share/at/AtAttentionBean;->setTag(Z)V

    invoke-virtual {p0}, Lcom/pinguo/share/at/AtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08006a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pinguo/share/at/AtAttentionBean;->setGroupType(Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_ce
    iget-object v12, p0, Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;

    const v13, 0x7f0a006e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/at/AtListAdapter;

    invoke-virtual {v0, v5}, Lcom/pinguo/share/at/AtListAdapter;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/pinguo/share/at/AtListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3c

    :cond_eb
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_ef
    :goto_ef
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_f9

    move-object/from16 v9, p1

    goto/16 :goto_48

    :cond_f9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-virtual {v4}, Lcom/pinguo/share/at/AtAttentionBean;->isTag()Z

    move-result v12

    if-eqz v12, :cond_ef

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_ef

    :cond_109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-virtual {v4}, Lcom/pinguo/share/at/AtAttentionBean;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_71

    :cond_124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_82

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_82
.end method

.method protected setOrientationIndicator(IZ)V
    .registers 3

    return-void
.end method

.method public switchWebSite(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
