.class public final Lcom/spotify/mobile/android/spotlets/artist/h;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"


# static fields
.field private static final e:Lcom/spotify/mobile/android/ui/cell/a;


# instance fields
.field private b:Landroid/widget/GridView;

.field private c:Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

.field private d:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/h$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/h$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/h;->e:Lcom/spotify/mobile/android/ui/cell/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;

    sget-object v1, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;->b:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/h$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/artist/h$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/h;)V

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->d:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/h;)Lcom/spotify/mobile/android/spotlets/artist/adapters/h;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

    return-object v0
.end method


# virtual methods
.method protected final E()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/h;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a02c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->b:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->b:Landroid/widget/GridView;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/h$3;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/artist/h$3;-><init>(Lcom/spotify/mobile/android/spotlets/artist/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0273

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 7

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

    iget-object v1, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->relatedArtists:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/h;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->d:Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;

    sget-object v4, Lcom/spotify/mobile/android/spotlets/artist/h;->e:Lcom/spotify/mobile/android/ui/cell/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/spotify/mobile/android/ui/menus/ArtistMenuDelegate;Lcom/spotify/mobile/android/ui/cell/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/h;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
