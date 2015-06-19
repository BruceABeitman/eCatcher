.class public Lcom/bbm/setup/SetupWrapperActivity;
.super Lcom/bbm/setup/r;
.source "SetupWrapperActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    const-string v0, "onActivityResult"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    if-nez p1, :cond_14

    sput p2, Lcom/bbm/setup/LoginWrapperActivity;->a:I

    invoke-virtual {p0}, Lcom/bbm/setup/SetupWrapperActivity;->finish()V

    invoke-virtual {p0, v2, v2}, Lcom/bbm/setup/SetupWrapperActivity;->overridePendingTransition(II)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    invoke-virtual {p0}, Lcom/bbm/setup/SetupWrapperActivity;->a()V

    return-void
.end method
