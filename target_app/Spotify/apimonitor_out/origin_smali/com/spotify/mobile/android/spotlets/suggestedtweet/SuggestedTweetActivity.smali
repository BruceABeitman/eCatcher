.class public Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Landroid/widget/Button;

.field private p:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image_resource_id"

    const v2, 0x7f0200d9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "tweet"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->p:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->finish()V

    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "tweet"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/spotify/mobile/android/util/dt;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/util/dt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/util/dt;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->p:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->p:Landroid/content/Intent;

    if-nez v0, :cond_2d

    const-string v0, "Can\'t find Twitter"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->finish()V

    :goto_2c
    return-void

    :cond_2d
    new-instance v3, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v3, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V

    const-string v0, "body"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-lt v0, v4, :cond_b5

    const/4 v0, 0x1

    :goto_5e
    if-eqz v0, :cond_69

    const-string v1, "image_resource_id"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->b(I)V

    :cond_69
    invoke-static {p0, v3}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->n:Landroid/widget/Button;

    const v2, 0x7f0f03b1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->n:Landroid/widget/Button;

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->n:Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity$1;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v0, :cond_a8

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_a8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/SuggestedTweetActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_2c

    :cond_b5
    move v0, v1

    goto :goto_5e
.end method
