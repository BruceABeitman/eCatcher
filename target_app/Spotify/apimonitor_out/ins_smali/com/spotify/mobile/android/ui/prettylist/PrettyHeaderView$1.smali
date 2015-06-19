.class final Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:F
.field final synthetic b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;F)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
iput p2, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;->a:F
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView$1;->a:F
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;F)V
return-void
.end method