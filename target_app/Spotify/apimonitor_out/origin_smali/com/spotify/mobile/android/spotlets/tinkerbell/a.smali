.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/tinkerbell/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .registers 6

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a()Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    if-nez p2, :cond_21

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_19
.end method
