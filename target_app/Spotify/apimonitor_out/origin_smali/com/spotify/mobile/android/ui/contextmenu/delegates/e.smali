.class public final Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;
    .registers 5

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    if-eqz p1, :cond_12

    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    :goto_6
    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/e;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/d;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/a;B)V

    return-object v0

    :cond_12
    sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;->b:Lcom/spotify/mobile/android/ui/contextmenu/delegates/flags/CanRemoveFromCollection;

    goto :goto_6
.end method
