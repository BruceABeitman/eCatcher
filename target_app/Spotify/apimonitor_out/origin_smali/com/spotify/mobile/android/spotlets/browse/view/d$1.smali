.class final Lcom/spotify/mobile/android/spotlets/browse/view/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/view/d;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/browse/view/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/d;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->d:Lcom/spotify/mobile/android/spotlets/browse/view/d;

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->a:I

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->d:Lcom/spotify/mobile/android/spotlets/browse/view/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->a(Lcom/spotify/mobile/android/spotlets/browse/view/d;)Lcom/spotify/mobile/android/spotlets/browse/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->d:Lcom/spotify/mobile/android/spotlets/browse/view/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/view/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->a:I

    const-string v3, "root"

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/view/d$1;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
