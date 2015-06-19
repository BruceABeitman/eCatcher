.class final Lcom/spotify/mobile/android/ui/menus/d$4;
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

.field final synthetic d:J

.field final synthetic e:Lcom/spotify/mobile/android/ui/menus/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;J)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->e:Lcom/spotify/mobile/android/ui/menus/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-wide p5, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->e:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->C:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->e:Lcom/spotify/mobile/android/ui/menus/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->d:J

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->v(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
