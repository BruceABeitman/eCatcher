.class final Lcom/spotify/mobile/android/util/tracking/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/tracking/h;->a(Lcom/spotify/mobile/android/util/tracking/n;)Lcom/spotify/mobile/android/util/ar;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/tracking/n;

.field final synthetic b:Lcom/spotify/mobile/android/util/tracking/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/tracking/h;Lcom/spotify/mobile/android/util/tracking/n;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/h$1;->b:Lcom/spotify/mobile/android/util/tracking/h;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/tracking/h$1;->a:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/h$1;->a:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/h$1;->a:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_d
    return-void
.end method
