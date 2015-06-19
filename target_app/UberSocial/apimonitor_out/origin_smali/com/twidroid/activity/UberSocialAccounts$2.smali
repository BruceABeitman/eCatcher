.class Lcom/twidroid/activity/UberSocialAccounts$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccounts;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccounts;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccounts;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccounts$2;->a:Lcom/twidroid/activity/UberSocialAccounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts$2;->a:Lcom/twidroid/activity/UberSocialAccounts;

    invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccounts;->finish()V

    return-void
.end method
