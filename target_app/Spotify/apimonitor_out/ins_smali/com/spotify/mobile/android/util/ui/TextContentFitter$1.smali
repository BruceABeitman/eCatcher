.class final Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;
.method constructor <init>(Lcom/spotify/mobile/android/util/ui/TextContentFitter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGlobalLayout()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a(Lcom/spotify/mobile/android/util/ui/TextContentFitter;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
return-void
.end method