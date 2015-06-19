.class Lcom/twidroid/activity/UberSocialSplash$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSplash;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSplash;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSplash;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSplash$2;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$2;->a:Lcom/twidroid/activity/UberSocialSplash;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialSplash$2;->a:Lcom/twidroid/activity/UberSocialSplash;

    const-class v3, Lcom/twidroid/activity/LoginDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/activity/UberSocialSplash;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash$2;->a:Lcom/twidroid/activity/UberSocialSplash;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialSplash;->finish()V

    return-void
.end method
