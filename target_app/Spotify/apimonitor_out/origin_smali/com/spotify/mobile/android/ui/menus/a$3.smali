.class final Lcom/spotify/mobile/android/ui/menus/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 7

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->q:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->H:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/a$3;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
