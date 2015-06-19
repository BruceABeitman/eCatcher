.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/b/a;
.super Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/b/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/b/a;->a:Ljava/lang/Object;

    return-object v0
.end method
