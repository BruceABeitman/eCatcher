.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;
    .registers 5

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    if-eqz p1, :cond_12

    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    :goto_6
    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;B)V

    return-object v0

    :cond_12
    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanDownload;

    goto :goto_6
.end method
