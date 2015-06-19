.class final Lcom/spotify/mobile/android/ui/adapter/o$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/adapter/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/adapter/o;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/o;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/o$1;->a:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o$1;->a:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/o;)V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o$1;->a:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/o;)V

    return-void
.end method
