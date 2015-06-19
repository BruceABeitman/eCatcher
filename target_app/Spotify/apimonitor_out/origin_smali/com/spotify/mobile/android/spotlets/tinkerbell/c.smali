.class public final Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/util/da;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a:Lcom/spotify/mobile/android/util/da;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;)Lcom/spotify/mobile/android/util/da;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a:Lcom/spotify/mobile/android/util/da;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "Onboarding enabled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;)V
    .registers 8

    const/4 v4, 0x1

    const-string v0, "Onboarding event %s: %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
