.class public final Lcom/instagram/android/a/b/af;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Lcom/instagram/user/follow/FollowButton;

.field h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    return-void
.end method
