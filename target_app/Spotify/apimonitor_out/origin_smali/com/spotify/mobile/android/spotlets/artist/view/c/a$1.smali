.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/spotlets/artist/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/b;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->b(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a;->d()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->be:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2, v0, v3, v4, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    return-void
.end method
