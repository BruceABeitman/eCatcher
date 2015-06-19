.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/adapter/f;
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/common/adapter/f",
        "<",
        "Landroid/widget/LinearLayout;",
        "Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;",
        ">;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/spotify/mobile/android/spotlets/search/a;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Landroid/view/View$OnLongClickListener;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->c:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->d:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->g:Landroid/view/View$OnLongClickListener;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a:Landroid/view/LayoutInflater;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->i:I

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/k;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->c:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->d:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Lcom/spotify/mobile/android/spotlets/search/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final synthetic a(ILandroid/view/View;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .registers 13

    const/4 v7, 0x0

    const/4 v2, 0x0

    check-cast p2, Landroid/widget/LinearLayout;

    check-cast p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    if-nez p1, :cond_32

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->i:I

    :goto_e
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->i:I

    invoke-virtual {p2, v1, v0, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget v0, p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->a:I

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eq v1, v0, :cond_47

    int-to-float v1, v0

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :goto_23
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_34

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030032

    invoke-virtual {v1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_23

    :cond_32
    move v0, v2

    goto :goto_e

    :cond_34
    :goto_34
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_44

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_34

    :cond_44
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_47
    move v3, v2

    :goto_48
    iget v0, p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->a:I

    if-ge v3, v0, :cond_fa

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/CardView;

    iget-object v1, p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_ef

    iget-object v1, p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->d:Ljava/util/WeakHashMap;

    iget v5, p3, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->a:I

    mul-int/2addr v5, p1

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->getUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v5}, Lcom/spotify/mobile/android/spotlets/search/a;->o_()Lcom/spotify/mobile/android/spotlets/search/player/c;

    move-result-object v5

    invoke-interface {v5}, Lcom/spotify/mobile/android/spotlets/search/player/c;->b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v5

    iget-object v5, v5, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/spotify/mobile/android/spotlets/search/a;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V

    invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V

    iget-boolean v4, v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->following:Z

    if-eqz v4, :cond_d3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v4}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0328

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V

    :goto_b4
    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->getImageUri()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v5, v1, v4, v7}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->setVisibility(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->g:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_ce
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_48

    :cond_d3
    const v4, 0x7f0e0003

    iget-object v5, v1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->followersCount:Ljava/lang/Long;

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v6}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(ILjava/lang/Number;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ec

    :goto_e8
    invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/CardView;->c(Ljava/lang/CharSequence;)V

    goto :goto_b4

    :cond_ec
    const-string v4, " "

    goto :goto_e8

    :cond_ef
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Lcom/spotify/android/paste/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v7}, Lcom/spotify/android/paste/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_ce

    :cond_fa
    return-void
.end method

.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    check-cast p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->uri:Ljava/lang/String;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method

.method public final b()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;

    return-object v0
.end method
