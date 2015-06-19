.class public Lcom/spotify/mobile/android/util/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private a:Lcom/spotify/mobile/android/util/ad;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/ac;->a:Lcom/spotify/mobile/android/util/ad;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ac;->a:Lcom/spotify/mobile/android/util/ad;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ac;->a:Lcom/spotify/mobile/android/util/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ac;->a:Lcom/spotify/mobile/android/util/ad;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/ad;->H()V

    :cond_9
    return-void
.end method
