.class public Lcom/umeng/fb/ConversationActivity;
.super Landroid/app/Activity;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/ConversationActivity$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:I

.field c:I

.field d:Landroid/widget/EditText;

.field private f:Lcom/umeng/fb/FeedbackAgent;

.field private g:Lcom/umeng/fb/model/Conversation;

.field private h:Lcom/umeng/fb/ConversationActivity$a;

.field private i:Landroid/widget/ListView;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/ConversationActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->g:Lcom/umeng/fb/model/Conversation;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_e
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_22

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1e
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_22
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1e
.end method

.method static synthetic a(Lcom/umeng/fb/ConversationActivity;I)V
    .registers 2

    iput p1, p0, Lcom/umeng/fb/ConversationActivity;->j:I

    return-void
.end method

.method static synthetic b(Lcom/umeng/fb/ConversationActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .registers 6

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/umeng/fb/b/d;->e(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/umeng/fb/ConversationActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/ConversationActivity;->b:I

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/ConversationActivity;->c:I

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/umeng/fb/ConversationActivity;->b:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/umeng/fb/h;

    invoke-direct {v1, p0}, Lcom/umeng/fb/h;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/umeng/fb/i;

    invoke-direct {v1, p0}, Lcom/umeng/fb/i;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/fb/ConversationActivity;)I
    .registers 2

    iget v0, p0, Lcom/umeng/fb/ConversationActivity;->j:I

    return v0
.end method

.method static synthetic d(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/ConversationActivity$a;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->h:Lcom/umeng/fb/ConversationActivity$a;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 3

    new-instance v0, Lcom/umeng/fb/j;

    invoke-direct {v0, p0}, Lcom/umeng/fb/j;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->g:Lcom/umeng/fb/model/Conversation;

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/umeng/fb/b/d;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->setContentView(I)V

    :try_start_a
    new-instance v0, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v0, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->f:Lcom/umeng/fb/FeedbackAgent;

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->f:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->g:Lcom/umeng/fb/model/Conversation;

    invoke-static {p0}, Lcom/umeng/fb/b/c;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/umeng/fb/ConversationActivity;->b()V

    new-instance v0, Lcom/umeng/fb/ConversationActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/umeng/fb/ConversationActivity$a;-><init>(Lcom/umeng/fb/ConversationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->h:Lcom/umeng/fb/ConversationActivity$a;

    iget-object v0, p0, Lcom/umeng/fb/ConversationActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->h:Lcom/umeng/fb/ConversationActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/umeng/fb/ConversationActivity;->a()V

    invoke-static {p0}, Lcom/umeng/fb/b/c;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/fb/d;

    invoke-direct {v1, p0}, Lcom/umeng/fb/d;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/umeng/fb/ConversationActivity;->f:Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v1}, Lcom/umeng/fb/FeedbackAgent;->getUserInfoLastUpdateAt()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5a

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5a
    invoke-static {p0}, Lcom/umeng/fb/b/c;->d(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/fb/f;

    invoke-direct {v1, p0}, Lcom/umeng/fb/f;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/umeng/fb/b/c;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/fb/ConversationActivity;->d:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/umeng/fb/b/c;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/fb/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/fb/g;

    invoke-direct {v1, p0}, Lcom/umeng/fb/g;-><init>(Lcom/umeng/fb/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_86} :catch_87

    :goto_86
    return-void

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/umeng/fb/ConversationActivity;->finish()V

    goto :goto_86
.end method
