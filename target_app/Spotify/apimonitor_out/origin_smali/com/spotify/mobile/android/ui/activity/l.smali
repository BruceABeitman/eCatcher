.class public final Lcom/spotify/mobile/android/ui/activity/l;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const/4 v4, 0x0

    const v0, 0x7f030077

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0a02c4

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02c5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a02c6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a02c7

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/l;->h()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "showcase-spoticon"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_83

    invoke-static {v7}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->valueOf(Ljava/lang/String;)Lcom/spotify/android/paste/graphics/SpotifyIcon;

    move-result-object v7

    new-instance v8, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/l;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_48
    const-string v0, "showcase-title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "showcase-descr"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/l;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_8d

    const/4 v0, 0x1

    :goto_74
    if-eqz v0, :cond_8f

    const-string v0, "showcase-image"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_82
    return-object v5

    :cond_83
    const-string v7, "showcase-icon"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_48

    :cond_8d
    move v0, v4

    goto :goto_74

    :cond_8f
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_82
.end method
