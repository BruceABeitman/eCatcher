.class final Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ae;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;

    invoke-virtual {v0, p2, p3}, Lcom/spotify/mobile/android/ui/activity/FacebookPlaceholderActivity;->a(Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method
