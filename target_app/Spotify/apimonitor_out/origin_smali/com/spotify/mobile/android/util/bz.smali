.class final Lcom/spotify/mobile/android/util/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/by;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/by;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/util/bz;->a:Lcom/spotify/mobile/android/util/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/util/bz;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bz;->a:Lcom/spotify/mobile/android/util/by;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/by;->a(Lcom/spotify/mobile/android/util/by;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/bz;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
