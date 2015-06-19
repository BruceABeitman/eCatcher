.class public final Lcom/spotify/mobile/android/spotlets/user/b;
.super Lcom/spotify/mobile/android/ui/adapter/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/adapter/ae",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/adapter/ae;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/user/b;->b:I

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/Object;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->d()V

    invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->isClaimed()Z

    move-result v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getClaimedByDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/b;->a:Landroid/content/Context;

    const v1, 0x7f0f0305

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V

    :goto_31
    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->isClaimed()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aK:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    :goto_39
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/spotify/android/paste/graphics/f;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/b;->b:I

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    return-void

    :cond_53
    move v0, v2

    goto :goto_18

    :cond_55
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/b;->a:Landroid/content/Context;

    const v3, 0x7f0f0301

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/InvitationCodeModel;->getClaimedByDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V

    goto :goto_31

    :cond_6a
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->am:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    goto :goto_39
.end method
