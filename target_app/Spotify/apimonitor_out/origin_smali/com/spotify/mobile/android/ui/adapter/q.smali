.class final Lcom/spotify/mobile/android/ui/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<",
        "Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/q;->a:Z

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/adapter/q;->b:Z

    iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/adapter/q;->c:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/q;->d:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;

    if-nez p1, :cond_7

    :goto_6
    return v2

    :cond_7
    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->b()Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    move-result-object v3

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/q;->a:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_1e
    or-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/q;->b:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_2c
    or-int/2addr v4, v0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/q;->c:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_3a
    or-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/adapter/q;->d:Z

    if-eqz v4, :cond_50

    sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->e:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;

    invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$When;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    :goto_47
    or-int v2, v0, v1

    goto :goto_6

    :cond_4a
    move v0, v2

    goto :goto_1e

    :cond_4c
    move v0, v2

    goto :goto_2c

    :cond_4e
    move v0, v2

    goto :goto_3a

    :cond_50
    move v1, v2

    goto :goto_47
.end method
