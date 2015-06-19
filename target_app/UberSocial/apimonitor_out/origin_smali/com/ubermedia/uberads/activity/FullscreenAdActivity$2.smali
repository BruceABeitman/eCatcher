.class Lcom/ubermedia/uberads/activity/FullscreenAdActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/uberads/activity/FullscreenAdActivity;


# direct methods
.method constructor <init>(Lcom/ubermedia/uberads/activity/FullscreenAdActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$2;->a:Lcom/ubermedia/uberads/activity/FullscreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/uberads/activity/FullscreenAdActivity$2;->a:Lcom/ubermedia/uberads/activity/FullscreenAdActivity;

    invoke-virtual {v0}, Lcom/ubermedia/uberads/activity/FullscreenAdActivity;->finish()V

    return-void
.end method
