.class public final Lcom/spotify/mobile/android/service/flow/logic/m;
.super Lcom/spotify/mobile/android/service/flow/logic/d;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/ui/actions/c;

.field private b:Lcom/spotify/mobile/android/ui/actions/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/logic/d;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m;->a:Lcom/spotify/mobile/android/ui/actions/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/actions/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/actions/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m;->b:Lcom/spotify/mobile/android/ui/actions/b;

    const-class v0, Lcom/spotify/mobile/android/service/flow/b;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/m$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/logic/m$1;-><init>(Lcom/spotify/mobile/android/service/flow/logic/m;)V

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/m;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/logic/m;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "licenses"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/logic/m;

    invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/logic/m;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/logic/m;)Lcom/spotify/mobile/android/ui/actions/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m;->a:Lcom/spotify/mobile/android/ui/actions/c;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/logic/m;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/m;->b:Lcom/spotify/mobile/android/ui/actions/b;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/m;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "licenses"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    new-array v0, v1, [Ljava/lang/String;

    :cond_13
    array-length v2, v0

    :goto_14
    if-ge v1, v2, :cond_26

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/spotify/mobile/android/service/flow/logic/m;->b:Lcom/spotify/mobile/android/ui/actions/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/m;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "popup hard gate"

    invoke-static {v4, p1, v5, v3}, Lcom/spotify/mobile/android/ui/actions/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_19

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/logic/m;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "This fragment was instantiated without arguments, probably by calling the constructor directly."

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "licenses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/flow/b;->a(Lcom/spotify/mobile/android/service/flow/logic/d;[Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/logic/m;->c(Lcom/spotify/mobile/android/service/flow/a;)V

    goto :goto_19
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "saveDummyState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/logic/d;->d(Landroid/os/Bundle;)V

    return-void
.end method
