.class public final Lcom/spotify/mobile/android/ui/contextmenu/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->a:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->a:Lcom/spotify/mobile/android/ui/contextmenu/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->b:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    return-void
.end method
