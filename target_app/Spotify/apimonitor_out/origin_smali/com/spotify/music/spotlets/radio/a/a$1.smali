.class final Lcom/spotify/music/spotlets/radio/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/a/a$1;->a:Lcom/spotify/music/spotlets/radio/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/a/a$1;->a:Lcom/spotify/music/spotlets/radio/a/a;

    invoke-virtual {v0, p1}, Lcom/spotify/music/spotlets/radio/a/a;->c(Landroid/view/View;)V

    return-void
.end method
