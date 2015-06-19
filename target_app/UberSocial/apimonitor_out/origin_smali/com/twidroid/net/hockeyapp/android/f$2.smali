.class Lcom/twidroid/net/hockeyapp/android/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/hockeyapp/android/f;->a(Ljava/lang/Boolean;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/hockeyapp/android/f;


# direct methods
.method constructor <init>(Lcom/twidroid/net/hockeyapp/android/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;

    invoke-static {v0}, Lcom/twidroid/net/hockeyapp/android/f;->a(Lcom/twidroid/net/hockeyapp/android/f;)Lcom/twidroid/net/hockeyapp/android/e;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/f$2;->a:Lcom/twidroid/net/hockeyapp/android/f;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/hockeyapp/android/e;->a(Lcom/twidroid/net/hockeyapp/android/f;Ljava/lang/Boolean;)V

    return-void
.end method
