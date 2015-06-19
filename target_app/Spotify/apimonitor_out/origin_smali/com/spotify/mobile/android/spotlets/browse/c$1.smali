.class final Lcom/spotify/mobile/android/spotlets/browse/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Lcom/spotify/mobile/android/spotlets/browse/c;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->showContextMenu()Z

    return-void
.end method
