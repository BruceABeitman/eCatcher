.class final Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DiskAlmostFullActivity;->finish()V

    return-void
.end method
