.class Lcom/twidroid/UberSocialProfile$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/ui/widgets/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->y()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$19;->a:Lcom/twidroid/UberSocialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/ui/widgets/CachedImageView;)V
    .registers 6

    const v3, -0xbbbbbc

    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$19;->a:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->am(Lcom/twidroid/UberSocialProfile;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$19;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$19;->a:Lcom/twidroid/UberSocialProfile;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method
