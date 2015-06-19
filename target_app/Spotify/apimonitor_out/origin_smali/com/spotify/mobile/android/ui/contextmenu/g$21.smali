.class final Lcom/spotify/mobile/android/ui/contextmenu/g$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->a:Z

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->a:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->o:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    :goto_a
    invoke-static {v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->a:Z

    if-nez v0, :cond_33

    move v0, v1

    :goto_1f
    invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$21;->a:Z

    if-nez v3, :cond_35

    :goto_2c
    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Z)V

    return-void

    :cond_30
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->k:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    goto :goto_a

    :cond_33
    move v0, v2

    goto :goto_1f

    :cond_35
    move v1, v2

    goto :goto_2c
.end method
