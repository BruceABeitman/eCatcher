.class public final Lcom/spotify/mobile/android/ui/menus/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method private static a(Landroid/content/Context;Landroid/view/Menu;IILcom/spotify/android/paste/graphics/SpotifyIcon;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 16

    const/4 v9, -0x2

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v8, p3, v8, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v1, 0x2

    invoke-static {v3, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->e(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    new-instance v5, Lcom/spotify/android/paste/graphics/f;

    invoke-direct {v5, p0, p4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V

    const v6, 0x7f0b0016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    const v6, 0x7f0b0017

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0b0018

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v6, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v1, v5, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0015

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4, v8, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {v3, v0}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-object v0, v1

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
    .registers 10

    new-instance v5, Lcom/spotify/mobile/android/ui/menus/a$6;

    invoke-direct {v5, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/a$6;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    const v2, 0x7f0f0012

    const v3, 0x7f0a0119

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->W:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;IILcom/spotify/android/paste/graphics/SpotifyIcon;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->da:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v0, p0, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    const/high16 v1, 0x41c0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    const v1, 0x7f0a0116

    const v2, 0x7f0f021e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/a$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/menus/a$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 4

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aR:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v0, p0, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    const/high16 v1, 0x41c0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    const v1, 0x7f0a0114

    const v2, 0x7f0f000d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/a$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/a$1;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a0118

    const v1, 0x7f0f0011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/a$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a$3;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_f

    sget-boolean v1, Lcom/spotify/mobile/android/ui/menus/a;->a:Z

    if-nez v1, :cond_e

    const-string v1, "ActionbarMenuHelper.* called with a null context"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    sput-boolean v0, Lcom/spotify/mobile/android/ui/menus/a;->a:Z

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
    .registers 10

    new-instance v5, Lcom/spotify/mobile/android/ui/menus/a$7;

    invoke-direct {v5, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/a$7;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    const v2, 0x7f0f0013

    const v3, 0x7f0a011a

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ag:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;IILcom/spotify/android/paste/graphics/SpotifyIcon;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a0115

    const v1, 0x7f0f023d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cQ:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, p0, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/a$5;

    invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/ui/menus/a$5;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const v0, 0x7f0a0117

    const v1, 0x7f0f000e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201a8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/menus/a$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/spotify/mobile/android/ui/menus/a$4;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V

    goto :goto_7
.end method
