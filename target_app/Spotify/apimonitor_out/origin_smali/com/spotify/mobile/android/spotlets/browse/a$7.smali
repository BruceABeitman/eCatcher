.class final Lcom/spotify/mobile/android/spotlets/browse/a$7;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->c:Lcom/spotify/mobile/android/spotlets/browse/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->c:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->h(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
