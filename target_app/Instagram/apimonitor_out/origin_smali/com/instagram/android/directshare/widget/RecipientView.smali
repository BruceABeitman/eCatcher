.class public Lcom/instagram/android/directshare/widget/RecipientView;
.super Landroid/widget/FrameLayout;
.source "RecipientView.java"


# static fields
.field private static final a:Lcom/instagram/common/ui/a/a;


# instance fields
.field private b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    sput-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_directshare_recipient:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->avatar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/widget/RecipientView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget v0, Lcom/facebook/av;->badge:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/widget/RecipientView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a(ZZZZ)V
    .registers 8

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    :goto_17
    return-void

    :cond_18
    if-eqz p2, :cond_2e

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_commented:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    goto :goto_17

    :cond_2e
    if-eqz p3, :cond_4c

    if-eqz p4, :cond_46

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_seen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3e
    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    goto :goto_17

    :cond_46
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3e

    :cond_4c
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;F)V

    goto :goto_17
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    return-void
.end method
