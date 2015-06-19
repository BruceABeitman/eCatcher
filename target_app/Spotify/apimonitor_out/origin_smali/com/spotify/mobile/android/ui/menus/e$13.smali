.class final Lcom/spotify/mobile/android/ui/menus/e$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$13;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$13;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$13;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$13;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->A:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$13;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
