.class final Lcom/spotify/mobile/android/ui/actions/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/ui/actions/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/actions/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/actions/a$1;->b:Lcom/spotify/mobile/android/ui/actions/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/actions/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/actions/a$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    :cond_d
    invoke-virtual {v0}, Lcom/facebook/Session;->g()V

    return-void
.end method
