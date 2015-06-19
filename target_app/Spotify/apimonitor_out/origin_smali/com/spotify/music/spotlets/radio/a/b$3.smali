.class final Lcom/spotify/music/spotlets/radio/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/a/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/a/b;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/b$3;->a:Lcom/spotify/music/spotlets/radio/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/b$3;->a:Lcom/spotify/music/spotlets/radio/a/b;

    invoke-virtual {v0, p1}, Lcom/spotify/music/spotlets/radio/a/b;->a(Landroid/view/View;)V

    return-void
.end method
