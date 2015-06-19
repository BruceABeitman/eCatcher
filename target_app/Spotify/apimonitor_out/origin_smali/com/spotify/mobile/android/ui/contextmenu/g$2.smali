.class final Lcom/spotify/mobile/android/ui/contextmenu/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->b:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->c:J

    iput-object p6, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->o:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->e:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->b:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->c:J

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$2;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
