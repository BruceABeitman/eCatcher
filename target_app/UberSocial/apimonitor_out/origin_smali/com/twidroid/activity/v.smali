.class public Lcom/twidroid/activity/v;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/activity/TwitlongerViewer;


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/TwitlongerViewer;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/v;->a:Lcom/twidroid/activity/TwitlongerViewer;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/v;->a([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmi.me"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/twidroid/net/c/m;

    invoke-direct {v1}, Lcom/twidroid/net/c/m;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/net/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    new-instance v1, Lcom/twidroid/net/c/r;

    invoke-direct {v1}, Lcom/twidroid/net/c/r;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/net/c/r;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1c

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/twidroid/activity/v;->a:Lcom/twidroid/activity/TwitlongerViewer;

    iget-object v0, v0, Lcom/twidroid/activity/TwitlongerViewer;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/activity/v;->a:Lcom/twidroid/activity/TwitlongerViewer;

    iget-object v0, v0, Lcom/twidroid/activity/TwitlongerViewer;->a:Landroid/widget/TextView;

    const v1, 0x7f0c0303

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1a
    iget-object v0, p0, Lcom/twidroid/activity/v;->a:Lcom/twidroid/activity/TwitlongerViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/TwitlongerViewer;->a(Z)V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/twidroid/activity/v;->a:Lcom/twidroid/activity/TwitlongerViewer;

    iget-object v0, v0, Lcom/twidroid/activity/TwitlongerViewer;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method
