.class public Lcom/twidroid/net/c/s;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c00fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/c/s;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/c/s;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c013d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/twidroid/net/c/s$1;

    invoke-direct {v1, p0}, Lcom/twidroid/net/c/s$1;-><init>(Lcom/twidroid/net/c/s;)V

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/net/c/s;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
