.class public abstract Lcom/spotify/mobile/android/spotlets/browse/model/Playable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->b:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;->b:Z

    return v0
.end method
