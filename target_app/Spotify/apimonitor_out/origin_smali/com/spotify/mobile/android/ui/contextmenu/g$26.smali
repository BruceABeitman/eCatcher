.class final Lcom/spotify/mobile/android/ui/contextmenu/g$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aA:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/activity/a;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$26;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/activity/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/a;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
