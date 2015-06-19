.class final Lcom/spotify/mobile/android/ui/adapter/g$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/adapter/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/g$1;->a:Lcom/spotify/mobile/android/ui/adapter/g;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g$1;->a:Lcom/spotify/mobile/android/ui/adapter/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/g;->a(Lcom/spotify/mobile/android/ui/adapter/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g$1;->a:Lcom/spotify/mobile/android/ui/adapter/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/g;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g$1;->a:Lcom/spotify/mobile/android/ui/adapter/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/g;->a(Lcom/spotify/mobile/android/ui/adapter/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/g$1;->a:Lcom/spotify/mobile/android/ui/adapter/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/g;->notifyDataSetInvalidated()V

    return-void
.end method
