.class final Lcom/spotify/mobile/android/util/cl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/cl;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/spotify/mobile/android/util/cl;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/cl;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cl$1;->b:Lcom/spotify/mobile/android/util/cl;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/cl$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "%s: Calling runnable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/util/cl$1;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-static {v3}, Lcom/spotify/mobile/android/util/cl;->a(Lcom/spotify/mobile/android/util/cl;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cl$1;->b:Lcom/spotify/mobile/android/util/cl;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cl;->b(Lcom/spotify/mobile/android/util/cl;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cl$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
