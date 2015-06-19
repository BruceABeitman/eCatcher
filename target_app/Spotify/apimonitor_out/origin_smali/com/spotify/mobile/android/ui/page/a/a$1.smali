.class final Lcom/spotify/mobile/android/ui/page/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/page/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/page/a/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/page/a/c;

.field final synthetic b:Lcom/spotify/mobile/android/ui/page/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/page/a/a;Lcom/spotify/mobile/android/ui/page/a/c;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->a:Lcom/spotify/mobile/android/ui/page/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/page/a/a;->a(Lcom/spotify/mobile/android/ui/page/a/a;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/page/a/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->a:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    return-void
.end method
