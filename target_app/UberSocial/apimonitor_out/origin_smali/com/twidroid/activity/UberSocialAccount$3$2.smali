.class Lcom/twidroid/activity/UberSocialAccount$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$3;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$3;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$3$2;->a:Lcom/twidroid/activity/UberSocialAccount$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$3$2;->a:Lcom/twidroid/activity/UberSocialAccount$3;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$3;->a:Lcom/twidroid/activity/UberSocialAccount;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->e()V

    return-void
.end method
