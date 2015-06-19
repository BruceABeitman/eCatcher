.class final Lcom/spotify/mobile/android/ui/fragments/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x1

    check-cast p2, Lcom/spotify/mobile/android/model/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/j;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->F:Lcom/spotify/mobile/android/util/ea;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/q;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/n;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/o;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/f;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/m;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method
