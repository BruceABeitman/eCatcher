.class final Lcom/spotify/mobile/android/ui/menus/e$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->r:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$18;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
