.class final Lcom/spotify/mobile/android/ui/menus/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/e;->d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aA:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->a:Landroid/content/Context;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/activity/a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/e$9;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/activity/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/a;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
