.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;
    .registers 5

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    if-eqz p1, :cond_12

    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    :goto_6
    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/w;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/x;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/v;B)V

    return-object v0

    :cond_12
    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanBrowseAlbum;

    goto :goto_6
.end method
