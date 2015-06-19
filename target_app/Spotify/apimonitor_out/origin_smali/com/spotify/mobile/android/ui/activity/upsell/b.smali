.class public final Lcom/spotify/mobile/android/ui/activity/upsell/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/activity/upsell/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/ui/activity/upsell/o;

.field private c:Lcom/spotify/mobile/android/ui/activity/upsell/c;

.field private d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

.field private e:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/m;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Landroid/os/AsyncTask;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->c:Lcom/spotify/mobile/android/ui/activity/upsell/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/m;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/n;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->c:Lcom/spotify/mobile/android/ui/activity/upsell/c;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->c:Lcom/spotify/mobile/android/ui/activity/upsell/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b:Lcom/spotify/mobile/android/ui/activity/upsell/o;

    invoke-interface {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/c;->a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)V

    :cond_1e
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->c:Lcom/spotify/mobile/android/ui/activity/upsell/c;

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b()V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d:Lcom/spotify/mobile/android/ui/activity/upsell/m;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    :cond_14
    return-void
.end method

.method public final c()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b;->e:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
