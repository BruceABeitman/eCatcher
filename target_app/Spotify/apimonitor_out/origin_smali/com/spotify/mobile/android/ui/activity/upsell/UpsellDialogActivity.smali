.class public Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/support/v4/view/br;

.field private p:Landroid/net/Uri;

.field private q:Lcom/spotify/mobile/android/ui/actions/d;

.field private r:Lcom/spotify/mobile/android/ui/actions/a;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

.field private v:I

.field private w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

.field private x:I

.field private y:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

.field private z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
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

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->q:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->r:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$6;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->F:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->n:Landroid/support/v4/view/br;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "shuffle_content_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "variant"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private varargs a([Landroid/support/v4/view/br;)Lcom/spotify/android/paste/widget/ViewPagerIndicator;
    .registers 6

    const v0, 0x7f0a0241

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/ViewPagerIndicator;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    new-instance v2, Lcom/spotify/mobile/android/util/ui/b;

    invoke-direct {v2}, Lcom/spotify/mobile/android/util/ui/b;-><init>()V

    const/4 v1, 0x0

    :goto_14
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1f

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/ui/b;->a(Landroid/support/v4/view/br;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a(Landroid/support/v4/view/br;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/u;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    return-object v0
.end method

.method private a(IZ)V
    .registers 16

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iput p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->x:I

    if-nez p1, :cond_149

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iget v2, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->a:I

    iget v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->b:I

    iget-boolean v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->d:Z

    new-instance v4, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v4, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b00b0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v5, v6, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    if-nez v1, :cond_e3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080009

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_e3

    move v1, v9

    :goto_5f
    if-eqz v1, :cond_e6

    const v3, 0x7f0f0435

    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/widget/LinearLayout;I)V

    const v3, 0x7f0f0431

    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/widget/LinearLayout;I)V

    const v3, 0x7f0f0432

    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/widget/LinearLayout;I)V

    const v3, 0x7f0f0434

    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/widget/LinearLayout;I)V

    const v3, 0x7f0f0433

    invoke-direct {p0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/widget/LinearLayout;I)V

    :goto_7f
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v1, :cond_ea

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b00ad

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_91
    invoke-virtual {v3, v8, v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/h;->f(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    const v3, 0x7f0f0416

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b00b2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v8, v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-nez v1, :cond_ec

    :goto_d1
    if-eqz p2, :cond_ee

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0418

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_e2
    return-void

    :cond_e3
    move v1, v8

    goto/16 :goto_5f

    :cond_e6
    invoke-virtual {v4, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V

    goto :goto_7f

    :cond_ea
    move v1, v8

    goto :goto_91

    :cond_ec
    move v9, v8

    goto :goto_d1

    :cond_ee
    if-eqz v9, :cond_108

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a()Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    if-ne v1, v2, :cond_108

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0419

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    :cond_108
    if-eqz v9, :cond_120

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0415

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    :cond_120
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0417

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    :cond_134
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0414

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e2

    :cond_149
    sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;->b:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;

    packed-switch p1, :pswitch_data_308

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad variant ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for layout construction."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    move v5, v8

    move v10, v8

    :goto_168
    iget v6, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->v:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/spotify/mobile/android/util/ClientInfo;

    iget v4, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->c:I

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->setContentView(I)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->c()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_2b5

    move v3, v9

    :goto_197
    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;ZIZI)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->y:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->y:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->a(Landroid/support/v4/view/ah;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/n;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->y:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/n;-><init>(Landroid/content/res/Resources;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-static {v1, v0}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    if-nez v3, :cond_1dd

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1dd
    if-eqz v10, :cond_2b8

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->h()V

    :goto_1e4
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/support/v4/view/br;

    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->n:Landroid/support/v4/view/br;

    aput-object v0, v1, v9

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a([Landroid/support/v4/view/br;)Lcom/spotify/android/paste/widget/ViewPagerIndicator;

    move-result-object v2

    const v0, 0x7f0a0242

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a()Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    if-ne v0, v1, :cond_2bf

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0024

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_239
    new-instance v0, Lcom/spotify/mobile/android/util/ui/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/ui/c;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ui/c;->a(Landroid/widget/TextView;)Lcom/spotify/mobile/android/util/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ui/c;->b(Landroid/widget/TextView;)Lcom/spotify/mobile/android/util/ui/c;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ui/c;->a(Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;)Lcom/spotify/mobile/android/util/ui/c;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->b:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ui/c;->a(Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;)Lcom/spotify/mobile/android/util/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ui/c;->a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v9, :cond_2e8

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_26d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int v3, v1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->getPaddingRight()I

    move-result v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ViewPagerIndicator;->a()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->setPadding(IIII)V

    goto/16 :goto_e2

    :pswitch_2a3
    sget-object v2, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;

    move v5, v8

    move v10, v8

    goto/16 :goto_168

    :pswitch_2a9
    move v5, v8

    move v10, v8

    goto/16 :goto_168

    :pswitch_2ad
    move v5, v8

    move v10, v9

    goto/16 :goto_168

    :pswitch_2b1
    move v5, v9

    move v10, v8

    goto/16 :goto_168

    :cond_2b5
    move v3, v8

    goto/16 :goto_197

    :cond_2b8
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->f()V

    goto/16 :goto_1e4

    :cond_2bf
    invoke-virtual {v7}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_2d6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0415

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_239

    :cond_2d6
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    const v1, 0x7f0f0414

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v9, v8

    goto/16 :goto_239

    :cond_2e8
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->t:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v0

    goto/16 :goto_26d

    nop

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_2a3
        :pswitch_2a9
        :pswitch_2ad
        :pswitch_2b1
    .end packed-switch
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->g(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/SpotifyIconView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/SpotifyIconView;->a(I)V

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->k:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/SpotifyIconView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(IZ)V

    return-void
.end method

.method protected static b(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Lcom/spotify/a/a;

    const-string v2, "NTX_upsell_new_layout"

    invoke-direct {v1, v2}, Lcom/spotify/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/spotify/a/a;->a(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_14

    const-string v1, "Get groupID failed, falling back to original layout"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_13
    return v0

    :cond_14
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_20

    const-string v1, "A/B test, Control group"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_20
    const/16 v2, 0x190

    if-ge v1, v2, :cond_2d

    const-string v1, "A/B test, 1A, autoScroll enabled, copy variant A, no reorder"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_13

    :cond_2d
    const/16 v2, 0x258

    if-ge v1, v2, :cond_3a

    const-string v1, "A/B test, 1B, autoScroll enabled, copy variant B, no reorder"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    goto :goto_13

    :cond_3a
    const/16 v2, 0x320

    if-ge v1, v2, :cond_47

    const-string v1, "A/B test, 1C, autoScroll disabled, copy variant B, no reorder"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto :goto_13

    :cond_47
    const-string v1, "A/B test, 2B, autoScroll enabled, copy variant B, reorder to cause"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    goto :goto_13
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->r:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->q:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->y:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->z:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const v2, 0x7f0f041a

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "variant"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->z:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "shuffle_content_uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_68

    const-string v0, "shuffle_content_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "variant"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "logged_pages"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_68

    array-length v5, v4

    move v3, v7

    :goto_58
    if-ge v3, v5, :cond_68

    aget v6, v4, v3

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->z:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_68
    move v10, v1

    if-eqz v0, :cond_ce

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_6f
    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1ba

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    move v9, v0

    :goto_7e
    iget v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->v:I

    packed-switch v0, :pswitch_data_1be

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad upsell dialog type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    move-object v0, v8

    :goto_96
    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/u;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->X:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1b5

    if-nez p1, :cond_1b5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->e()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a014e

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->F:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v8, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    :goto_b9
    if-nez p1, :cond_cd

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->r:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->ah:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->w:Lcom/spotify/mobile/android/ui/activity/upsell/u;

    iget-object v2, v2, Lcom/spotify/mobile/android/ui/activity/upsell/u;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_cd
    return-void

    :cond_ce
    move-object v0, v8

    goto :goto_6f

    :pswitch_d0
    const v1, 0x7f0f0442

    const v2, 0x7f0f0440

    const v3, 0x7f0f0441

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->i:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    :goto_de
    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/u;

    invoke-direct/range {v0 .. v7}, Lcom/spotify/mobile/android/ui/activity/upsell/u;-><init>(IIIZLcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;B)V

    goto :goto_96

    :pswitch_e4
    const v1, 0x7f0f0439

    const v2, 0x7f0f0437

    const v3, 0x7f0f0438

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->j:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto :goto_de

    :pswitch_f3
    const v1, 0x7f0f043d

    const v2, 0x7f0f043b

    const v3, 0x7f0f043c

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->am:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->k:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto :goto_de

    :pswitch_102
    const v1, 0x7f0f043f

    const v2, 0x7f0f043e

    const v3, 0x7f0f043a

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->aj:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->p:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto :goto_de

    :pswitch_111
    if-eqz v9, :cond_12b

    const v2, 0x7f0f0410

    const v1, 0x7f0f040e

    const v0, 0x7f0f040f

    :goto_11c
    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->aj:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    if-nez v3, :cond_135

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->l:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    :goto_124
    move v4, v9

    move-object v6, v3

    move v3, v0

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_de

    :cond_12b
    const v2, 0x7f0f0447

    const v1, 0x7f0f0445

    const v0, 0x7f0f0446

    goto :goto_11c

    :cond_135
    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->p:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_124

    :pswitch_138
    if-eqz v9, :cond_150

    const v2, 0x7f0f0404

    const v1, 0x7f0f0402

    const v0, 0x7f0f0403

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, v9

    :goto_147
    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ap:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->m:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v0

    move v11, v1

    move v1, v3

    move v3, v11

    goto :goto_de

    :cond_150
    const v3, 0x7f0f041c

    const v1, 0x7f0f041b

    const/4 v0, 0x1

    goto :goto_147

    :pswitch_158
    const v1, 0x7f0f0420

    const v2, 0x7f0f041e

    const v3, 0x7f0f041f

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ai:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->n:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :pswitch_168
    const v1, 0x7f0f0444

    const v3, 0x7f0f0443

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->aq:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->J:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :pswitch_175
    const v1, 0x7f0f0413

    const v2, 0x7f0f0411

    const v3, 0x7f0f0412

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ar:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->K:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :pswitch_185
    const v1, 0x7f0f040d

    const v2, 0x7f0f040b

    const v3, 0x7f0f040c

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ar:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->K:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :pswitch_195
    const v1, 0x7f0f040a

    const v2, 0x7f0f0408

    const v3, 0x7f0f0409

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ar:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->K:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :pswitch_1a5
    const v1, 0x7f0f0407

    const v2, 0x7f0f0405

    const v3, 0x7f0f0406

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->ar:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->K:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move v4, v9

    goto/16 :goto_de

    :cond_1b5
    invoke-direct {p0, v10, v9}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(IZ)V

    goto/16 :goto_b9

    :cond_1ba
    move v9, v7

    goto/16 :goto_7e

    nop

    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_111
        :pswitch_d0
        :pswitch_e4
        :pswitch_f3
        :pswitch_102
        :pswitch_138
        :pswitch_158
        :pswitch_168
        :pswitch_175
        :pswitch_185
        :pswitch_195
        :pswitch_1a5
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->h()V

    :cond_c
    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->g()V

    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->n:Landroid/support/v4/view/br;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->u:Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/AutoScrollingViewPager;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/br;->a(I)V

    :cond_17
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    if-eqz v0, :cond_12

    const-string v0, "shuffle_content_uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->p:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v0, "variant"

    iget v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->z:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_3f
    const-string v0, "logged_pages"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method
