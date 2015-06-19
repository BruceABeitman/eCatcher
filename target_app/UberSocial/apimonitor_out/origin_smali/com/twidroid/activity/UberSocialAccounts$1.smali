.class Lcom/twidroid/activity/UberSocialAccounts$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccounts;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/activity/UberSocialAccounts;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccounts$1;->b:Lcom/twidroid/activity/UberSocialAccounts;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialAccounts$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/twidroid/activity/UberSocialAccounts$1$1;

    invoke-direct {v0, p0}, Lcom/twidroid/activity/UberSocialAccounts$1$1;-><init>(Lcom/twidroid/activity/UberSocialAccounts$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccounts$1$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
