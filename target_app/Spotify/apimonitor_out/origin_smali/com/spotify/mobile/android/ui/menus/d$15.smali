.class final Lcom/spotify/mobile/android/ui/menus/d$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Lcom/spotify/mobile/android/ui/menus/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->e:Lcom/spotify/mobile/android/ui/menus/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->d:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->e:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->l:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->e:Lcom/spotify/mobile/android/ui/menus/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$15;->d:Landroid/net/Uri;

    invoke-static {v0, v1, v5}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    return v5
.end method
