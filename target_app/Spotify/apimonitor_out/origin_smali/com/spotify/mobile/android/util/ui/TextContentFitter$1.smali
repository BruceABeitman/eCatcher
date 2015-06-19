.class final Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/ui/TextContentFitter;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    invoke-static {v0, p0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a(Lcom/spotify/mobile/android/util/ui/TextContentFitter;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
