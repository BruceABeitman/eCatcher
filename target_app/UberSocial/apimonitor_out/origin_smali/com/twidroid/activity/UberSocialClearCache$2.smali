.class Lcom/twidroid/activity/UberSocialClearCache$2;
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

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialClearCache$2;->a:Lcom/twidroid/activity/UberSocialClearCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialClearCache$2;->a:Lcom/twidroid/activity/UberSocialClearCache;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialClearCache;->finish()V

    return-void
.end method
