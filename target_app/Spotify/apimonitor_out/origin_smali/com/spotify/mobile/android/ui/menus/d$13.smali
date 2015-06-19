.class final Lcom/spotify/mobile/android/ui/menus/d$13;
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

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/spotify/mobile/android/ui/menus/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iput-boolean p5, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->d:Z

    iput-object p6, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->f:Lcom/spotify/mobile/android/ui/menus/d;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->d:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->H:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    :goto_10
    invoke-static {v3, v4, v5, v6, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->f:Lcom/spotify/mobile/android/ui/menus/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->e:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->d:Z

    if-nez v0, :cond_32

    move v0, v1

    :goto_21
    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/actions/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/menus/d$13;->d:Z

    if-nez v3, :cond_2b

    move v2, v1

    :cond_2b
    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/dp;->d(Landroid/content/Context;Z)V

    return v1

    :cond_2f
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->I:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    goto :goto_10

    :cond_32
    move v0, v2

    goto :goto_21
.end method
