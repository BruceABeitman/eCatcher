.class final Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->finish()V

    return-void
.end method