.class public Lcom/instagram/bugreport/rageshake/RageShakeActivity;
.super Landroid/support/v4/app/k;
.source "RageShakeActivity.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private p:Landroid/view/View;

.field private q:Landroid/widget/EditText;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    new-instance v0, Lcom/instagram/bugreport/rageshake/c;

    invoke-direct {v0, p0}, Lcom/instagram/bugreport/rageshake/c;-><init>(Lcom/instagram/bugreport/rageshake/RageShakeActivity;)V

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method private j()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private l()Z
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RageShakeActivity.INTENT_EXTRA_RETRY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->rageshake_title:I

    new-instance v1, Lcom/instagram/bugreport/rageshake/d;

    invoke-direct {v1, p0}, Lcom/instagram/bugreport/rageshake/d;-><init>(Lcom/instagram/bugreport/rageshake/RageShakeActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-void
.end method

.method public final f()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/facebook/az;->rageshake_error_description:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    :goto_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/instagram/bugreport/rageshake/RageShakeService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->finish()V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/aw;->rageshake:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->setContentView(I)V

    sget v0, Lcom/facebook/av;->bug_description:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->q:Landroid/widget/EditText;

    sget v0, Lcom/facebook/av;->screenshot_section:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->p:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RageShakeActivity.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4e

    sget v0, Lcom/facebook/av;->screenshot:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->g()V

    goto :goto_4e
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/k;->onPause()V

    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRemoveClick(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->g()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/support/v4/app/k;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ActionBarService.action_bar_back_click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ActionBarService.action_bar_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/bugreport/rageshake/RageShakeActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/a/e;->a(Lcom/instagram/a/b;)V

    return-void
.end method
