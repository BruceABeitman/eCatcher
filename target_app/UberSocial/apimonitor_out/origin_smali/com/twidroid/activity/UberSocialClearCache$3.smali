.class Lcom/twidroid/activity/UberSocialClearCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialClearCache;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialClearCache;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialClearCache;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialClearCache$3;->a:Lcom/twidroid/activity/UberSocialClearCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Lcom/twidroid/activity/ad;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialClearCache$3;->a:Lcom/twidroid/activity/UberSocialClearCache;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/ad;-><init>(Lcom/twidroid/activity/UberSocialClearCache;Lcom/twidroid/activity/UberSocialClearCache$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/ad;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
