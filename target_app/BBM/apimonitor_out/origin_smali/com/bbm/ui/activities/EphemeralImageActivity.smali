.class public Lcom/bbm/ui/activities/EphemeralImageActivity;
.super Landroid/app/Activity;
.source "EphemeralImageActivity.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ProgressBar;

.field private c:J

.field private d:Lcom/bbm/util/bf;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/ji;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ji;-><init>(Lcom/bbm/ui/activities/EphemeralImageActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/bbm/d/eu;Lcom/bbm/d/fs;Lcom/bbm/ui/activities/jm;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/EphemeralImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EphemeralImageActivity.extra.ephemeralmetadata.id"

    iget-object v2, p1, Lcom/bbm/d/eu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EphemeralImageActivity.extra.view.time"

    iget-wide v2, p1, Lcom/bbm/d/eu;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EphemeralImageActivity.extra.image.path"

    iget-object v2, p2, Lcom/bbm/d/fs;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/bbm/d/fs;->c:Ljava/lang/String;

    const-string v2, "EphemeralImageActivity.extra.suggested.filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p3}, Lcom/bbm/ui/activities/jm;->a()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bbm/ui/activities/jm;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/EphemeralImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EphemeralImageActivity.extra.view.time"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Lcom/bbm/ui/activities/jm;->b()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/EphemeralImageActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/EphemeralImageActivity;)Lcom/bbm/util/bf;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->d:Lcom/bbm/util/bf;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const-wide/16 v6, -0x1

    const/16 v2, 0x2000

    const/16 v1, 0x400

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "EphemeralImageActivity.ACTION_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->setContentView(I)V

    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EphemeralImageActivity.extra.view.time"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EphemeralImageActivity.extra.image.path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EphemeralImageActivity.extra.ephemeralmetadata.id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EphemeralImageActivity.extra.suggested.filename"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8d
    iget-wide v3, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    cmp-long v0, v3, v6

    if-nez v0, :cond_97

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->finish()V

    :goto_96
    return-void

    :cond_97
    if-nez v1, :cond_a4

    const-string v0, "No image path specified in Intent"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->finish()V

    goto :goto_96

    :cond_a4
    new-instance v0, Lcom/bbm/ui/activities/jj;

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/activities/jj;-><init>(Lcom/bbm/ui/activities/EphemeralImageActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/bbm/util/b;->c([Ljava/lang/Object;)Lcom/bbm/util/b;

    new-instance v0, Lcom/bbm/util/bf;

    invoke-direct {v0, v2}, Lcom/bbm/util/bf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->d:Lcom/bbm/util/bf;

    iget-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->d:Lcom/bbm/util/bf;

    invoke-virtual {v0}, Lcom/bbm/util/bf;->a()V

    goto :goto_96
.end method

.method protected onDestroy()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/ui/activities/jl;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jl;-><init>(Lcom/bbm/ui/activities/EphemeralImageActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "EphemeralImageActivity.extra.view.time"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/bbm/ui/activities/EphemeralImageActivity;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    invoke-virtual {p0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->finish()V

    :cond_32
    return-void
.end method
