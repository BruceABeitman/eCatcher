.class final Lcom/spotify/mobile/android/spotlets/common/adapter/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/adapter/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/common/adapter/a;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 2

    return-object p0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
