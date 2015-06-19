.class final Lcom/spotify/mobile/android/ui/contextmenu/g$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->a([Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->v:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$10;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    return-void
.end method
