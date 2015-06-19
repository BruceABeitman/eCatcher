.class final Lcom/spotify/mobile/android/ui/prettylist/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/prettylist/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/prettylist/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/prettylist/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/prettylist/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/d;->a(Lcom/spotify/mobile/android/ui/prettylist/d;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->c(Lcom/spotify/mobile/android/ui/prettylist/d;)Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(IF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->d(Lcom/spotify/mobile/android/ui/prettylist/d;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->e(Lcom/spotify/mobile/android/ui/prettylist/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->f(Lcom/spotify/mobile/android/ui/prettylist/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/d$3;->a:Lcom/spotify/mobile/android/ui/prettylist/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/d;->g(Lcom/spotify/mobile/android/ui/prettylist/d;)V

    :cond_25
    return-void
.end method
