.class final Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->finish()V

    return-void
.end method
