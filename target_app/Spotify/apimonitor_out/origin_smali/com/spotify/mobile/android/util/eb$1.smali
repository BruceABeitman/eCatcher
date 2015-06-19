.class final Lcom/spotify/mobile/android/util/eb$1;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/eb;->a(Ljava/lang/Runnable;Landroid/view/View;[Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/eb$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/eb$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
