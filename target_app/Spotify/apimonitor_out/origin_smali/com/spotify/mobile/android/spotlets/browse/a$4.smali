.class final Lcom/spotify/mobile/android/spotlets/browse/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/a;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/browse/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->c:Lcom/spotify/mobile/android/spotlets/browse/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->c:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->g(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->a:Landroid/app/Activity;

    const-string v2, "toplists"

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/a$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
