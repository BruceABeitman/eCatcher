.class final Lcom/spotify/mobile/android/ui/menus/d$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/menus/d;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/net/Uri;

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/spotify/mobile/android/ui/menus/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->h:Lcom/spotify/mobile/android/ui/menus/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->e:Landroid/net/Uri;

    iput-wide p7, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->f:J

    iput-object p9, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->h:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->o:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->e:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->f:J

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/menus/d$21;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
