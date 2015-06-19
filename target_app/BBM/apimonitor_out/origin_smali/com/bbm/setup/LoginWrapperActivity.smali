.class public Lcom/bbm/setup/LoginWrapperActivity;
.super Lcom/bbm/setup/r;
.source "LoginWrapperActivity.java"


# static fields
.field public static a:I


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bbm/setup/LoginWrapperActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/setup/LoginWrapperActivity;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/setup/LoginWrapperActivity;->c:J

    return-void
.end method

.method private e()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/blackberry/ids/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVITY_INTENT_CALLER"

    const-string v2, "IDS_ACTIVITY_CALLER_BBM_UI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVITY_BBM_IMG"

    const v2, 0x7f020033

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVITY_BBM_BG"

    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_41

    const-string v2, "IDS_ACTIVITY_BBM_SPINNER_DELAY"

    const-string v3, "IDS_ACTIVITY_BBM_SPINNER_DELAY"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_41
    const/16 v1, 0x57b

    invoke-virtual {p0, v0, v1}, Lcom/bbm/setup/LoginWrapperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, v4, v4}, Lcom/bbm/setup/LoginWrapperActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-string v0, "onActivityResult"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    sparse-switch p1, :sswitch_data_5c

    :cond_c
    :goto_c
    return-void

    :sswitch_d
    const/16 v0, 0x64

    if-eq p2, v0, :cond_4f

    const/16 v0, 0xca

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->d()V

    goto :goto_c

    :cond_19
    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->c()V

    goto :goto_c

    :sswitch_1d
    const/4 v0, -0x2

    if-ne p2, v0, :cond_46

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IDS_ACTIVTY_RESULT"

    const v2, 0xc34f

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "IDS_ACTIVTY_INFO"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IDS_ACTIVTY_RESULT"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IDS_ACTIVTY_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x319

    invoke-virtual {p0, v0, v1}, Lcom/bbm/setup/LoginWrapperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    :cond_46
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->b()V

    goto :goto_c

    :cond_4d
    if-nez p2, :cond_c

    :cond_4f
    invoke-virtual {p0}, Lcom/bbm/setup/LoginWrapperActivity;->c()V

    goto :goto_c

    :sswitch_53
    sget v0, Lcom/bbm/ui/activities/BbidErrorActivity;->b:I

    if-ne p2, v0, :cond_4f

    invoke-direct {p0}, Lcom/bbm/setup/LoginWrapperActivity;->e()V

    goto :goto_c

    nop

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0x319 -> :sswitch_53
        0x57b -> :sswitch_1d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hasBeenLaunchedBefore"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/setup/LoginWrapperActivity;->b:Z

    return-void
.end method

.method protected onResume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/bbm/setup/LoginWrapperActivity;->overridePendingTransition(II)V

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    iget-boolean v0, p0, Lcom/bbm/setup/LoginWrapperActivity;->b:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/bbm/setup/LoginWrapperActivity;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/setup/LoginWrapperActivity;->b:Z

    :cond_11
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hasBeenLaunchedBefore"

    iget-boolean v1, p0, Lcom/bbm/setup/LoginWrapperActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
