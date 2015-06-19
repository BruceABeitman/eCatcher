.class final Lcom/spotify/mobile/android/ui/menus/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/e;->d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-boolean p3, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->c:Z

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->c:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ap:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    :goto_b
    invoke-static {v1, v3, v0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/menus/e$7;->c:Z

    if-nez v1, :cond_24

    move v1, v2

    :goto_1d
    invoke-virtual {v0, v3, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Z)V

    return v2

    :cond_21
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ao:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    goto :goto_b

    :cond_24
    const/4 v1, 0x0

    goto :goto_1d
.end method
