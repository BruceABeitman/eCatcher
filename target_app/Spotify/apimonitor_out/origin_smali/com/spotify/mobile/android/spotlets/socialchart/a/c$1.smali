.class final Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/a/d;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

.field final synthetic c:I

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;Lcom/spotify/mobile/android/spotlets/socialchart/a/d;Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->d:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/a/d;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iput p4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->d:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->d:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->b(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Lcom/spotify/mobile/android/ui/contextmenu/f;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/a/d;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/socialchart/a/d;->f:Lcom/spotify/mobile/android/spotlets/socialchart/b;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->d:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->c(Lcom/spotify/mobile/android/spotlets/socialchart/a/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c$1;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->b(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V

    return-void
.end method
