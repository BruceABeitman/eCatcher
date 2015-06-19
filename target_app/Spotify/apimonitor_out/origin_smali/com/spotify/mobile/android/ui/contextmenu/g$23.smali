.class final Lcom/spotify/mobile/android/ui/contextmenu/g$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ak:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$23;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
