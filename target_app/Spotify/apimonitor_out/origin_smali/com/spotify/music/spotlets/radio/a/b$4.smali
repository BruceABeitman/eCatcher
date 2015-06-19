.class final Lcom/spotify/music/spotlets/radio/a/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/a/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/a/b;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/b$4;->a:Lcom/spotify/music/spotlets/radio/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b$4;->a:Lcom/spotify/music/spotlets/radio/a/b;

    invoke-virtual {v0, p1}, Lcom/spotify/music/spotlets/radio/a/b;->c(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method
