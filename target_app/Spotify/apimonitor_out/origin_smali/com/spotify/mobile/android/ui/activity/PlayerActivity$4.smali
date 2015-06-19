.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/logic/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/fragments/logic/g",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/spotify/mobile/android/ui/fragments/logic/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->f(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4$1;-><init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
