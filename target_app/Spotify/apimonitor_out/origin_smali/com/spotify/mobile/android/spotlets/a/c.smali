.class final Lcom/spotify/mobile/android/spotlets/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/a/e;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/a/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/a/c;Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/c;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/c;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/b;->c(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/widget/ListView;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;Landroid/widget/ListView;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
