.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    if-eqz p1, :cond_c

    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    :goto_6
    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    return-object v0

    :cond_c
    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemovePlaylist;

    goto :goto_6
.end method
