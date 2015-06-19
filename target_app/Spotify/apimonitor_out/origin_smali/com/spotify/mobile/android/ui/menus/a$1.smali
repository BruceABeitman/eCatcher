.class final Lcom/spotify/mobile/android/ui/menus/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_15
    const/4 v0, 0x1

    return v0

    :cond_17
    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->H:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_15
.end method
