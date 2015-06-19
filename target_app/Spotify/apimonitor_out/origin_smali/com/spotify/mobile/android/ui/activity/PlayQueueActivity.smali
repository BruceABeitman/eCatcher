.class public Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Landroid/widget/ImageButton;

.field private p:Lcom/spotify/mobile/android/ui/adapter/ac;

.field private q:Lcom/spotify/mobile/android/ui/actions/d;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private s:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->q:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->s:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->t:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->q:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)Lcom/spotify/mobile/android/ui/adapter/ac;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->p:Lcom/spotify/mobile/android/ui/adapter/ac;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300c2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->setContentView(I)V

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/ac;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->p:Lcom/spotify/mobile/android/ui/adapter/ac;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->e()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0189

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->s:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->e()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018a

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->t:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->p:Lcom/spotify/mobile/android/ui/adapter/ac;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->n:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->x:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f02eb

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayQueueActivity;->n:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/j;->j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
