.class final Lcom/spotify/mobile/android/ui/menus/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/e;->c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-boolean p3, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->c:Z

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->c:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->H:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    :goto_c
    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->c:Z

    if-nez v0, :cond_2e

    move v0, v1

    :goto_1d
    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/actions/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/menus/e$3;->c:Z

    if-nez v3, :cond_27

    move v2, v1

    :cond_27
    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/dp;->d(Landroid/content/Context;Z)V

    return v1

    :cond_2b
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->I:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    goto :goto_c

    :cond_2e
    move v0, v2

    goto :goto_1d
.end method
