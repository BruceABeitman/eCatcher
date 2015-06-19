.class public Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    sget-object v0, Lcom/spotify/music/d;->F:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getTextSize()F

    move-result v0

    const v1, 0x7f010194

    invoke-static {p1, p0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {p0, v2, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setTextSize(IF)V

    invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3d

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    :cond_3d
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4c

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setVisibility(I)V

    :cond_4c
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a:I

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    return-void
.end method

.method public final a()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    if-nez v1, :cond_1f

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a:I

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_e
    if-eqz v1, :cond_21

    :goto_10
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setVisibility(I)V

    if-eqz v1, :cond_1e

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a:I

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setText(I)V

    :cond_1e
    return v1

    :cond_1f
    move v1, v0

    goto :goto_e

    :cond_21
    const/16 v0, 0x8

    goto :goto_10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    if-nez v1, :cond_a

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->h:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    :cond_a
    iget v2, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a:I

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/p;->e(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v0, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->d:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6
.end method
