.class public Lcom/bbm/ui/activities/ChannelChatListActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelChatListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Lcom/bbm/d/a;

.field private b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private c:Landroid/view/View;

.field private d:Lcom/bbm/ui/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/gk",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bbm/d/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/q",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private final q:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->a:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/ce;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ce;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->q:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->a:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/ui/activities/eu;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "conversationUri"

    iget-object v4, p1, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v4, v4, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->a:Lcom/bbm/d/a;

    const-string v2, "conversation"

    invoke-static {v0, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/ui/activities/eu;)V
    .registers 5

    new-instance v0, Lcom/bbm/util/d/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/bbm/ui/activities/ck;

    invoke-direct {v2, p0, p1}, Lcom/bbm/ui/activities/ck;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/ui/activities/eu;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/util/d/a;-><init>(Landroid/content/Context;ZLcom/bbm/util/d/c;)V

    invoke-virtual {v0}, Lcom/bbm/util/d/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChannelChatListActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/ChannelChatListActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    new-instance v1, Lcom/bbm/ui/activities/cf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/cf;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->p:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->c:Landroid/view/View;

    new-instance v0, Lcom/bbm/ui/activities/ch;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ch;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->e:Lcom/bbm/d/b/q;

    new-instance v0, Lcom/bbm/ui/activities/ci;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->e:Lcom/bbm/d/b/q;

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/bbm/ui/activities/ci;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->d:Lcom/bbm/ui/gk;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->d:Lcom/bbm/ui/gk;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/w;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/az;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->c:Landroid/view/View;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/cg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/cg;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/eu;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "conversation_uri"

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v0, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "open"

    const-string v1, "Conversation"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040001

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/eu;

    iget-object v1, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    new-instance v2, Lcom/bbm/ui/activities/cl;

    invoke-direct {v2, p0, v1, v0}, Lcom/bbm/ui/activities/cl;-><init>(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/d/es;Lcom/bbm/ui/activities/eu;)V

    invoke-static {v2}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->d:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->q:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->d:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelChatListActivity;->q:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    return-void
.end method
